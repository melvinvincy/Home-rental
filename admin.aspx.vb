Imports System.Data.SqlClient
Public Class admin

    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        If TextBox1.Text = "" Or TextBox2.Text = "" Then
            MsgBox("Please enter details")
        Else
            con.ConnectionString = "Data Source=desktop-k78rflv\sqlexpress;Initial Catalog=homerental;Integrated Security=True"
            Dim reader As SqlDataReader
            Try
                con.Open()
                Dim query As String
                query = "select * from adminlogin where username='" & TextBox1.Text & "' and password='" & TextBox2.Text & "' "
                cmd = New SqlCommand(query, con)
                reader = cmd.ExecuteReader

                If reader.HasRows Then
                    Cache("username") = TextBox1.Text
                    Cache("password") = TextBox2.Text
                    Response.Redirect("adminfolder.aspx")

                Else
                    MsgBox("Invalid details")
                End If

                con.Close()
            Catch ex As Exception
            End Try
        End If
    End Sub
End Class