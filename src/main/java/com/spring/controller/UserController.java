package com.spring.controller;



import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.api.IUserApi;
import com.spring.entity.User;
import com.spring.repositories.UserRepository;

//@CrossOrigin(origins="http://localhost:4200",allowedHeaders="*")
@RestController
@RequestMapping("/api")
public class UserController {
	@Autowired
	private  IUserApi userApi;
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/users")
	   public List<User> getPosts(){
		System.out.println("Called====>");
		   return userRepository.findUser();
	   }
	   
	   @GetMapping("/users/{id}")
	   public User getPost(@PathVariable Long id){
		   Optional<User> u=userRepository.findById(id);
		   User users=u.get();
		   return users;
	   }
	   
	   @DeleteMapping("/users/{id}")
	   public boolean deletePost(@PathVariable Long id){
		   userRepository.deleteById(id);
		   return true;
	   }
	   
	   @PostMapping("/users")
	   public User savePost(@RequestBody User user){
		   System.out.println("Password Value"+ user);
		   return userRepository.save(user);
	   }
	   
	   @PutMapping("/users")
	   public User updatePost(@RequestBody User user){
		   return userRepository.save(user);
	   }

}
