package com.desafiolatam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.desafiolatam.crud.Crud;
import com.desafiolatam.modelo.HoroscopoDTO;
import com.desafiolatam.modelo.UsuarioCompletoDTO;
import com.desafiolatam.modelo.UsuarioDTO;
//import com.desafiolatam.crud.Crud;
import com.desafiolatam.procesaconexion.Conexion;

public class UsuarioDAO implements Crud<UsuarioDTO> {
	
	
	
	
	@Override
	public boolean create(UsuarioDTO lqs) {
		
		
		
		String sql = "INSERT INTO USUARIOS(NOMBRE, NOMBRE_USUARIO, CONTRASEÑA, FECHA_NACIMIENTO, ID_HOROSCOPO, ID_USUARIO) VALUES (?, ?, ?, ?, ?, ?)";
		String consultaProximoId = " SELECT MAX(ID_USUARIO) AS ID_MAX FROM USUARIOS";
		int id = 0;
		
		
		
		try {
			Connection conn;
			conn = Conexion.generarEntregarConexion().getConexion();
			PreparedStatement ps = conn.prepareStatement(sql);
			PreparedStatement ps2 = conn.prepareStatement(consultaProximoId);
	        ResultSet rs = ps2.executeQuery();
			
	        if(rs.next()) {
				id = rs.getInt("ID_MAX")+1;
				ps.setInt(5, lqs.getIdHoroscopo());
				ps.setString(2, lqs.getNombreUsuario());
				ps.setString(1, lqs.getNombre());
				ps.setString(3, lqs.getContrasena());
				ps.setInt(4, lqs.getFechaDeNacimiento());
				ps.setInt(6,id);
				
				if(ps.executeUpdate() == 1) {
					return true;
				}else {
					throw new RuntimeException("A ocurrido un error inesperado");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return false;			
		
		}
	
	
	@Override
	public UsuarioDTO read (Object x) {
		
		String sql = "SELECT * FROM USUARIOS WHERE NOMBRE_USUARIO = ?";
		ResultSet rs = null;
		UsuarioDTO dto = new UsuarioDTO();	
		
	
			try {
				Connection conn;
				conn = Conexion.generarEntregarConexion().getConexion();
				PreparedStatement ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				ps.setString(1, (String) x);
				rs = ps.executeQuery();
			
				if(rs.next()) {
					 dto.setContrasena(rs.getString("CONTRASEÑA"));
					 dto.setFechaDeNacimiento(rs.getInt("FECHA_NACIMIENTO"));
					 dto.setNombreUsuario(rs.getString("NOMBRE_USUARIO"));
					 dto.setNombre(rs.getString("NOMBRE"));
					 dto.setIdHoroscopo(rs.getInt("ID_HOROSCOPO"));
					 dto.setIdUsuario(rs.getInt("ID_USUARIO"));
				}	

			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		 
		 
			return dto;
		
	}
	
	
	@Override
	public List readAll() {
		return null;
		
	}	
	
	
	@Override
	public boolean update(UsuarioDTO x) {
		String[] stringArray;   
		String camposUpdate = ""; 
		String sql;
		UsuarioDTO	dto = x; 
		
		ResultSet rs = null;
        
		
				
		
		//que las cadenas tengan un espacio al principio y solo al principio es importante para el funcionamiento de l progrsamas
		if(dto.getNombre()!=null) {
			camposUpdate += " NOMBRE="+"'"+dto.getNombre()+"'";
		}
		if(dto.getNombreUsuario()!=null) {
			camposUpdate += " NOMBRE_USUARIO="+"'"+dto.getNombre()+"'";
		}
		if(dto.getContrasena()!=null) {
			camposUpdate += " CONTRASEÑA="+"'"+dto.getContrasena()+"'";
		}
		if(dto.getFechaDeNacimiento()!=-1) {
			camposUpdate += " FECHA_NACIMIENTO="+"'"+dto.getFechaDeNacimiento()+"'";
		}
		
		
		
		stringArray = camposUpdate.split(" ");
		camposUpdate = String.join(",", stringArray);
		sql = "update usuarios set "+camposUpdate+" where ID_USUARIO = "+"'"+dto.getIdUsuario()+"'";
		sql = sql.replaceFirst(",", " "); 
		
		
	
			try {
				Connection conn;
				conn = Conexion.generarEntregarConexion().getConexion();
				PreparedStatement ps = conn.prepareStatement(sql);
				
				if(ps.executeUpdate()>0) {
					return true;
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	
		return false;
	}
	
	
	@Override
	public boolean delete(Object x) {
		
		
		
		String sql = "delete from usuarios where nombre_usuario = ?";
		
	
		
		
		try {
			Connection conn;
			conn = Conexion.generarEntregarConexion().getConexion();
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, (String) x);
	
				if(ps.executeUpdate()== 1) {
					return true;
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		
		
		return false;
	}
	
	
	
	public ResultSet especificRead(String campoBuscado, String tabla, String CampoIdentificador, String id ) throws SQLException {
		
		String sql = "SELECT " + campoBuscado + " FROM " + tabla + " WHERE " + CampoIdentificador + " = " + "'" + id + "'";
		
		Connection conn = Conexion.generarEntregarConexion().getConexion();
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		return rs;
		
		
		
	}	
	
	
	public ResultSet especificReadAll(String campoBuscado, String tabla) throws SQLException {
		
		String sql = "SELECT " + campoBuscado + " FROM " + tabla ;
		
		Connection conn = Conexion.generarEntregarConexion().getConexion();
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		return rs;
		
		
		
	}	
	
	
	
		
 	public int consultarNacimiento(String usuario) throws SQLException {
		int anio = 0;
		
		
		ResultSet rs = this.especificRead("FECHA_NACIMIENTO", "USUARIOS", "NOMBRE", usuario);
		if(rs.next()) {
			anio = rs.getInt("FECHA_NACIMIENTO");	
		}	
	    return anio;
	}
 	
 	
	public boolean insertarUsuario(UsuarioDTO lqs) throws SQLException {
			boolean valor = this.create(lqs);
			return valor;

	}
	
	
	public List<String> obtenerNombresUsuaros() throws SQLException{
		
		List<String> lista = new ArrayList<String>();
		ResultSet rs = especificReadAll("NOMBRE_USUARIO", "USUARIOS");
		while(rs.next()) {
			lista.add(rs.getString("NOMBRE_USUARIO"));	
		}	
	    return lista;
	}
	
	
	public UsuarioDTO obtenerUsuario(String nombreUsiaro) throws SQLException{
		UsuarioDTO dto = this.read(nombreUsiaro);
		return dto;
	}		
	
	
	
	public ArrayList<String> ObtenerDatosLogin() throws SQLException {
		ArrayList<String> datos = new ArrayList<String>();
		ResultSet rs = especificReadAll("NOMBRE_USUARIO, CONTRASEÑA", "USUARIOS");
		while(rs.next()) {
			datos.add(rs.getString("NOMBRE_USUARIO"));
			datos.add(rs.getString("CONTRASEÑA"));
			
		}
		
		return datos;
	}
	
	
	
	public UsuarioDTO ObtenerDatosEspecificos(String campoBuscado, String tabla, String campoIdentificador, String id) throws SQLException {
	    
		UsuarioDTO dto = new UsuarioDTO();
	    ResultSet rs = especificRead(campoBuscado,tabla,campoIdentificador,id);
	   
	    if(rs.next()) {
	    	if(campoBuscado.contains("NOMBRE")) {
	    		dto.setNombre(rs.getString("NOMBRE"));		
	    	}
	    	if(campoBuscado.contains("NOMBRE_USUARIO")) {
	    		dto.setNombreUsuario(rs.getString("NOMBRE_USUARIO"));		
	    	}
	    	if(campoBuscado.contains("CONTRASEÑA")) {
	    		dto.setContrasena(rs.getString("CONTRASEÑA"));		
	    	}
	    	if(campoBuscado.contains("FECHA_NACIMIENTO")) {
	    		dto.setFechaDeNacimiento(rs.getInt("FECHA_NACIMIENTO"));		
	    	}
	    	if(campoBuscado.contains("ID_HOROSCOPO")) {
	    		dto.setIdHoroscopo(rs.getInt("ID_HOROSCOPO"));		
	    		System.out.println(dto.getIdHoroscopo());
	    	}
	    	
		    
	    }
	    return dto;
	}


	public List<UsuarioCompletoDTO> obtenerUsuarios(String user) throws SQLException {
	
		UsuarioCompletoDTO usuarioCompletoi = new UsuarioCompletoDTO();
		List<UsuarioCompletoDTO> dto = new ArrayList<UsuarioCompletoDTO>();
		String usuario = user;
		user = "u.nombre like "+"'%"+user+"%'"+" or u.nombre_usuario like "+"'%"+user+"%'"+" or u.nombre_usuario";
		
		ResultSet rs = this.especificRead("u.nombre, u.nombre_usuario, u.fecha_nacimiento, u.id_usuario, h.ID_HOROSCOPO, h.nombre", "usuarios u INNER JOIN horoscopo h  ON u.id_horoscopo = h.id_horoscopo",user, usuario);
		
		while(rs.next()) {

			
			dto.add(new UsuarioCompletoDTO(new UsuarioDTO(rs.getString("nombre"),rs.getString("nombre_usuario"),rs.getInt("fecha_nacimiento"),rs.getInt("id_usuario")), new HoroscopoDTO(rs.getString("h.nombre"),rs.getInt("ID_HOROSCOPO"))));
		
		
		}
		
		return dto;
	}


	public boolean modificarUsuario(UsuarioDTO dto) {
		boolean valor = this.update(dto);
		return valor;
	}


	public Boolean eliminarUsuario(String usuarioPorEliminar) {
		boolean valor = this.delete(usuarioPorEliminar);
		return valor;
	}


	public List<UsuarioCompletoDTO> obtenerTodos() {
		String sql = "SELECT u.nombre, u.nombre_usuario, u.fecha_nacimiento, u.id_usuario, h.ID_HOROSCOPO, h.nombre FROM usuarios u INNER JOIN horoscopo h  ON u.id_horoscopo = h.id_horoscopo";
		ResultSet rs = null;
		List<UsuarioCompletoDTO> dto = new ArrayList<UsuarioCompletoDTO>();
	
			try {
				Connection conn;
				conn = Conexion.generarEntregarConexion().getConexion();
				PreparedStatement ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();				
				
				while(rs.next()) {

					
					dto.add(new UsuarioCompletoDTO(new UsuarioDTO(rs.getString("nombre"),rs.getString("nombre_usuario"),rs.getInt("fecha_nacimiento"),rs.getInt("id_usuario")), new HoroscopoDTO(rs.getString("h.nombre"),rs.getInt("ID_HOROSCOPO"))));
				
				
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		 
		 
			return dto;
		
		
	}
	    
		
}























