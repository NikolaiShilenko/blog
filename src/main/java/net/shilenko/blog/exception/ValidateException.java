package net.shilenko.blog.exception;

/**
 * @author Nikolay Shilenko
 *
 */
public class ValidateException extends Exception {

	private static final long serialVersionUID = -532228620585093097L;

	public ValidateException(String message) {
		super(message);
	}

	public ValidateException(Throwable cause) {
		super(cause);
	}

	public ValidateException(String message, Throwable cause) {
		super(message, cause);
	}

	public ValidateException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

}
