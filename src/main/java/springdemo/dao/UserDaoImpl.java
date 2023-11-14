package springdemo.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import springdemo.entity.*;

@Repository
public class UserDaoImpl implements UserDao {
	 @Autowired
	    private SessionFactory sessionFactory;

	    @Override
	    public List<User> getUsers() {
	        Session currentSession = sessionFactory.getCurrentSession();
	        Query<User> query = currentSession.createQuery("from Student", User.class);
	        List<User> users = query.getResultList();
	        return users;
	    }

	    @Override
	    public void saveUser(User theStudent) {
	        Session currentSession = sessionFactory.getCurrentSession();
	        currentSession.saveOrUpdate(theStudent);
	    }

	    @Override
	    public User getUserByEmail(String email) {
	        Session currentSession = sessionFactory.getCurrentSession();
	        Query<User> query = currentSession.createQuery("from Student where email=:theEmail", User.class);
	        query.setParameter("theEmail", email);
	        List<User> students = query.getResultList();
	        return students.isEmpty() ? null : students.get(0);
	    }

	    @Override
	    public void deleteUser(int theId) {
	        Session currentSession = sessionFactory.getCurrentSession();
	        Query<User> query = currentSession.createQuery("delete from Student where id=:studentId");
	        query.setParameter("studentId", theId);
	        query.executeUpdate();
	    }

	    @Override
	    public boolean checkLogin(String email, String password) {
	        Session currentSession = sessionFactory.getCurrentSession();
	        Query<User> query = currentSession.createQuery("from Student where email=:theEmail and password=:thePassword", User.class);
	        query.setParameter("theEmail", email);
	        query.setParameter("thePassword", password);
	        List<User> users = query.getResultList();
	        return !users.isEmpty();
	        
	    }

		@Override
		public User getUserById(int id) {
			 Session currentSession = sessionFactory.getCurrentSession();
		        Query<User> query = currentSession.createQuery("from Student where id=:id", User.class);
		        query.setParameter("id", id);
		        List<User> students = query.getResultList();
		        return students.isEmpty() ? null : students.get(0);
		}


}
