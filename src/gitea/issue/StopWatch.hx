package gitea.issue;

import haxe.DynamicAccess;
import tink.Stringly;

/** Represents a running stopwatch. **/
@:expose class StopWatch {

	/** The creation date. **/
	public var created: Null<Date> = null;

	/** The issue index. **/
	public var issueIndex: Int = -1;

	/** Creates a new stopwatch. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("created") && Std.isOfType(data["created"], String)) created = (data["created"]: Stringly);
		if (data.exists("issue_index") && Std.isOfType(data["issue_index"], Int)) issueIndex = data["issue_index"];
	}
}
