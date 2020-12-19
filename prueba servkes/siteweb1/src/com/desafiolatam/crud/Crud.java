package com.desafiolatam.crud;

import java.sql.Connection;
import java.sql.Statement;


import com.desafiolatam.modelo.UsuarioCompletoDTO;

import java.util.List;


public interface Crud <LoQueSea>{

	public boolean create(LoQueSea lqs);
	
	public boolean delete(Object key);
	
	public boolean update(LoQueSea lqs);
	
	public LoQueSea read (Object key);
	
	public List<UsuarioCompletoDTO> readAll();
	
}
