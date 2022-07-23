Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Imports System.Web.Configuration
Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Or DropDownList1.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Then
            MsgBox("Please enter details")
        Else
            Dim con As New SqlConnection
            Dim cmd As New SqlCommand
            con.ConnectionString = "Data Source=desktop-k78rflv\sqlexpress;Initial Catalog=homerental;Integrated Security=True"
            Dim reader As SqlDataReader
            con.Open()

            Dim sql As String = "insert into prop(propid,size,contno,location,email,images) values('" & TextBox1.Text & "','" & DropDownList1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "')"


            cmd = New SqlCommand(sql, con)
            reader = cmd.ExecuteReader

            MsgBox("Registration successful")
            con.Close()

        End If
    End Sub

    
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If (FileUpload1.HasFile) Then
            Image1.ImageUrl = "images/" + FileUpload1.FileName
            FileUpload1.SaveAs(Server.MapPath("images/") + FileUpload1.FileName)
            TextBox5.Text = "images/" + FileUpload1.FileName
        End If
    End Sub

    Protected Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox4.TextChanged

    End Sub
End Class