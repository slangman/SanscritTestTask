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
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

@Controller
public class TaskController {

    private String defaultPath = "dashboard";

    private TaskService taskService;
    private UserService userService;

    @Autowired
    public TaskController(TaskService taskService, UserService userService) {
        this.taskService = taskService;
        this.userService = userService;
    }

    private void addHeadAttributesToModel(Model model, String dateSelected) {
        model.addAttribute("dateSelected", dateSelected);
        model.addAttribute("tasksByDate", taskService.getTaskByDate(dateSelected));
    }

    @RequestMapping(value = "/dashboard/selectDate")
    private String viewTasks(@RequestParam("dateSelected") String dateSelected, Model model) {
        if (dateSelected == null || dateSelected.isEmpty()) {
            model.addAttribute("noDateSelected", "Please select date!");
            return defaultPath;
        }
        addHeadAttributesToModel(model, dateSelected);
        /*model.addAttribute("tasksByDate", taskService.getTaskByDate(dateSelected));*/
        return "dashboard";
    }

    @RequestMapping(value = "/dashboard/selectTask")
    private String selectTask(@RequestParam("taskId") int taskId, @RequestParam("dateSelected") String dateSelected, Model model) {
        addHeadAttributesToModel(model, dateSelected);
        model.addAttribute("taskSelected", taskService.getTaskById(taskId));
        return defaultPath;
    }

    @RequestMapping(method = RequestMethod.GET)
    private String doGet(Model model) {
        return "addTask";
    }

    @RequestMapping(value = "/dashboard/editTask", method = RequestMethod.POST)
    private String editTask(
            @RequestParam("taskId") int id,
            @RequestParam(value = "taskDate", required = false) String date,
            @RequestParam(value = "taskStartTime", required = false) String startTime,
            @RequestParam(value = "taskEndTime", required = false) String endTime,
            @RequestParam(value = "taskDescription", required = false) String taskDescription,
            @RequestParam(value = "taskCompleted", required = false) boolean isCompleted,
            Model model) {
        Task task = taskService.getTaskById(id);
        LocalDate taskDate = LocalDate.parse(date);
        LocalDateTime taskStartTime = taskService.parseDateTime(date, startTime);
        LocalDateTime taskEndTime = taskService.parseDateTime(date, endTime);
        task.setDate(taskDate);
        task.setStartTime(taskStartTime);
        task.setEndTime(taskEndTime);
        task.setDescription(taskDescription);
        task.setCompleted(isCompleted);
        taskService.updateTask(task);
        model.addAttribute("taskMessage", "Task Updated Successfully");
        return defaultPath;
    }

    @RequestMapping(value = "/dashboard/addTask", method = RequestMethod.POST)
    private String addTask(
            @RequestParam(value = "addTaskDate", required = false) String date,
            @RequestParam(value = "addTaskStartTime", required = false) String startTime,
            @RequestParam(value = "addTaskEndTime", required = false) String endTime,
            @RequestParam(value = "addTaskDescription", required = false) String taskDescription,
            Model model) {
        Task task = new Task();
        LocalDate taskDate = LocalDate.parse(date);
        LocalDateTime taskStartTime = taskService.parseDateTime(date, startTime);
        LocalDateTime taskEndTime = taskService.parseDateTime(date, endTime);
        task.setDate(taskDate);
        task.setStartTime(taskStartTime);
        task.setEndTime(taskEndTime);
        task.setDescription(taskDescription);
        task.setUser(userService.getActiveUser());
        taskService.addTask(task);
        model.addAttribute("taskMessage", "Task Added Successfully");
        return defaultPath;
    }

    @RequestMapping(value = "dashboard/deleteTask", method = RequestMethod.GET)
    private String deleteTask(@RequestParam("id") int id, Model model) {
        taskService.deleteTasById(id);
        model.addAttribute("taskMessage", "Task deleted successfuly");
        return defaultPath;
    }

}
