package gitea;

#if js
import js.lib.Date as JsDate;
#elseif php
import php.Syntax;
#else
import datetime.DateTime;
#end

/** Provides static methods for managing dates. **/
@:allow(gitea)
@:noDoc
class DateTools {

	/**
		Parses an ISO 8601 date string into a `Date` instance.
		Returns a `null` reference if an error occurred.
	**/
	static function parseIsoString(dateString: String): Null<Date> {
		#if js
			final timestamp = JsDate.parse(dateString);
			return Math.isNaN(timestamp) ? null : Date.fromTime(timestamp);
		#elseif php
			final timestamp = try Syntax.code("(new \\DateTime({0}))", dateString).getTimestamp() catch (e) null;
			return timestamp != null ? Date.fromTime(timestamp * 1000) : null;
		#else
			final regex = ~/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(\.\d{3})?(Z|[+-]\d{2}:\d{2})$/;
			if (!regex.match(dateString)) return null;

			final date = dateString.substring(0, 10).split("-").map(Std.parseInt);
			if (!validateDate(date[0], date[1], date[2])) return null;

			final time = dateString.substring(11, 19).split(":").map(Std.parseInt);
			if (!validateTime(time[0], time[1], time[2])) return null;

			final tz = (dateString.charAt(dateString.length - 1) == "Z" ? "+00:00" : dateString.substring(dateString.length - 6)).split(":").map(Std.parseInt);
			if (!validateTimeZone(tz[0], tz[1])) return null;

			final offset = Math.abs(tz[0] * 3600) + (tz[1] * 60);
			final timestamp = DateTime.make(date[0], date[1], date[2], time[0], time[1], time[2]).getTime() + (tz[0] < 0 ? offset : -offset);
			return Date.fromTime(timestamp * 1000);
		#end
	}

	/** Validates the specified date components. **/
	static function validateDate(year: Int, month: Int, day: Int)
		return (year >= 0 && year <= 9999) && (month >= 1 && month <= 12) && (day >= 1 && day <= 31);

	/** Validates the specified time components. **/
	static function validateTime(hours: Int, minutes: Int, seconds: Int)
		return (hours >= 0 && hours < 24) && (minutes >= 0 && minutes < 60) && (seconds >= 0 && seconds < 60);

	/** Validates the specified time zone components. **/
	static function validateTimeZone(hours: Int, minutes: Int)
		return (hours >= -12 && hours <= 14) && (minutes >= 0 && minutes < 60);
}
