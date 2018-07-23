package com.hustleind.service;

import com.hustleind.dao.TaskDao;
import com.hustleind.entity.Task;
import com.hustleind.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class TaskServiceImpl implements TaskService {

    private TaskDao taskDao;
    private UserService userService;

    @Autowired
    public TaskServiceImpl(TaskDao taskDao, UserService userService) {
        this.taskDao = taskDao;
        this.userService = userService;
    }

    @Override
    public boolean addTask(Task task) {
        if (task == null) {
            return false;
        }
        return taskDao.addTask(task);
    }

    @Override
    public boolean updateTask(Task task) {
        if (task == null) {
            return false;
        }
        return taskDao.updateTask(task);
    }

    @Override
    public Task getTaskById(int id) {
        return taskDao.getTaskById(id);
    }

    @Override
    public List<Task> getTaskByDate(String date) {
        List<Task> result = new ArrayList<>();
        if (date == null) {
            return result;
        }
        User currentUser = userService.getActiveUser();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("M/dd/yyyy");
        LocalDate parsedDate = LocalDate.parse(date, formatter);
        result = taskDao.getTasksByDateAndUser(parsedDate, currentUser);
        return result;
    }

    @Override
    public LocalDateTime parseDateTime(String date, String time) {
        if (date == null || date.isEmpty() || time == null || time.isEmpty()) {
            return null;
        }
        LocalDateTime result;
        String[] dateSplitted = date.split("-");
        String[] timeSplitted = time.split(":");
        result = LocalDateTime.of(Integer.parseInt(dateSplitted[0]),
                Integer.parseInt(dateSplitted[1]),
                Integer.parseInt(dateSplitted[2]),
                Integer.parseInt(timeSplitted[0]),
                Integer.parseInt(timeSplitted[1]));
        return result;
    }

    @Override
    public boolean deleteTasById(int id) {
        return taskDao.deleteTaskById(id);
    }
}
