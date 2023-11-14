package springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springdemo.entity.Car;

@Repository
public class CarDaoImpl implements CarDao {

	//need to inject the session factory
		@Autowired
		private SessionFactory sessionFactory;

		@Override
		@Transactional
		public List<Car> getCars() {
			// TODO Auto-generated method stub
			//get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			//create a query
			Query<Car> theQuery=currentSession.createQuery("from Car order by id",Car.class);
			//execute query and get result list
			List<Car> cars = theQuery.getResultList();
			
			return cars;
		}
		
		@Override
		public void saveCar(Car theCar) {
			// TODO Auto-generated method stub
			//get current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			//save the customer
			currentSession.save(theCar);
		}

}
