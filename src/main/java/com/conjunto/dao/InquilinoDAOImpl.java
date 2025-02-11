package com.conjunto.dao;

import java.util.Collections;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.conjunto.entities.Inquilino;
@Repository
public class InquilinoDAOImpl implements InquilinoDAO {

	 @Autowired
	    private SessionFactory sessionFactory;

	    @Override
	    @Transactional
	    public List<Inquilino> findAll() {
	        try {
	            Session session = sessionFactory.getCurrentSession();
	            return session.createQuery("FROM Inquilino", Inquilino.class).list();
	        } catch (Exception e) {
	            e.printStackTrace();
	            return Collections.emptyList(); // Retorna una lista vacía si hay un error
	        }
	    }
	}
