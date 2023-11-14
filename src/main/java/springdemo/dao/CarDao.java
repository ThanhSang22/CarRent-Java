package springdemo.dao;

import java.util.List;

import springdemo.entity.Car;

public interface CarDao {
	public  List<Car> getCars();

	public void saveCar(Car theCar);
}
