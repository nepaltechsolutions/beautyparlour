package com.spring.util;

import com.spring.exception.ValidationError;
import com.spring.exception.ValidationException;
import org.springframework.util.ClassUtils;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.validation.Validator;

import java.util.ArrayList;
import java.util.List;
public class ValidationUtil {
	public static void validate(Object target, Validator validator) throws ValidationException {
		BindException errors = new BindException(target, ClassUtils.getShortNameAsProperty(target.getClass()));
		validator.validate(target, errors);
		System.out.println("errors.hasErrors==>"+errors.hasErrors());
		if (errors.hasErrors()) {
			
			List<ValidationError> validationErrors = new ArrayList<ValidationError>();
			for (Object error : errors.getFieldErrors()) {
				FieldError err = (FieldError) error;
				validationErrors.add(convert(err));
			}
			
			System.out.println("validationErrors==>"+validationErrors);
			
			throw new ValidationException(validationErrors);
		}
	}

	private static ValidationError convert(FieldError err) {
		return new ValidationError(err.getField(), err.getCode());
	}

}
