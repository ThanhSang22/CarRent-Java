package springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import springdemo.dao.UserDao;
import springdemo.entity.User;

public class UserSeviceImpl implements UserSevice {
	@Autowired
    private UserDao userDao;


	@Override
    @Transactional
    public List<User> getUsers() {
        return userDao.getUsers();
    }

    @Override
    @Transactional
    public void saveUser(User theUser) {
        userDao.saveUser(theUser);
    }

    @Override
    @Transactional
    public User getUserByEmail(String email) {
        return userDao.getUserByEmail(email);
    }

    @Override
    @Transactional
    public void deleteUser(int theId) {
        userDao.deleteUser(theId);
    }

    @Override
    @Transactional
    public boolean checkLogin(String email, String password) {
        return userDao.checkLogin(email, password);
    }

	@Override
	@Transactional
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.getUserById(id);
	}
	
	

}
