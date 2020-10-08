package gitea;

import utest.Assert;
import utest.Test;

/** Tests the features of the `DateTools` class. **/
class DateToolsTest extends Test {

	/** Tests the `parseIsoString()` method. **/
	function testParseIsoString() {
		// It should return `null` for an invalid date string.
		Assert.isNull(DateTools.parseIsoString("foo"));
		Assert.isNull(DateTools.parseIsoString("2000-13-48T00:00:00Z"));
		Assert.isNull(DateTools.parseIsoString("2000-01-01T29:73:82Z"));

		// It should return a `Date` instance for a valid date string.
		var timestamp = 946684800 * 1000.0;
		Assert.equals(timestamp, DateTools.parseIsoString("2000-01-01T00:00:00.000Z").getTime());
		Assert.equals(timestamp, DateTools.parseIsoString("1999-12-31T22:00:00.000-02:00").getTime());
		Assert.equals(timestamp, DateTools.parseIsoString("2000-01-01T03:00:00.000+03:00").getTime());

		timestamp = 1596285000 * 1000.0;
		Assert.equals(timestamp, DateTools.parseIsoString("2020-08-01T12:30:00Z").getTime());
		Assert.equals(timestamp, DateTools.parseIsoString("2020-08-01T07:30:00-05:00").getTime());
		Assert.equals(timestamp, DateTools.parseIsoString("2020-08-01T16:30:00+04:00").getTime());
	}
}
