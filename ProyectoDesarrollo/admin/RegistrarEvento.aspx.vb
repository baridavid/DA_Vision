Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports MySql.Data.MySqlClient
Public Class RegistrarEvento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        
        Dim conexion As New MySqlConnection
        Dim comando As New MySqlCommand

        Dim fechas As Array = TextBox2.Text.Split("-")
        Dim fecha As String = fechas(0) & fechas(1) & fechas(2)

        Dim fechas2 As Array = TextBox3.Text.Split("-")
        Dim fecha2 As String = fechas2(0) & fechas2(1) & fechas2(2)

        conexion.ConnectionString = "server=127.0.0.1;" _
                   & "uid=root;" _
                   & "pwd=;" _
                   & "database=dis_evento;"

        comando.Connection = conexion
        comando.CommandType = CommandType.Text

        comando.CommandText = "insert into evento(nom_eve,fech_ini_eve,fech_fin_eve,est_eve) values (@nom_eve,@fech_ini_eve,@fech_fin_eve,@est_eve)"
        comando.Connection = conexion



        Dim p1 As New MySqlParameter("@nom_eve", TextBox1.Text)
        Dim p2 As New MySqlParameter("@fech_ini_eve", fecha)
        Dim p3 As New MySqlParameter("@fech_fin_eve", fecha2)
        Dim p4 As New MySqlParameter("@est_eve", TextBox4.Text)



        comando.Parameters.Add(p1)
        comando.Parameters.Add(p2)
        comando.Parameters.Add(p3)
        comando.Parameters.Add(p4)

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