package com.curtissoftware;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContactServlet
 * Handles form submissions from contact.jsp
 */
@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. Retrieve form parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // 2. Basic Server-Side Validation (Placeholder)
        if (name == null || name.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            subject == null || subject.trim().isEmpty() ||
            message == null || message.trim().isEmpty()) {

            // Set an error message and redirect back to the contact page
            request.getSession().setAttribute("errorMessage", "All fields are required. Please fill out the form completely.");
            response.sendRedirect("contact.jsp");
            return;
        }

        // 3. Process the form data (Placeholder for sending email or logging)
        System.out.println("--- New Contact Form Submission ---");
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + message);
        System.out.println("-----------------------------------");

        // 4. Set a success message and redirect
        request.getSession().setAttribute("successMessage", "Thank you for your message, " + name + "! We will get back to you shortly.");
        response.sendRedirect("contact.jsp");
    }
}
