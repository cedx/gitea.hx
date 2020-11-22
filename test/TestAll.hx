import instrument.coverage.Coverage;
import gitea.*;
import tink.testrunner.Runner;
import tink.unit.TestBatch;

/** Runs the test suite. **/
class TestAll {

	/** Application entry point. **/
	static function main() {
		final tests = TestBatch.make([
			new DateToolsTest()
		]);

		Runner.run(tests).handle(outcome -> {
			Coverage.endCoverage();
			Runner.exit(outcome);
		});
	}
}
