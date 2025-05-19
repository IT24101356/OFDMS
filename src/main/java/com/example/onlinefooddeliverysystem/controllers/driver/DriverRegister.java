package com.example.onlinefooddeliverysystem.controllers.driver;
import java.io.*;

import com.example.onlinefooddeliverysystem.services.DriverManager;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "DriverServlet", value = "/register-driver")
public class DriverRegister extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));


        DriverManager.add(name,age);

        response.sendRedirect("Pages/Driver/admin-admin-admin-view.jsp");
    }
}