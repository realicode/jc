package com.realaicy.product.jc.modules.temp;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import static org.junit.Assert.assertTrue;

/**
 * Created by realaicy on 16/8/15.
 * xx
 */
public class PasswordEncodeTest {
    @Test
    public void testPassword() throws Exception {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10);
        String result = encoder.encode("123456");
        System.out.println(result);
        assertTrue(encoder.matches("123456", result));
    }

    @Test
    public void testPasswordMatch() throws Exception {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10);
        assertTrue(encoder.matches("myPassword", "$2a$10$/JlHherBq9Rdbs7Ry7UFEOojjYnGV//CYi6l5Jmbhmu7yKk.bQxAi"));
        assertTrue(encoder.matches("123456", "$2a$10$WTbwTNwRq3.HKbmawkW.XeqLDTsyWmIhNKjmQm08v7VuI9cuTL1CC"));
        assertTrue(encoder.matches("123456", "$2a$10$ioW6G7rRGpl0Kay3dLXTFexReo5ETrxPBY6SOxSHfE0GvJGmafqjO"));
        assertTrue(encoder.matches("12345678", "$2a$10$i07EXDvszCW1dDRhwjcOA.fq35YMd11R2Ymm.OpEYH0uKauv/dMdu"));

    }

}
