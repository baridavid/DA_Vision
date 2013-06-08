Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports MySql.Data.MySqlClient

Public Class Asignarexpositor_Ponencia
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim conexion As New MySqlConnection
        Dim comando As New MySqlCommand
        conexion.ConnectionString = "server=127.0.0.1;" _
                   & "uid=root;" _
                   & "pwd=;" _
                   & "database=dis_evento;"

        comando.Connection = conexion
        comando.CommandType = CommandType.Text

        comando.CommandText = "select * from expositor where " & _
                                 "cod_exp='" & TextBox1.Text & "'"


        comando.Connection.Open()
        Dim dr As MySqlDataReader = comando.ExecuteReader()
        If dr.Read Then
            Session("cod_exp") = dr.Item("cod_exp")
            Session("nom_exp") = dr.Item("nom_exp")
            Session("ape_pat_exp") = dr.Item("ape_pat_exp")
            Session("ape_mat_exp") = dr.Item("ape_mat_exp")
            Session("pais_exp") = dr.Item("pais_exp")
            Session("especialidad") = dr.Item("especialidad")


            Label12.Text = dr.Item("ape_pat_exp") & " " & dr.Item("ape_mat_exp") & ", " & dr.Item("nom_exp")
            Label13.Text = dr.Item("pais_exp")
            Label14.Text = dr.Item("especialidad")

            'FormsAuthentication.RedirectFromLoginPage(dr.Item("cod_exp"), False)

        Else

            Label15.Text = "No se encontraron resultados"
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim conexion As New MySqlConnection
        Dim comando As New MySqlCommand
        conexion.ConnectionString = "server=127.0.0.1;" _
                   & "uid=root;" _
                   & "pwd=;" _
                   & "database=dis_evento;"

        comando.Connection = conexion
        comando.CommandType = CommandType.Text

        comando.CommandText = "select id_pon, nom_pon, tipo_pon, tip_amb, cod_fia_amb  from ponencia, ambiente where " & _
                                 "id_pon='" & TextBox2.Text & "' and id_amb_pon=id_amb"


        comando.Connection.Open()
        Dim dr As MySqlDataReader = comando.ExecuteReader()
        If dr.Read Then
            Session("id_pon") = dr.Item("id_pon")
            Session("nom_pon") = dr.Item("nom_pon")
            Session("tipo_pon") = dr.Item("tipo_pon")
            


            Label17.Text = dr.Item("nom_pon")
            Label18.Text = dr.Item("tipo_pon")
            If dr.Item("tip_amb") = "1" Then
                Label19.Text = "Aula"
            ElseIf dr.Item("tip_amb") = "2" Then
                Label19.Text = "Laboratorio"
            Else
                Label9.Text = "Coliseo"
            End If

            Label20.Text = dr.Item("cod_fia_amb")

            'FormsAuthentication.RedirectFromLoginPage(dr.Item("cod_exp"), False)

        Else

            Label16.Text = "No se encontraron resultados"
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim conexion As New MySqlConnection
        Dim comando As New MySqlCommand
        conexion.ConnectionString = "server=127.0.0.1;" _
                   & "uid=root;" _
                   & "pwd=;" _
                   & "database=dis_evento;"

        comando.Connection = conexion
        comando.CommandType = CommandType.Text

        comando.CommandText = "update ponencia set cod_exp_pon='" & Session("cod_exp") & "' where id_pon='" & Session("id_pon") & "'"


        comando.Connection.Open()

        Dim resultado As Integer = comando.ExecuteNonQuery()
        comando.Connection.Close()

        If resultado = 1 Then
            Label21.Text = "Asignacion Exitosa"
        Else
            Label21.Text = "Ocurrió un error"
        End If
    End Sub
End Class