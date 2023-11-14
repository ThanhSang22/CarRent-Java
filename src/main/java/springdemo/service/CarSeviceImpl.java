package springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import springdemo.dao.CarDao;
import springdemo.entity.Car;

public class CarSeviceImpl implements CarSevice {

	//Need to inject Customer DAO
	@Autowired
	private CarDao carDao;

	@Override
	public List<Car> getCars() {
		// TODO Auto-generated method stub
		return carDao.getCars();
	}

	@Override
	public void saveCar(Car theCar) {
		// TODO Auto-generated method stub
		carDao.saveCar(theCar);
	}

}
