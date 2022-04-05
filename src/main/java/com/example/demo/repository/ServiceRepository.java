package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Service;


public interface ServiceRepository  extends JpaRepository<Service,String> {

}
