package com.spring.exception;

import com.spring.util.ClientException;

import java.util.Arrays;
import java.util.List;


public class ValidationException extends ClientException {
	private static final long serialVersionUID = 1L;
	private List<ValidationError> errors;

	public ValidationException() {
	}

	public ValidationException(String message) {
		super(message);
	}

	public ValidationException(ValidationError validationError) {
		this(Arrays.asList(new ValidationError[] { validationError }));
	}
	
	

	public ValidationException(List<ValidationError> errors) {
		super("");
		this.errors = errors;
	}

	public List<ValidationError> getErrors() {
		return errors;
	}

}

