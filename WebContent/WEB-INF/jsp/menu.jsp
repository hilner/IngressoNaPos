<%@ include file="cabecalho.jsp"%>
<c:if test="${usuarioSessao.usuario != null}">
					Ol� <b>${usuarioSessao.usuario.nome}</b>
</c:if>