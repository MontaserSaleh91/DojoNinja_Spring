package com.project.ninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.project.ninjas.models.Dojo;

public interface DojoRepository extends CrudRepository<Dojo, Long>{
	List<Dojo> findAll();
}