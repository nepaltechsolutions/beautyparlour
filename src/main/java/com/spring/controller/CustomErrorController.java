package com.spring.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class CustomErrorController implements ErrorController {

	@RequestMapping(method = RequestMethod.GET, value = "/error")
	public String handleError(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap, Model model) {
		Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
		Exception exception = (Exception) request.getAttribute("javax.servlet.error.exception");
		if (exception != null) {
			model.addAttribute("exception", exception.getMessage());
		}
		if (statusCode.equals(404)) {
			return "beautyShalon/404error";
		}else {
			return "beautyShalon/errorPage";
		}
	}

	@Override
	public String getErrorPath() {
		return "/error";
	}

}
