package com.hustleind.dao;

import com.hustleind.entity.Task;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public interface TaskDao {
    Task getTaskById(int id);
    List<Task> getAllTasks();
    List<Task> getTasksByDate(LocalDate date);
    boolean addTask(Task task);
    boolean updateTask(Task task);
    boolean deleteTaskById(int id);
}
