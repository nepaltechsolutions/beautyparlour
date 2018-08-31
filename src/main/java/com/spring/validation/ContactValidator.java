package com.spring.validation;

import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.spring.model.ContactModel;
import com.spring.util.EmailValidator;
import com.spring.util.RegexUtil;

@Service
public class ContactValidator implements Validator {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private final Validator validator;

	public ContactValidator(Validator validator) {
		this.validator = validator;
	}

	@Override
	public boolean supports(Class<?> obj) {
		return obj.equals(ContactModel.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		validator.validate(target, errors);
		if (target instanceof ContactModel) {
			ContactModel  model= (ContactModel) target;
			if (model.getFullName().equals("") || model.getFullName() == null) {
				errors.rejectValue("fullName", "fullName.empty");
			} else {
				Pattern p = Pattern.compile("^[ A-Za-z]+$");
							
//				if (model.getFullName().chars().allMatch(Character::isLetter)) {
				
				logger.debug("p.matcher(model.getFullName()).matches()"+p.matcher(model.getFullName()).matches());
				if (p.matcher(model.getFullName()).matches()==false) {
					errors.rejectValue("fullName", "fullName.invalid");
				}
			}
			if (model.getEmail().equals("") || model.getEmail() == null) {
				errors.rejectValue("email", "email.empty");
			}  else {
				
				logger.debug("RegexUtil.isValidEmailAddress(model.getEmail())==>"+RegexUtil.isValidEmailAddress(model.getEmail()));
				if (RegexUtil.isValidEmailAddress(model.getEmail())==false) {
					errors.rejectValue("email", "email.invalid");
				}
			}
			if (model.getSubject().equals("") || model.getSubject() == null) {
				errors.rejectValue("subject", "subject.empty");
			}
			if (model.getMessage().equals("") || model.getMessage() == null) {
				errors.rejectValue("message", "message.empty");
			}
		}
	}
}