package com.desafiolatam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import com.desafiolatam.crud.Crud;
import com.desafiolatam.modelo.HoroscopoDTO;
import com.desafiolatam.modelo.UsuarioDTO;
import com.desafiolatam.procesaconexion.Conexion;

public class HoroscopoDAO {
	

	
	public void create(HoroscopoDTO dto) {
		
		Connection cnn;
		PreparedStatement stmt;
		try {
			cnn = Conexion.generarEntregarConexion().getConexion();
			stmt = cnn.prepareStatement("String SQL");
			
			stmt.setInt(1, dto.getIdHoroscopo());
			stmt.setString(2, dto.getNombre());
			//stmt.setString(3, dto.getDescripcion());
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		
		
		
	}
	
	
	

public ResultSet readJoin(String campo, String tabla, String tabla2, String idtabla, String id ) throws SQLException {
		
		
		String sql = "SELECT " + "h." + campo + " FROM " + tabla + " h" + " INNER JOIN " + tabla2 + " u" + " ON h." 
					 + idtabla + " = " + "u." + idtabla + " WHERE u." + campo + " = " + "'" + id + "'";
		
		Connection conn = Conexion.generarEntregarConexion().getConexion();
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		return rs;
		
		
		
	}	
	
	
	
public ResultSet read(String nombre) throws SQLException {
		
		
		String sql = "SELECT ID_HOROSCOPO AS ID FROM HOROSCOPO WHERE NOMBRE = " + "'"+ nombre + "'";
		Connection conn = Conexion.generarEntregarConexion().getConexion();
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		return rs;
		
		
		
	}

public List<HoroscopoDTO>  readall() throws SQLException {
	String sql = "SELECT * FROM HOROSCOPO";
	
	List<HoroscopoDTO> animales = new ArrayList<HoroscopoDTO>();
	
	Connection conn = Conexion.generarEntregarConexion().getConexion();
	PreparedStatement stmt = conn.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery();
	while(rs.next()) {
		HoroscopoDTO dto = new HoroscopoDTO();
		dto.setDescripcion(rs.getString("DESCRIPCION").split("\\*"));
		dto.setNombre(rs.getString("NOMBRE"));
		dto.setIdHoroscopo(rs.getInt("ID_HOROSCOPO"));
		dto.setLink(rs.getString("LINK"));
		animales.add(dto);
	}
	return animales;

}
	
public String consultarAnimal(String id_usuario) throws SQLException {
	String nombreAnimal = "";
	
	ResultSet rs = this.readJoin("NOMBRE", "HOROSCOPO", "USUARIOS", "ID_HOROSCOPO", id_usuario);
	if(rs.next()) {
		nombreAnimal = rs.getString("NOMBRE");
	}	
    return nombreAnimal;
	
}

public int obtenerId(String animal ) throws SQLException {
	int id=99;
	ResultSet rs = this.read(animal); 
	if(rs.next()) {
		id=rs.getInt("ID");
	}
	
	return id;
}

}