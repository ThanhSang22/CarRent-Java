package springdemo.service;

import java.util.List;

import springdemo.entity.Car;

public interface CarSevice {
	public List<Car> getCars();
	public void saveCar(Car theCar);
}
