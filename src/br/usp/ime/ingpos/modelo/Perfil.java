package br.usp.ime.ingpos.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Perfil
    implements
        Serializable
{
    private static final long serialVersionUID = 5653550355165213879L;

    @Id
    @GeneratedValue
    private Long perfilID;

    @Column
    private String descricao;

    public Perfil()
    {
    }

    public Long getPerfilID()
    {
        return perfilID;
    }

    public String getDescricao()
    {
        return descricao;
    }

    public void setDescricao(
        String descricao )
    {
        this.descricao = descricao;
    }

}
