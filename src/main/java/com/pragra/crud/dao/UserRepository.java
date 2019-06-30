package com.pragra.crud.dao;

import com.pragra.crud.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findByLastNameStartsWithIgnoreCase(String lastName);
    //User findById(Long id);
}