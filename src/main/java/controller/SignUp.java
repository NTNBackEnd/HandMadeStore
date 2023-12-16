package controller;

import model.bean.User;
import model.dao.UserDAO;
import utils.HashPassword;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "Register" , value = "/login.jsp")
public class SignUp extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String uname = req.getParameter("name");
        String utel = req.getParameter("tel");
        String upass = req.getParameter("pass");
        upass = HashPassword.toSHA1(upass);
        String uverify = req.getParameter("verify");
        String uemail = req.getParameter("email");

        User user = new User();
        user.setName(uname);
        user.setEmail(uemail);
        user.setPassword(upass);
        user.setPhoneNumber(utel);

        UserDAO userDAO = new UserDAO();


        userDAO.insertUser(user);
        resp.sendRedirect(req.getContextPath() + "/views/Login/view_login/login.jsp");

    }
}

