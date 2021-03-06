package murach.admin;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import murach.business.User;
import murach.data.UserDB;

@WebServlet("/userAdmin")
public class UsersServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        String url = "/users.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "display_users";  // default action
        }
        
        // perform action and set URL to appropriate page
        if (action.equals("display_users")) {            
            // get list of users
            List<User> users = UserDB.selectUsers();            
            request.setAttribute("users", users);
        } 
        else if (action.equals("display_user")) {
            String emailAddress = request.getParameter("email");
            User user = UserDB.selectUser(emailAddress);
            session.setAttribute("user", user);
            url = "/user.jsp";
        }
        else if (action.equals("update_user")) {
            // get parameters from the request
            String email = request.getParameter("email");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");

         // validate the parameters
            String message = "";
            if (firstName == null || lastName == null || email == null ||
                    firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                    message = "*Please fill out all three text boxes!";
                    url = "/user.jsp";
            }
            else {
	            // get and update user
	            User user = (User) session.getAttribute("user");        
	            user.setEmail(email);
	            user.setFirstName(firstName);
	            user.setLastName(lastName);            
	            UserDB.update(user);
	
	            // get and set updated users
	            List<User> users = UserDB.selectUsers();            
	            request.setAttribute("users", users);
            }
            request.setAttribute("message", message);
        }
        else if (action.equals("delete_user")) {
            // get the user
            String email = request.getParameter("email");
            User user = UserDB.selectUser(email);
            
            // delte the user
            UserDB.delete(user);
            
            // get and set updated users
            List<User> users = UserDB.selectUsers();            
            request.setAttribute("users", users);            
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }    
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    
}