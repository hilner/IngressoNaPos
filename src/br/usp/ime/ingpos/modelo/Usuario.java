package br.usp.ime.ingpos.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Usuario
    implements
        Serializable
{
    private static final long serialVersionUID = 5653550355165213879L;

    @Id
    @GeneratedValue
    private Long usuarioID;

    @Embedded
    private DadosPessoais dadosPessoais;

    @Column( columnDefinition = "BOOLEAN" )
    private boolean ativo;

    @ManyToOne( optional = false )
    Perfil perfil;

    @ManyToOne
    private Curriculo curriculo;

    public Usuario()
    {
        this.dadosPessoais = new DadosPessoais();
    }

    public Long getUsuarioID()
    {
        return usuarioID;
    }

    public Perfil getPerfil()
    {
        return perfil;
    }

    public void setPerfil(
        Perfil perfil )
    {
        this.perfil = perfil;
    }

    public Curriculo getCurriculo()
    {
        return curriculo;
    }

    public void setCurriculo(
        Curriculo curriculo )
    {
        this.curriculo = curriculo;
    }

    public DadosPessoais getDadosPessoais()
    {
        return dadosPessoais;
    }

    protected void setDadosPessoais(
        DadosPessoais dadosPessoais )
    {
        this.dadosPessoais = dadosPessoais;
    }

    public void setAtivo(
        boolean ativo )
    {
        this.ativo = ativo;
    }

    public boolean isAtivo()
    {
        return ativo;
    }

}
