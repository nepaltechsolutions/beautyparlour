package com.spring.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexUtil {

	public static boolean isEmail(String input) {
		// if
		// (input.matches("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[_A-Za-z0-9-]+)"))
		// {
		if (input.matches(".+@.+..+")) {
			return true;
		}
		return false;
	}
	
	public static boolean isValidEmailAddress(String emailAddress) {
	    String emailRegEx;
	    Pattern pattern;
	    // Regex for a valid email address
	    emailRegEx = "^[A-Za-z0-9._%+\\-]+@[A-Za-z0-9.\\-]+\\.[A-Za-z]{2,4}$";
	    // Compare the regex with the email address
	    pattern = Pattern.compile(emailRegEx);
	    Matcher matcher = pattern.matcher(emailAddress);
	    if (!matcher.find()) {
	      return false;
	    }
	    return true;
	  }

	public static boolean isContactNumber(String input) {
		// if (isGSMNumber(input) || isGSMPostPaidNumber(input)
		// || isCDMANumber(input) || isCDMAPostPaidNumber(input)
		// || isPhoneNumber(input)) {
		// return true;
		// }
		// return false;
		if (input.matches("^[+][0-9]*")) {
			return true;
		}
		return false;
	}

	public static boolean isPhoneNumber(String input) {
		// landline number regex
		// if (input.matches("[0-9]{8}")) {
		return true;
		// }
		// return false;
	}

	public static boolean isMobileNumber(String input) {
		// if (isGSMNumber(input) || isCDMANumber(input) ||
		// isCDMAPostPaidNumber(input) || isGSMPostPaidNumber(input) ||
		// isNCellPostpaidNumber(input)) {
		// return true;
		if (input.matches("^[+][0-9]*")) {
			return true;
		}
		return false;
	}

	public static boolean isMobileNumberWithoutPhoneCode(String input) {
		// if (isGSMNumber(input) || isCDMANumber(input) ||
		// isCDMAPostPaidNumber(input) || isGSMPostPaidNumber(input) ||
		// isNCellPostpaidNumber(input)) {
		// return true;
		if (input.matches("[0-9]*")) {
			return true;
		}
		return false;
	}

	public static boolean isGSMNumber(String input) {
		if (input.matches("[9][8][0-9]{8}")) {
			return true;
		}
		return false;
	}

	public static boolean isCDMANumber(String input) {
		if (input.matches("[9][7][0-9]{8}")) {
			return true;
		}
		return false;
	}

	public static boolean isCDMAPostPaidNumber(String input) {
		if (input.matches("[9][7][5][0-9]{7}")) {
			return true;
		}
		return false;
	}

	public static boolean isNTGSMNumber(String input) {
		if (input.matches("[9][8][4|6][0-9]{7}")) {
			return true;
		}
		return false;
	}

	public static boolean isGSMPostPaidNumber(String input) {
		if (input.matches("[9][8][5][0-9]{7}")) {
			return true;
		}
		return false;
	}

	public static boolean isNCellPostpaidNumber(String input) {
		if (input.matches("[9][8][0][1-2][0-9]{6}")) {
			return true;
		}
		return false;
	}

	public static boolean isNcellNumber(String input) {
		if (input.matches("[9][8][0-1][0-9]{7}")) {
			return true;
		}
		return false;
	}

	public static boolean isPostPaidNumber(String input) {
		if (isCDMAPostPaidNumber(input) || isGSMPostPaidNumber(input)
				|| isNCellPostpaidNumber(input)) {
			return true;
		}
		return false;
	}

	public static boolean address(String input) {
		if (input.matches("[a-zA-Z0-9\\s-,]{1,250}")) {
			return true;
		}
		return false;
	}

	public static boolean isAmount(String input) {
		if (isDigit(input) || isDouble(input)) {
			return true;
		}
		return false;
	}

	public static boolean isDigit(String input) {
		if (input.matches("^[\\d]+$")) {
			return true;
		}
		return false;
	}

	public static boolean isDouble(String input) {
		if (input.matches("(\\d+\\.\\d+)?")) {
			return true;
		}
		return false;
	}

	public static boolean isLandline(String input) {
		if (input.length() == 8 && input.matches("^[0-9]+$")) {
			return true;
		}
		return false;
	}

	public static String[] fonepayPaymentPropertiesSplit(String parameters) {
		return parameters.split(",");
	}

	public static boolean isEsewaMobilePIN(String input) {
		if (input.matches("[0-9]{4}")) {
			return true;
		}
		return false;
	}

	public static boolean validateWithRegex(String input, String regex) {
		if (input.matches(regex)) {
			return true;
		}
		return false;
	}

	public static boolean isInteger(String input) {
		try {
			Integer.parseInt(input);
		} catch (NumberFormatException exp) {
			return false;
		}
		return true;
	}

	public static boolean isValidForEsewaId(String input) {
		if (isEmail(input) || isMobileNumber(input)) {
			return true;
		}
		return false;
	}

	public static String generateRegexp(String prototype) {
		StringBuffer s = new StringBuffer(prototype.length());
		s.append('^');
		for (int i = 0, is = prototype.length(); i < is; i++) {
			char c = prototype.charAt(i);
			if (Character.isDigit(c)) {
				s.append("\\d");
			} else if (Character.isLetter(c)) {
				s.append("\\w");
			} else {
				switch (c) {
				case '*':
					s.append(".*");
					break;
				case '?':
					s.append(".");
					break;
				case '(':
				case ')':
				case '[':
				case ']':
				case '$':
				case '^':
				case '.':
				case '{':
				case '}':
				case '|':
				case '\\':
					s.append("\\");
					s.append(c);
					break;
				default:
					s.append(c);
					break;
				}
			}
		}
		s.append('$');
		return (s.toString());
	}
}
