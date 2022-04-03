package com.example.companylanding;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import static java.lang.System.out;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    ArrayList<User> existingUsers = new ArrayList<>();
    final static String usersText = "/Users/BumBum/Repositories/KLF_JJD/usersList.txt";

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        request.setAttribute("errMsg", null);

//        fill existingUsers arrayList with existing data
        try{
            existingUsers = FileIO.readFile(usersText);
        } catch(Exception e) {
            System.out.println(e);
        }

        int count = 0;
//        if user input exists on record, they can login
        for(User person: existingUsers) {
            if(person.getUsername().equals(username.trim()) && person.getPassword().equals(password)) {
                response.getWriter().println("<div style='font-size:18px;'>Hello " + username + "!</div>");
                break;
            }
            count++;
        }
//        if user input cannot be found in the stored users file, refresh the html page
        if(count == existingUsers.size()) {
            if(username.length() > 0 || password.length() > 0) {
                request.setAttribute("errMsg", "Invalid username or password");
            } else {
                request.setAttribute("errMsg", null);
            }

            out.println("Sorry UserName or Password Error!");
//            RequestDispatcher dispatcher = request.getRequestDispatcher("LandingPage.html");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            try {
//                out.println(response);
                dispatcher.forward( request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            }
        }
    }
}
