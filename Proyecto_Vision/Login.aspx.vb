Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports MySql.Data.MySqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LoginVision_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles LoginVision.Authenticate
        Dim conn As New MySql.Data.MySqlClient.MySqlConnection
        Dim cmd As New MySqlCommand


        conn.ConnectionString = "server=127.0.0.1;" _
                    & "uid=root;" _
                    & "pwd=;" _
                    & "database=dis_evento;"


        cmd.Connection = conn

        cmd.CommandType = CommandType.Text

        cmd.CommandText = "select * from usuario where " & _
                                 "usuario_user='" & LoginVision.UserName & "'  and " & _
                                "pas_user = '" & LoginVision.Password & "'"

        cmd.Connection.Open()


        Dim dr As MySqlDataReader = cmd.ExecuteReader()

        If dr.Read Then
            FormsAuthentication.RedirectFromLoginPage(dr.Item("cod_user"), False)
        Else
            LoginVision.FailureText = "Datos incorrectos"

        End If

    End Sub
End Class