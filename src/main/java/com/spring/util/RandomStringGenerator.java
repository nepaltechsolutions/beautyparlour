package com.spring.util;

import java.security.SecureRandom;
import java.util.UUID;


public class RandomStringGenerator {

	static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	static SecureRandom rnd = new SecureRandom();
	public static void main(String[] args) {
		System.out.println(generateString().length());
		System.out.println("randomString==>"+randomString(20).length());

	}
	public static String generateString() {
        String uuid = UUID.randomUUID().toString();
        return "uuid = " + uuid;
    }




public static String randomString( int len ){
   StringBuilder sb = new StringBuilder( len );
   for( int i = 0; i < len; i++ ) 
      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
   return sb.toString();
}



}
