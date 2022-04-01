package com.example.admin;

import java.util.Scanner;

public class Admin {
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
        }
    }
}
