package com.example.admin;

import java.util.ArrayList;
import java.util.Scanner;

public class Admin {
    final static String usersText = "/Users/BumBum/Repositories/KLF_JJD/usersList.txt";
    private static ArrayList<User> users = new ArrayList<>();

    public static void main(String[] args) {
//        populate users arrayList with existing data
        try{
            users = FileIO.readFile(usersText);
        } catch(Exception e) {
            System.out.println(e);
        }

        Scanner input = new Scanner(System.in);

        boolean isActive = true;
        while (isActive) {
            System.out.println("Please choose between the following operations: Add, Update or Cancel to terminate session: ");
            String operation = input.nextLine().toLowerCase();

            if (operation.equals("add") || operation.equals("update")) {
                System.out.print("Input username: ");
                String name = input.nextLine();

                System.out.print("Input password: ");
                String pwd = input.nextLine();

                System.out.print("Input Phone number: ");
                String phone = input.nextLine();

                if (operation.equals("add")) {
                    Admin.addUser(name, pwd, phone);
                } else {
                    Admin.updateUser(name, pwd, phone);
                }
            } else if (operation.equals("cancel")) {
                isActive = false;
                System.out.println("Thank you and Goodbye!");
            } else {
                System.out.println("Wrong input, please try again.");

            }
        }

        input.close();
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

    public static void updateUser(String name, String password, String phone) {
        int count = 0;
        for (User i: users) {
            if(i.getUsername().equals(name)) {
                i.setUsername(name);
                i.setPassword(password);
                i.setPhoneNumber(phone);
                FileIO.updateFile(users, usersText);
                break;
            }
            count++;
        }
        if(count == users.size()) {
            System.out.println("User cannot be found");
        }
    }
}
