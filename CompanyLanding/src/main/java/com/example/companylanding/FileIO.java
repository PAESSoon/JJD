package com.example.companylanding;

import java.io.*;
import java.util.ArrayList;

public class FileIO {
    public static void writeUser(User user, String file, boolean isEmpty) {
        try {
            FileWriter writer;
            if(isEmpty) {
                writer = new FileWriter(file);
            } else {
                writer = new FileWriter(file, true);
            }
            BufferedWriter bw = new BufferedWriter(writer);

            bw.write(user.getUsername() + " ");
            bw.write(user.getPassword() + " ");
            bw.write(user.getPhoneNumber() + "\n");
            bw.close();

        } catch (IOException e) {
            System.out.println("IOException");
        }
    }

    public static void updateFile(ArrayList<User> users, String file) {
        try {
            FileWriter writer = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(writer);

            for (User i : users) {
                FileIO.writeUser(i, file, false);
            }
            bw.close();

        } catch (IOException e) {
            System.out.println("IOException");
        }
    }

    public static ArrayList<User> readFile(String file) {
        BufferedReader br = null;
        ArrayList<User> initialArr = new ArrayList<>();

        try {

            File fileInput = new File(file);

            br = new BufferedReader(new FileReader(fileInput));

            String strInput;

            ArrayList<String[]> inputFromBuffer = new ArrayList<>();

            while ((strInput = br.readLine()) != null) {

                inputFromBuffer.add(strInput.split(" "));

            }

//          create a user object from each line in the usersList file
            for(String[] item: inputFromBuffer) {
                User single = new User(item[0], item[1], item[2]);
                initialArr.add(single);
            }

        } catch (FileNotFoundException e) {

            System.out.println("FileNotFoundException");

        } catch (IOException e) {

            System.out.println("IOException");

        }
        try {
            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return initialArr;
    }
}
