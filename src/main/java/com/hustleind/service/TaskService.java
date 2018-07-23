package com.hustleind.service;

import com.hustleind.entity.Task;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

public interface TaskService {
    boolean addTask(Task task);
    boolean updateTask(Task task);
    Task getTaskById(int id);
    List<Task> getTaskByDate(String date);
    LocalDateTime parseDateTime(String date, String time);
    boolean deleteTasById(int id);
}
