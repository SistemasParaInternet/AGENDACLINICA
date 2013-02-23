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
        <title>Lista de clientes</title>
        <link href="../css/style.css" rel="stylesheet"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    </head>
    <body>

        <%@include file="../header2.jsp"%>

        <f:view>
            <div class="body">
                <h:form>

                    <h:dataTable value="#{Paciente.listaPacientes()}" var="paciente" id="listaPacientes" border="2"
                                 width="50%" headerClass="cabecalho">
                        <f:facet name="header">
                            <h:outputText value="Tabela de Pacientes"/>
                        </f:facet>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="ID"/>
                            </f:facet>
                            <h:outputText value="#{paciente.id}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Nome"/>
                            </f:facet>
                            <h:outputText value="#{paciente.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Data de Nascimento"/>
                            </f:facet>
                            <h:outputText value="#{paciente.dataNasc}">
                                <f:convertDateTime pattern="dd/MM/yyyy"/>
                            </h:outputText>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Logradouro"/>
                            </f:facet>
                            <h:outputText value="#{paciente.logradouro}"/>  
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Número"/>
                            </f:facet>
                            <h:outputText value="#{paciente.numero}"/>  
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Bairro"/>
                            </f:facet>
                            <h:outputText value="#{paciente.bairro}"/>  
                        </h:column> 

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Cidade"/>
                            </f:facet>
                            <h:outputText value="#{paciente.cidade}"/>  
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="UF"/>
                            </f:facet>
                            <h:outputText value="#{paciente.uf}"/>  
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Paciente.remove(paciente.id)}" value="Excluir" styleClass="btn"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Paciente.loadPaciente(paciente.id)}" value="Alterar" styleClass="btn"/>
                        </h:column>
                    </h:dataTable>

                </h:form>
            </div>
        </f:view>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
