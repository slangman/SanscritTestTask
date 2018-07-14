package com.hustleind.dao;

import com.hustleind.entity.Task;

import java.util.Calendar;
import java.util.List;

public interface TaskDao {
    Task getTaskById(int id);
    List<Task> getTasksByDate(Calendar date);
    boolean addTask(Task task);
    boolean updateTask(Task task);
    boolean deleteTaskById(int id);
}
