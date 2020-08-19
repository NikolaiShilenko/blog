package net.shilenko.blog.exception;

/**
 * @author Nikolay Shilenko
 *
 */
public class RedirectToValidUrlException extends Exception {
	private static final long serialVersionUID = 5396433793065129616L;
	private String url;

	public RedirectToValidUrlException(String url) {
		super("Should be redirect to "+url);
		this.url = url;
	}
	
	public String getUrl() {
		return url;
	}
}
