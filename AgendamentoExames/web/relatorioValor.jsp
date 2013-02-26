<%-- 
    Document   : ListClientes
    Created on : 08/02/2013, 13:43:40
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Agendamentos</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <f:view>
            <div class="container">
                <%@include file="header.jsp"%>
                <h:form>

                    <h:dataTable value="#{Relatorio.listaAgendamentos(2)}" var="rel" id="listaAgendamentos" 
                                 border="1" styleClass="table table-striped">
                        <f:facet name="header">
                            <h:outputText value="Relatório por período" />
                        </f:facet>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Código do exame"/>
                            </f:facet>
                            <h:outputText value="#{rel.exame.idExame}"/>
                        </h:column>
                        
                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Data"/>
                            </f:facet>
                            <h:outputFormat value="#{rel.agenda.dataHora}">
                                <f:convertDateTime pattern="dd/MM/yyyy"/>
                            </h:outputFormat>
                        </h:column>
                        
                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Exame"/>
                            </f:facet>
                            <h:outputText value="#{rel.exame.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Paciente"/>
                            </f:facet>
                            <h:outputText value="#{rel.paciente.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Valor"/>
                            </f:facet>
                            <h:outputText value="#{rel.exame.valor}"/>
                        </h:column>
                        
                        <f:facet name="header">
                            <h:outputLabel value="Total: #{rel.calcula()}"/>
                        </f:facet>
                    </h:dataTable>

                    <br/><br/>
                    <a href="formRelatorio.jsp">Voltar</a>

                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>