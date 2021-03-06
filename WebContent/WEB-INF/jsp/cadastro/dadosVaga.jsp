<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../cabecalho.jsp"%>

<script type="text/javascript" src="<c:url value='/'/>/js/jquery.js"></script>
<script type="text/javascript">
function alteraCheckbox(id, num){	
	cb1 = $("#"+id+num);
	if(num == 1)
		cb2 = $("#"+id+"2");
	else
		cb2 = $("#"+id+"1");
	if (cb1.attr('checked')){
		cb2.attr('checked', false);
		cb2.attr('disabled', true);
	}
	else{
		cb2.attr('disabled', false);
	}
}

function habilitaTexto(num){
	id = $("#"+"outra"+num);
	
	if (id.attr('disabled'))
		id.attr('disabled', false);
	else
		id.attr('disabled', true);
}
</script>

<center><h1><fmt:message key="cadastro_vaga_titulo"/></h1></center>

<div id="form" class="form_cadastro">

	<form action="<c:url value='/cadastro/dadosVaga'/>" method="post">

	<fieldset>
			<legend><b><fmt:message key="cadastro_vaga_curso"/></b></legend>
			<div class="row">
				<div class="label"><fmt:message key="cadastro_vaga_escolha_tipo_pos"/></div>
				<span class="formw"><input type="radio" name="tipoPos" value="MESTRADO"/><fmt:message key="mestrado"/></span>
				<span class="formw"><input type="radio" name="tipoPos" value="DOUTORADO"/><fmt:message key="doutorado"/></span>
				<span class="formw"><input type="radio" name="tipoPos" value="DOUTORADO"/><fmt:message key="doutorado_direto"/></span><br>
			</div>
			<p>
				<div class="row">
				<div class="label"><fmt:message key="cadastro_vaga_outras_inscricoes"/></div>
				<textarea rows="5" cols="70" name="inscricao.outrosProcessosSeletivos"></textarea>
			</div>
			<p>
			<div class="row">
				<div class="label"> <fmt:message key="cadastro_vaga_relacao_professores" />
				</div>
				<span class="formw">
					<select name="inscricao.orientadorDesejado" id="selectMultiple">
						<option value="nao" selected><fmt:message key="nao" /></option>
						<c:forEach var="professor" items="${professores}"  >						 
							<option value="${professor}"><fmt:message key="${professor}" /></option>									
						</c:forEach>
					</select>
				</span><br>
				</div>
				<p>
				<div class="row">
					<div class="label"><fmt:message key="cadastro_vaga_dedicacao_integral"/></div>
					<span class="formw"><input type="radio" name="inscricao.dedicacaoExclusiva" value="sim"/><fmt:message key="sim"/></span>
					<span class="formw"><input type="radio" name="inscricao.dedicacaoExclusiva" value="sim_bolsa"/><fmt:message key="cadastro_vaga_sim_bolsa"/></span>
					<span class="formw"><input type="radio" name="inscricao.dedicacaoExclusiva" value="nao"/><fmt:message key="nao"/></span><br>
				</div>
				
			 </fieldset>
			 
			 <fieldset>
			 	<legend><b><fmt:message key="cadastro_vaga_areas_interesse"/></b></legend>
			 	<br>
			 	<h2><fmt:message key="cadastro_vaga_areas_interesse_afinidade"/></h2>
			 	<br>
			 	<div>
				 	<div class="label"><fmt:message key="cadastro_vaga_interesse_muita_afinidade"/></div>
				 	<br>
				 	<c:forEach  var="area" items="${areasDeInteresse}" varStatus="rowCounter">
						<input type="checkbox" name="listaAreasMaiorAfinidade" value="${area.descricao}" 
							id="<c:out value="${area.descricao}"/>1" onclick="alteraCheckbox('<c:out value="${area.descricao}"/>', 1)">
						<fmt:message key="${area.descricao}"/><br />
					</c:forEach>
					
					<input type="checkbox" name="listaAreasMaiorAfinidade" value="nao_sei_ainda">
						<fmt:message key="cadastro_vaga_nao_sei"/><br />
					<input type="checkbox" name="outraMaiorAfinidade" value="true" onclick="habilitaTexto(1)">
						<fmt:message key="cadastro_vaga_outra_qual"/>
						<input type="text" name="listaAreasMaiorAfinidade" id="outra1" disabled style="width: 60%">
						<br />
				</div>
				<p>
				<div>
				 	<div class="label"><fmt:message key="cadastro_vaga_interesse_menor_afinidade"/></div>
					<br>
					<c:forEach  var="area" items="${areasDeInteresse}" varStatus="rowCounter">
						<input type="checkbox" name="listaAreasMenorAfinidade" value="${area.descricao}" 
							id="<c:out value="${area.descricao}"/>2" onclick="alteraCheckbox('<c:out value="${area.descricao}"/>', 2)">
						<fmt:message key="${area.descricao}"/><br />
					</c:forEach>
					
					<input type="checkbox" name="listaAreasMenorAfinidade" value="true">
						<fmt:message key="cadastro_vaga_nao_sei"/><br />
					<input type="checkbox" name="outraMenorAfinidade" value="true" onclick="habilitaTexto(2)">
						<fmt:message key="cadastro_vaga_outra_qual"/>
						<input type="text" name="listaAreasMaiorAfinidade" id="outra2" disabled style="width: 60%">
						<br />
					<br />
				</div>
			 
		</fieldset>
		
		<div>
			<input type="submit" value="<fmt:message key="enviar" />">
			<a class=button href="<c:url value='/'/>"><button type="button"><fmt:message key="voltar"/></button> </a>
		</div>
		
		</form>

</div>

<%@ include file="../rodape.jsp"%>