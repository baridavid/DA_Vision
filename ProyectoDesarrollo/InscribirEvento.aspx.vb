Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports MySql.Data.MySqlClient

Public Class InscribirEvento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        RadioButton1.GroupName = "radio1"
        RadioButton2.GroupName = "radio1"

        Label1.Text = Session("cod")
        Label4.Text = Session("escuela")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim conexion As New MySqlConnection
        Dim comando As New MySqlCommand
        Dim Random As New Random()
        Dim numero As Integer = Random.Next(1000000, 9999999)
        conexion.ConnectionString = "server=127.0.0.1;" _
                   & "uid=root;" _
                   & "pwd=;" _
                   & "database=dis_evento;"

        comando.Connection = conexion
        comando.CommandType = CommandType.Text

        comando.CommandText = "insert into usuario(usuario_user,pas_user,num_doc_user,nom_user,ape_pat_user,ape_mat_user,dir_user,email_user,telf_cel,telf_fijo) " & _
            " values (@usuario_user,@pas_user,@num_doc_user,@nom_user,@ape_pat_user,@ape_mat_user,@dir_user,@email_user,@telf_cel,@telf_fijo)"
        comando.Connection = conexion

        Dim p1 As New MySqlParameter("@num_doc_user", Session("cod"))
        Dim p2 As New MySqlParameter("@nom_user", "2")
        Dim p3 As New MySqlParameter("@ape_pat_user", "pendiente")
        Dim p4 As New MySqlParameter("@ape_pat_user", CStr(numero))
        Dim p5 As New MySqlParameter("@ape_mat_user", TextBox1.Text)
        Dim p6 As New MySqlParameter("@ape_mat_user", DropDownList1.SelectedValue())
        Dim p7 As New MySqlParameter("@ape_mat_user", TextBox1.Text)
        

        'comando.Parameters.Add(p1)
        'comando.Parameters.Add(p2)
        'comando.Parameters.Add(p3)
        'comando.Parameters.Add(p4)
        

        'comando.Connection.Open()

        'Dim resultado As Integer = comando.ExecuteNonQuery()
        'comando.Connection.Close()

        'If resultado = 1 Then
        'l_mensaje.Text = "Producto guardado"
        'Else
        'l_mensaje.Text = "Ocurrió un error"
        'End If


    End Sub
End Class