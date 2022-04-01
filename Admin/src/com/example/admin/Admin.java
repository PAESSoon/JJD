package com.example.admin;

import java.util.ArrayList;
import java.util.Scanner;

public class Admin {
    final static String usersText = "/Users/BumBum/Repositories/KLF_JJD/usersList.txt";
    private static ArrayList<User> users = new ArrayList<>();

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        boolean isActive = true;
        while (isActive) {
            System.out.println("Please choose between the following operations: Add, Update or Cancel to terminate session: ");
            String operation = input.nextLine().toLowerCase();

            System.out.print("Input username: ");
            String name = input.nextLine();

            System.out.print("Input password: ");
            String pwd = input.nextLine();

            System.out.print("Input Phone number: ");
            String phone = input.nextLine();

            Admin.addUser(name, pwd, phone);
        }
    }

    public static void addUser(String name, String password, String phone) {
        for (User i: users) {
            if(i.getUsername().equals(name)) {
                System.out.println("Username already taken!");
                return;
            }
        }
        User person = new User(name, password, phone);
        FileIO.writeUser(person, usersText);
        users.add(person);
        System.out.println("A new user has been created");
    }
}
