
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports MySql.Data.MySqlClient
Public Class RegistrarParticipante
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

        comando.CommandText = "insert into usuario(usuario_user,pas_user,num_doc_user,nom_user,ape_pat_user,ape_mat_user,dir_user,email_user,telf_cel,telf_fijo) " & _
            " values (@usuario_user,@pas_user,@num_doc_user,@nom_user,@ape_pat_user,@ape_mat_user,@dir_user,@email_user,@telf_cel,@telf_fijo)"
        comando.Connection = conexion

        Dim p1 As New MySqlParameter("@num_doc_user", TextBox2.Text)
        Dim p2 As New MySqlParameter("@nom_user", TextBox3.Text)
        Dim p3 As New MySqlParameter("@ape_pat_user", TextBox4.Text)
        Dim p4 As New MySqlParameter("@ape_mat_user", TextBox5.Text)
        Dim p5 As New MySqlParameter("@telf_fijo", TextBox6.Text)
        Dim p6 As New MySqlParameter("@telf_cel", TextBox7.Text)
        Dim p7 As New MySqlParameter("@email_user", TextBox8.Text)
        Dim p8 As New MySqlParameter("@dir_user", TextBox9.Text)
        Dim p9 As New MySqlParameter("@usuario_user", TextBox10.Text)
        Dim p10 As New MySqlParameter("@pas_user", TextBox11.Text)

        comando.Parameters.Add(p1)
        comando.Parameters.Add(p2)
        comando.Parameters.Add(p3)
        comando.Parameters.Add(p4)
        comando.Parameters.Add(p5)
        comando.Parameters.Add(p6)
        comando.Parameters.Add(p7)
        comando.Parameters.Add(p8)
        comando.Parameters.Add(p9)
        comando.Parameters.Add(p10)

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