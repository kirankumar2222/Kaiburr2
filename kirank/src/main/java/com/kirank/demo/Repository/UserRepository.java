package com.kirank.demo.Repository;

import org.springframework.data.repository.CrudRepository;

import com.kirank.demo.user.User;

public interface UserRepository extends CrudRepository<User, Integer>{
	public User findByName(String name);
}
