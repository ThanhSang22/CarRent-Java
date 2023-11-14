package springdemo.service;
import java.util.List;

import springdemo.entity.*;

public interface UserSevice {
	public List<User> getUsers();
	
	public void saveUser(User theUser);

	public User getUserByEmail(String email);
	
	public User getUserById(int id);

	public void deleteUser(int theId);
	
	public boolean checkLogin(String userName, String userPassword);
	
}
