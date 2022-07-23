Imports System.Data.SqlClient
Public Class signuser
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If TextBox3.Text = "" Or TextBox4.Text = "" Then
            MsgBox("Enter Username and Password")
        Else
            Dim connection As New SqlConnection("Data Source=desktop-k78rflv\sqlexpress;Initial Catalog=homerental;Integrated Security=True")


            Dim command As New SqlCommand("select * from signup where username = @username and password = @password", connection)
            command.Parameters.Add("@username", Data.SqlDbType.NVarChar, 50).Value = TextBox3.Text
            command.Parameters.Add("@password", Data.SqlDbType.NVarChar, 50).Value = TextBox4.Text
            Dim adapter As New SqlDataAdapter(command)

            Dim table As New Data.DataTable()

            adapter.Fill(table)

            If table.Rows.Count() <= 0 Then
                MsgBox("Username or Password is Invalid")
            Else
                TextBox3.Text = ""
                TextBox4.Text = ""

                Response.Redirect("usersignup.aspx")
            End If
        End If
        TextBox3.Text = ""
        TextBox4.Text = ""
    End Sub
End Class