Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports MySql.Data.MySqlClient
Public Class RegistrarExpositor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim conexion As New MySqlConnection
        Dim comando As New MySqlCommand
        conexion.ConnectionString = "server=127.0.0.1;" _
                   & "uid=root;" _
                   & "pwd=;" _
                   & "database=dis_evento;"

        comando.Connection = conexion
        comando.CommandType = CommandType.Text

        comando.CommandText = "insert into expositor(tip_doc,num_doc,nom_exp,ape_pat_exp,ape_mat_exp,pais_exp) values (@tip_doc,@num_doc,@nom_exp,@ape_pat_exp,@ape_mat_exp,@pais_exp)"
        comando.Connection = conexion

        Dim p1 As New MySqlParameter("@tip_doc", TextBox1.Text)
        Dim p2 As New MySqlParameter("@num_doc", TextBox2.Text)
        Dim p3 As New MySqlParameter("@nom_exp", TextBox3.Text)
        Dim p4 As New MySqlParameter("@ape_pat_exp", TextBox4.Text)
        Dim p5 As New MySqlParameter("@ape_mat_exp", TextBox5.Text)
        Dim p6 As New MySqlParameter("@pais_exp", TextBox6.Text)

        comando.Parameters.Add(p1)
        comando.Parameters.Add(p2)
        comando.Parameters.Add(p3)
        comando.Parameters.Add(p4)
        comando.Parameters.Add(p5)
        comando.Parameters.Add(p6)

        comando.Connection.Open()


        Dim resultado As Integer = comando.ExecuteNonQuery()
        comando.Connection.Close()

        If resultado = 1 Then
            l_mensaje.Text = "Producto guardado"
        Else
            l_mensaje.Text = "Ocurrió un error"
        End If
    End Sub
End Class