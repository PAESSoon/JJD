package com.example.companylanding;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    ArrayList<User> userArrayList = new ArrayList<>();
    ArrayList<User> existingUsers = new ArrayList<>();
    final static String usersText = "/Users/BumBum/Repositories/KLF_JJD/usersList.txt";

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        existingUsers = FileIO.readFile(usersText);
        System.out.println("size: " + existingUsers.size());
        int count = 0;
        for(User person: existingUsers) {
            System.out.println(person.getUsername());
            System.out.println(person.getUsername().length());
            if(person.getUsername().equals(username.trim()) && person.getPassword().equals(password)) {
                response.getWriter().println("<h1>Hello " + username + "!</h1>");
                break;
            }
            count++;
        }
        if(count == existingUsers.size()) {
            System.out.println("In If" + count);
            request.setAttribute("errMsg", "Invalid username or password");
            RequestDispatcher dispatcher = request.getRequestDispatcher("LandingPage.html");
            try {
                dispatcher.forward( request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            }
        }
    }
}
