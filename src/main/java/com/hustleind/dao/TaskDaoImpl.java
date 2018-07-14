package com.hustleind.dao;

import com.hustleind.entity.Task;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Calendar;
import java.util.List;

@Repository
public class TaskDaoImpl implements TaskDao {

    private final SessionFactory factory;

    @Autowired
    public TaskDaoImpl(SessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public Task getTaskById(int id) {
        if (id < 0) {
            return null;
        }
       Session session = factory.getCurrentSession();
       return session.get(Task.class, id);
    }

    @Override
    public List<Task> getTasksByDate(Calendar date) {
        if (date == null) {
            return null;
        }
        Session session = factory.getCurrentSession();
        return session.createQuery("FROM Task WHERE startTime.get(Calendar.DATE) = :date").
                setParameter("date", date.get(Calendar.DATE)).
                list();
    }

    @Override
    public boolean addTask(Task task) {
        if (task == null) {
            return false;
        }
        Session session = factory.getCurrentSession();
        session.save(task);
        return true;
    }

    @Override
    public boolean updateTask(Task task) {
        if (task == null) {
            return false;
        }
        Session session = factory.getCurrentSession();
        session.update(task);
        return true;
    }

    @Override
    public boolean deleteTaskById(int id) {
        if (id < 0) {
            return false;
        }
        Session session = factory.getCurrentSession();
        Task task = getTaskById(id);
        session.delete(task);
        return true;
    }
}
