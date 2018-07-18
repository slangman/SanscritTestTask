package com.hustleind;

import com.hustleind.service.CryptService;

public class Main {
    public static void main(String[] args) {
        System.out.println(CryptService.isMatches("123", "$2a$10$V/UvMzE6VMRt4mhUoUPgnOEqsRjysgW/WmW9ZTAtdLj2Ldwt8oy5a"));
    }
}
