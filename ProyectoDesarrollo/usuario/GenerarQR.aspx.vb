Public Class GenerarQR
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        TextBox1.Text = Session("nombre")
        TextBox2.Text = Session("apePat")
        TextBox3.Text = Session("apeMat")

    End Sub

End Class