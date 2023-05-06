package com.spring.web.controller;

import com.spring.web.model.User;
import com.spring.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    public UserService userService;

    @RequestMapping(value = "/")
    public String getAllUsers(Model model) {
        List<User> userList = userService.getAllUsers();
        model.addAttribute("users", userList);
        return "users";
    }

    @RequestMapping(value = "/addNewUser")
    public String addNewUser(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "new_user";
    }

    @RequestMapping(value = "/saveNewUser")
    public String saveNewUser(@ModelAttribute("user") User user) {
        userService.add(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/saveUser")
    public String saveUser(@ModelAttribute("user") User user) {
        userService.update(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/editUser")
    public String editUser(@RequestParam long id, Model model) {
        User user = userService.findUser(id);
        model.addAttribute("user", user);
        return "edit_user";
    }

    @RequestMapping(value = "/deleteUser")
    public String deleteUser(@RequestParam long id) {
        userService.delete(id);
        return "redirect:/";
    }
}
