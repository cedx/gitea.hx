package gitea.hook;

import haxe.DynamicAccess;

/** Represents the GPG verification of a commit. **/
@:expose
@:structInit
class PayloadCommitVerification {

	/** A custom message sent with the verification request. **/
	public var payload = "";

	/** A message providing details about the verification. **/
	public var reason = "";

	/** The signing key used for the verification. **/
	public var signature = "";

	/** The user who signed the commit. **/
	public var signer: Null<PayloadUser> = null;

	/** Value indicating whether the verification has succeeded. **/
	public var verified = false;

	/** Creates a new payload commit verification. **/
	public function new() {}

	/** Creates a new payload commit verification from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final model = new PayloadCommitVerification();
		if (map.exists("payload") && Std.isOfType(map["payload"], String)) model.payload = map["payload"];
		if (map.exists("reason") && Std.isOfType(map["reason"], String)) model.reason = map["reason"];
		if (map.exists("signer") && Reflect.isObject(map["signer"])) model.signer = PayloadUser.fromJson(map["signer"]);
		if (map.exists("signature") && Std.isOfType(map["signature"], String)) model.signature = map["signature"];
		if (map.exists("verified") && Std.isOfType(map["verified"], Bool)) model.verified = map["verified"];
		return model;
	}
}
