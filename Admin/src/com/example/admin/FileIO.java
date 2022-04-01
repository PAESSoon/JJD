package com.example.admin;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

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

    public static void updateFile(ArrayList<User> users, String file) {
        try {
            FileWriter writer = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(writer);

            for (User i : users) {
                FileIO.writeUser(i, file);
            }
            bw.close();

        } catch (IOException e) {
            System.err.format("IOException: %s%n", e);
        }
    }
}
