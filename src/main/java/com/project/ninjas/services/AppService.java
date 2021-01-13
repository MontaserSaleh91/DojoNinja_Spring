package com.project.ninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.ninjas.models.Dojo;
import com.project.ninjas.models.Ninja;
import com.project.ninjas.repositories.DojoRepository;
import com.project.ninjas.repositories.NinjaRepository;

@Service
public class AppService {
	private final DojoRepository dojoRepo;
	private final NinjaRepository ninjaRepo;
	public AppService(DojoRepository dRepo, NinjaRepository nRepo) {
		this.dojoRepo = dRepo;
		this.ninjaRepo = nRepo;
	}
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	public List<Dojo> allDojos() {
		return dojoRepo.findAll();
	}
	public List<Ninja> allNinjas() {
		return ninjaRepo.findAll();
	}
	public Dojo findDojo(Long id) {
		return this.dojoRepo.findById(id).orElse(null);
	}
}