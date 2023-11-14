package springdemo.dao;
import java.util.List;

import springdemo.entity.User;

public interface UserDao {
	public List<User> getUsers();
	
	public void saveUser(User theUser);

	public User getUserByEmail(String email);
	
	public User getUserById(int id);

	public void deleteUser(int theId);
	
	public boolean checkLogin(String email, String password);
}

