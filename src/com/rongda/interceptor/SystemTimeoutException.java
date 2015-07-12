package com.rongda.interceptor;

public class SystemTimeoutException extends Exception {

	private static final long serialVersionUID = 5721686959716896576L;

	public SystemTimeoutException() {

	}

	public SystemTimeoutException(Throwable cause) {
		super(cause);
	}

	public SystemTimeoutException(String message) {
		super(message);
	}
}
