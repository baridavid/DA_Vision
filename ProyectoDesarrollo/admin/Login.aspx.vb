﻿Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports MySql.Data.MySqlClient
Public Class Login1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Login12_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login12.Authenticate
        Dim conexion As New MySqlConnection
        Dim comando As New MySqlCommand
        conexion.ConnectionString = "server=127.0.0.1;" _
                   & "uid=root;" _
                   & "pwd=;" _
                   & "database=dis_evento;"

        comando.Connection = conexion
        comando.CommandType = CommandType.Text

        comando.CommandText = "select * from usuario where " & _
                                 "usuario_user='" & Login12.UserName & "'  and " & _
                                "pas_user = '" & Login12.Password & "'"


        comando.Connection.Open()
        Dim dr As MySqlDataReader = comando.ExecuteReader()
        If dr.Read Then
            If dr.Item("tip_usu") = "0" Then
                Response.Redirect("MantenerExpositor.aspx")
                FormsAuthentication.RedirectFromLoginPage(dr.Item("cod_user"), False)
            End If
        Else

            Login12.FailureText = "Datos incorrectos"
        End If
    End Sub
End Class