package com.desafiolatam.modelo;

public class UsuarioCompletoDTO {

	private UsuarioDTO usuario;
	private HoroscopoDTO horoscopo;
	

	public UsuarioCompletoDTO() {

		// TODO Auto-generated constructor stub
	}
	

	public UsuarioCompletoDTO(UsuarioDTO usurio, HoroscopoDTO horoscopo2) {
    this.usuario = usurio;
    this.horoscopo = horoscopo2;
	}

	public UsuarioDTO getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioDTO usuario) {
		this.usuario = usuario;
	}

	public HoroscopoDTO getHoroscopo() {
		return horoscopo;
	}

	public void setHoroscopo(HoroscopoDTO horoscopo) {
		this.horoscopo = horoscopo;
	}

	@Override
	public String toString() {
		return "UsuarioCompletoDTO [usuario=" + usuario + ", horoscopo=" + horoscopo + "]";
	}
	
	
	
	
}
