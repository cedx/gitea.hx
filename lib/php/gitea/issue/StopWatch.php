<?php
/**
 * Generated by Haxe 4.1.4
 */

namespace gitea\issue;

use \php\Boot;
use \tink\_Stringly\Stringly_Impl_;

/**
 * Represents a running stopwatch.
 */
class StopWatch {
	/**
	 * @var \Date
	 * The creation date.
	 */
	public $created;
	/**
	 * @var int
	 * The issue index.
	 */
	public $issueIndex;

	/**
	 * Creates a new stopwatch.
	 * 
	 * @param mixed $data
	 * 
	 * @return void
	 */
	public function __construct ($data = null) {
		$this->issueIndex = -1;
		$this->created = null;
		if ($data !== null) {
			if (\Reflect::hasField($data, "created") && is_string(\Reflect::field($data, "created"))) {
				$this->created = Stringly_Impl_::toDate(\Reflect::field($data, "created"));
			}
			if (\Reflect::hasField($data, "issue_index") && Boot::isOfType(\Reflect::field($data, "issue_index"), Boot::getClass('Int'))) {
				$this->issueIndex = \Reflect::field($data, "issue_index");
			}
		}
	}
}

Boot::registerClass(StopWatch::class, 'gitea.issue.StopWatch');
