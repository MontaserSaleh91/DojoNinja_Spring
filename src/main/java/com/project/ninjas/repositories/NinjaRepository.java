package com.project.ninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.project.ninjas.models.Ninja;

public interface NinjaRepository extends CrudRepository<Ninja, Long>{
	List<Ninja> findAll();
}