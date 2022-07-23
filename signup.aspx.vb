Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Imports System.Web.Configuration
Partial Class signup
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Or TextBox3.Text = "" Or TextBox2.Text = "" Then
            MsgBox("Please enter the data")
        Else
            Dim con As New SqlConnection
            Dim cmd As New SqlCommand
            Dim reader As SqlDataReader
            con.ConnectionString = "Data Source=desktop-k78rflv\sqlexpress;Initial Catalog=homerental;Integrated Security=True"
            con.Open()
            Dim a As String
            a = "insert into signup(name,phoneno,address,username,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')"
            cmd = New SqlCommand(a, con)
            reader = cmd.ExecuteReader
            MsgBox("Successfully created your account")
            Response.Redirect("addprop.aspx")
            con.Close()


            TextBox3.Text = ""
            TextBox4.Text = ""
            TextBox5.Text = ""
            TextBox1.Text = ""
            TextBox2.Text = ""
        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub




    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("home.aspx")
    End Sub
End Class

