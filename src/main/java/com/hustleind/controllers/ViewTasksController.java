package com.hustleind.controllers;


import com.hustleind.entity.Task;
import com.hustleind.service.TaskService;
import com.hustleind.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ViewTasksController {

    private TaskService taskService;
    private UserService userService;

    @Autowired
    private ViewTasksController(TaskService taskService, UserService userService) {
        this.taskService = taskService;
        this.userService = userService;
    }

    /*@RequestMapping (value="/dashboard/viewTasks", method= RequestMethod.GET)
    private String viewTasks(Model model) {
        List<Task> tasks =
    }*/
}
