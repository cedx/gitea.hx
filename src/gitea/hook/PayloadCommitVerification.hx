package gitea.hook;

import haxe.DynamicAccess;

/** Represents the GPG verification of a commit. **/
@:expose class PayloadCommitVerification {

	/** Value indicating whether the verification has succeeded. **/
	public var isVerified = false;

	/** A custom message sent with the verification request. **/
	public var payload = "";

	/** A message providing details about the verification. **/
	public var reason = "";

	/** The signing key used for the verification. **/
	public var signature = "";

	/** The user who signed the commit. **/
	public var signer: Null<PayloadUser> = null;

	/** Creates a new payload commit verification. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("payload") && Std.isOfType(data["payload"], String)) payload = data["payload"];
		if (data.exists("reason") && Std.isOfType(data["reason"], String)) reason = data["reason"];
		if (data.exists("signer") && Type.typeof(data["signer"]) == TObject) signer = new PayloadUser(data["signer"]);
		if (data.exists("signature") && Std.isOfType(data["signature"], String)) signature = data["signature"];
		if (data.exists("verified") && Std.isOfType(data["verified"], Bool)) isVerified = data["verified"];
	}
}
