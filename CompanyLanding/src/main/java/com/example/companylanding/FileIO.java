package com.example.companylanding;

import java.io.*;
import java.util.ArrayList;

public class FileIO {
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

            for(String[] item: inputFromBuffer) {
                User single = new User(item[0], item[1]);
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
