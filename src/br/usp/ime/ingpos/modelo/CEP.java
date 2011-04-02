package br.usp.ime.ingpos.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class CEP 
implements
Serializable
{
	private static final long serialVersionUID = 5653550355165213879L;
	
	@Id
	@GeneratedValue
	private Long cepID;
	
	@Column(length=5)
	private String regiao;
	@Column(length=3)
	private String sufixo;
	
	
	public Long getCepID() {
		return cepID;
	}
	public void setCepID(Long cepID) {
		this.cepID = cepID;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getRegiao() {
		return regiao;
	}
	public void setRegiao(String regiao) {
		this.regiao = regiao;
	}
	public String getSufixo() {
		return sufixo;
	}
	public void setSufixo(String sufixo) {
		this.sufixo = sufixo;
	}
}
