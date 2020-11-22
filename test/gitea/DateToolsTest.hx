package gitea;

/** Tests the features of the `DateTools` class. **/
class DateToolsTest {

	/** Creates a new test. **/
	public function new() {}

	/** Tests the `parseIsoString()` method. **/
	@:variant("foo", null)
	@:variant("2000-13-48T00:00:00Z", null)
	@:variant("2000-01-01T29:73:82Z", null)
	@:variant("2000-01-01T00:00:00.000Z", 946684800 * 1000.0)
	@:variant("1999-12-31T22:00:00.000-02:00", 946684800 * 1000.0)
	@:variant("2000-01-01T03:00:00.000+03:00", 946684800 * 1000.0)
	@:variant("2020-08-01T12:30:00Z", 1596285000 * 1000.0)
	@:variant("2020-08-01T07:30:00-05:00", 1596285000 * 1000.0)
	@:variant("2020-08-01T16:30:00+04:00", 1596285000 * 1000.0)
	public function testParseIsoString(input: String, output: Null<Float>) {
		final date = DateTools.parseIsoString(input);
		return assert((date != null ? date.getTime() : null) == output);
	}
}
