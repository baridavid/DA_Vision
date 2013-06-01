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
        If Session("tip_usu") = 1 Or Session("tip_usu") = 2 Then
            Label3.Text = "Interno"
        Else
            Label3.Text = "Externo"
        End If

        lbl_apepat.Text = Session("apePat")
        lbl_apemat.Text = Session("apeMat")
        lbl_nom.Text = Session("nombre")
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

        comando.CommandText = "insert into recibo(id_eve_rec, cod_user_rec, voucher, nro_inscripcion, mod_pago, nro_cuotas, monto) " & _
            " values (@id_eve_rec, @cod_user_rec, @voucher, @nro_inscripcion, @mod_pago, @nro_cuotas, @monto)"
        comando.Connection = conexion

        Dim p1 As New MySqlParameter("@id_eve_rec", "2")
        Dim p2 As New MySqlParameter("@cod_user_rec", "10")
        Dim p3 As New MySqlParameter("@voucher", "pendiente")
        Dim p4 As New MySqlParameter("@nro_inscripcion", CStr(numero))
        Dim p5 As New MySqlParameter("@mod_pago", RadioButton1.Text)
        Dim p6 As New MySqlParameter("@nro_cuotas", DropDownList1.SelectedValue())
        Dim p7 As New MySqlParameter("@monto", TextBox1.Text)
        

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