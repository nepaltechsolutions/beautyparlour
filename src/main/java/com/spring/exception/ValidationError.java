package com.spring.exception;


public class ValidationError {

	private String field;
	private String code;

	public ValidationError() {}
	
	public ValidationError(String field,String code) {
		this.field = field;
		this.code = code;
	}
	
	public String getField() {
		return field;
	}
	
	public String getCode() {
		return code;
	}

}
