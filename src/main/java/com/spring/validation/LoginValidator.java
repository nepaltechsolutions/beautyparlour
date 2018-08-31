package com.spring.validation;

import com.spring.api.IUserApi;
import com.spring.entity.User;
import com.spring.model.LoginModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Service
public class LoginValidator implements Validator {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private final Validator validator;
	private final IUserApi userApi;

	public LoginValidator(Validator validator, IUserApi userApi) {
		this.validator = validator;
		this.userApi = userApi;
	}

	@Override
	public boolean supports(Class<?> obj) {
		return obj.equals(LoginModel.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		validator.validate(target, errors);
		if (target instanceof LoginModel) {
			LoginModel model = (LoginModel) target;
			User user;

			if (model.getUsername().equals("") || model.getUsername() == null) {
				errors.rejectValue("username", "username.empty");
			} else {
				user = userApi.getUserWithUsername(model.getUsername());
				if (user == null) {
					errors.rejectValue("username", "username.invalid");
				}
			}
			if (model.getPassword().equals("") || model.getPassword() == null) {
				errors.rejectValue("password", "password.empty");
			} else {
				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
				user = userApi.getUserWithUsername(model.getUsername());

				if (user != null) {
					System.out.println("user.getPassword==>" + user.getPassword());
					System.out.println("model.getPassword==>" + model.getPassword());
					System.out.println("encoder.encode==>" + encoder.encode(model.getPassword()));

					System.out.println("encoder.mathche==>" + encoder.matches(model.getPassword(), user.getPassword()));

					if (!encoder.matches(model.getPassword(), user.getPassword())) {
						errors.rejectValue("password", "wrong.password");
					}
				}

				// if (user.getPassword().equals(encoder.encode(model.getPassword())) ) {

			}
		}
	}
}