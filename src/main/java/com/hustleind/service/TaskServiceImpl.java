package com.hustleind.service;

import com.hustleind.dao.TaskDao;
import com.hustleind.entity.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class TaskServiceImpl implements TaskService {

    private TaskDao taskDao;

    @Autowired
    public TaskServiceImpl(TaskDao taskDao) {
        this.taskDao = taskDao;
    }

    @Override
    public boolean addTask(Task task) {
        if (task==null) {
            return false;
        }
        return taskDao.addTask(task);
    }
}
