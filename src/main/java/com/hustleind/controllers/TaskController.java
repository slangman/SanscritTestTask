package com.hustleind.controllers;


import com.hustleind.entity.Task;
import com.hustleind.entity.User;
import com.hustleind.service.TaskService;
import com.hustleind.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalTime;

@Controller
@RequestMapping(value="dashboard/addTask")
public class TaskController {

    private TaskService taskService;
    private UserService userService;

    @Autowired
    public TaskController(TaskService taskService, UserService userService) {
        this.taskService = taskService;
        this.userService = userService;
    }

    @RequestMapping(method = RequestMethod.GET)
    private String doGet(Model model) {
        return "addTask";
    }

    @RequestMapping(method = RequestMethod.POST)
    private String addTask(@RequestParam(value="taskDate", required = false) String date,
                           @RequestParam(value="taskDescription", required = false) String taskDescription,
                           Model model) {
        System.out.println(date);
        LocalDate taskDate = LocalDate.parse(date);
        org.springframework.security.core.userdetails.User activeUser =
                (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userService.getUserByLogin(activeUser.getUsername());
        Task task = new Task();
        task.setDate(taskDate);
        task.setDescription(taskDescription);
        task.setUser(user);
        taskService.addTask(task);
        return doGet(model);
    }

}
