import instrument.coverage.Coverage;
import gitea.*;
import utest.UTest;

/** Runs the test suite. **/
class TestAll {

	/** The test cases. **/
	static final tests = [
		new DateToolsTest()
	];

	/** Application entry point. **/
	static function main() UTest.run(tests, Coverage.endCoverage);
}
