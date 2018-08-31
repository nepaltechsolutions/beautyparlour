package com.spring.model;

public enum Gender {

	MALE("Male"), FEMALE("Female"), NA("N/A");

	private final String value;

	private Gender(String value) {
		this.value = value;
	}

	public String toString() {
		return value;
	}

	public String getValue() {
		return value;
	}

	public static Gender getEnum(String value) {
		if (value == null)
			throw new IllegalArgumentException();
		for (Gender v : values())
			if (value.equalsIgnoreCase(v.getValue()))
				return v;
		throw new IllegalArgumentException();
	}
}
