package com.example.admin;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class FileIO {
    public static void writeUser(User user, String file) {
        try {
            FileWriter writer = new FileWriter(file, true);
            BufferedWriter bw = new BufferedWriter(writer);

            bw.write(user.getUsername() + " ");
            bw.write(user.getPassword() + " ");
            bw.write(user.getPhoneNumber() + "\n");
            bw.close();

        } catch (IOException e) {
            System.err.format("IOException: %s%n", e);
        }
    }
}
