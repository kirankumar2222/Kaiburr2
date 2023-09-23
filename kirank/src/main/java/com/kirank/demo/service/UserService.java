package com.kirank.demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.kirank.demo.Repository.UserRepository;
import com.kirank.demo.user.User;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class UserService {
	
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
	public void saveMyUser(User user) {
		userRepository.save(user);
	}
	public List<User> showAllUsers(){
		List<User> users = new ArrayList<>();
		for(User user : userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	public void deleteMyUser(int id) {
		userRepository.deleteById(id);
	}
	public Optional<User> editUser(int id) {
		return userRepository.findById(id);
	}
	public User findByName(String name) {
		return userRepository.findByName(name);
	}
	
}
