package com.hustleind.dao;

import com.hustleind.entity.Task;
import com.hustleind.entity.User;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public interface TaskDao {
    Task getTaskById(int id);
    List<Task> getAllTasks();
    List<Task> getTasksByDateAndUser(LocalDate date, User user);
    boolean addTask(Task task);
    boolean updateTask(Task task);
    boolean deleteTaskById(int id);
}
