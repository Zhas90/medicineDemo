package com.example.demo.security;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.security.SecureRandom;
import java.util.regex.Pattern;

/**
 * Created by ZBaimanov on 03.02.2019.
 */

public class MyBCryptPasswordEncoder extends BCryptPasswordEncoder {
    private final Log logger = LogFactory.getLog(this.getClass());

    @Override
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        if(encodedPassword != null && encodedPassword.length() != 0) {
            this.logger.warn("!" + encodedPassword + "!");
            this.logger.warn("!" + BCrypt.hashpw(rawPassword.toString(), encodedPassword) + "!");
            this.logger.warn(equalsNoEarlyReturn(encodedPassword, BCrypt.hashpw(rawPassword.toString(), encodedPassword)));
            return BCrypt.checkpw(rawPassword.toString(), encodedPassword);
        } else {
            this.logger.warn("Empty encoded password");
            return false;
        }
    }

    public static void main(String args[]) {
        System.out.print(new MyBCryptPasswordEncoder().equalsNoEarlyReturn(
                "$2a$10$LOqePml/koRGsk2YAIOFI.4yuJ/fsSEpHUqAanEVc/1hZp9Ttp22u",
                "$2a$10$LOqePml/koRGsk2YAIOFI.4yuJ/fsSEpHUqAanEVc/1hZp9Ttp22u"
        ));
    }

    private boolean equalsNoEarlyReturn(String a, String b) {
        char[] caa = a.toCharArray();
        char[] cab = b.toCharArray();
        if(caa.length != cab.length) {
            this.logger.warn("HERE!");
            return false;
        } else {
            byte ret = 0;

            for(int i = 0; i < caa.length; ++i) {
                ret = (byte)(ret | caa[i] ^ cab[i]);
                if (ret != 0) {
                    this.logger.warn("HERE!");
                }
            }

            this.logger.warn(ret);
            return ret == 0;
        }
    }
}
