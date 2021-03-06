import tink.testrunner.Runner;
import tink.unit.TestBatch;

#if php
import php.Const;
import php.Global.error_reporting;
#end

/** Runs the test suite. **/
class TestAll {

	/** Application entry point. **/
	static function main() {
		#if php if (Const.PHP_VERSION_ID >= 80000) error_reporting(Const.E_ALL & ~Const.E_DEPRECATED); #end

		final tests = TestBatch.make([]);
		Runner.run(tests).handle(Runner.exit);
	}
}
