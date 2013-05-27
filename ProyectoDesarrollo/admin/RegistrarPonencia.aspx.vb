
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports MySql.Data.MySqlClient
Public Class RegistrarPonencia
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

        comando.CommandText = "insert into ponencia(nom_pon,fech_ini_pon,fech_fin_pon,nom_pon,desc_pon,tipo_pon,dirigido_a_pon,est_pon) " & _
                                            "values (@nom_pon,@fech_ini_pon,@fech_fin_pon,@nom_pon,@desc_pon,@tipo_pon,@dirigido_a_pon,@est_pon)"
        comando.Connection = conexion


        Dim p1 As New MySqlParameter("@fech_ini_pon", TextBox3.Text)
        Dim p2 As New MySqlParameter("@fech_fin_pon", TextBox4.Text)
        Dim p3 As New MySqlParameter("@nom_pon", TextBox5.Text)
        Dim p4 As New MySqlParameter("@desc_pon", TextBox6.Text)
        Dim p5 As New MySqlParameter("@tipo_pon", DropDownList1.SelectedValue)
        Dim p6 As New MySqlParameter("@dirigido_a_pon", DropDownList2.SelectedValue)
        Dim p7 As New MySqlParameter("@est_pon", DropDownList3.Text)
        'Dim p8 As New MySqlParameter("@desc_pon", TextBox6.Text)
        'Dim p9 As New MySqlParameter("@desc_pon", TextBox6.Text)


        comando.Parameters.Add(p1)
        comando.Parameters.Add(p2)
        comando.Parameters.Add(p3)
        comando.Parameters.Add(p4)
        comando.Parameters.Add(p5)
        comando.Parameters.Add(p6)
        comando.Parameters.Add(p7)

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