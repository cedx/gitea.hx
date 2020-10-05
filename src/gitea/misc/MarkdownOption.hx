package gitea.misc;

/** Defines the options of a Markdown rendering. **/
typedef MarkdownOption = {

	/** The context to render. **/
	var Context: String;

	/** The rendering mode. **/
	var Mode: String;

	/** The Markdown text to render. **/
	var Text: String;

	/** Value indicating whether this is a wiki page. **/
	var Wiki: Bool;
}
