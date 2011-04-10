package br.usp.ime.ingpos.web.controllers;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.usp.ime.ingpos.modelo.DadosPessoais;

@Resource
public class CadastroController
{

    public static final String NOME_METODO_REGISTRO = "registro";

    public CadastroController()
    {
    }

    @Get
    @Path( "/cadastro/dadosUsuario" )
    public void dadosUsuario()
    {

    }

    @Get
    @Path( "/cadastro/dadosCurriculo" )
    public void dadosCurriculo()
    {

    }

    @Get
    @Path( "cadastro/registro" )
    public void registro()
    {

    }

    @Post
    @Path( "cadastro/registro" )
    public void salvarRegistro(
        DadosPessoais dadosPessoais )
    {
        // TODO Valida��o(senha e confirm. senha)
        // TODO Gerar URL "criptografada"
        // TODO Envio de E-mail
        // TODO Servi�o de Ativa��o por recebimento da URL (cadastro/ativa��o)
        // TODO alterar o modelo Usuario/DadosPesoais com a data/hora

    }

    @Post
    @Path( "cadastro/ativacao" )
    public void ativarRegistro(
        String hashAtivacao )
    {
        // O hash ser� encriptado e enviado com o ID user. Ao receber o link,
        // busca o ID,
        // e encripta as infos e verifica a igualdade

    }

}
