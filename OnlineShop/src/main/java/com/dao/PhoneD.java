package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.entity.Phone;


public interface PhoneD extends JpaRepository<Phone, Integer> {
	@Query("from Phone p where p.brand like :brand")
	Phone findByUsername(@Param("brand") String brand);
	
	@Query("from Phone p where p.brand like :brand and p.type like :type")
	Phone findByBrandAndType(@Param("brand") String brand, @Param("type") String type);
	
	@Query("from Phone p where p.id like :id")
	Phone findById(@Param("id") Integer id);
	
	@Query("from Phone p where p.price > :price")
	List<Phone> findByPrice(@Param("price") Double price);


}
