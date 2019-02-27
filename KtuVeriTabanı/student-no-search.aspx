<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student-no-search.aspx.cs" Inherits="KtuVeriTabanı.student_no_search" %>


    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
    <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Kaan Staj Ödev</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="Style.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;subset=latin-ext" rel="stylesheet">
</head>
<body>

    <form id="form1" runat="server">
    <div class="main-wrapper">
        <header class="main-header">

            <div class="container">
                    <asp:Button ID="Button2" Text="Anasayfa" OnClick="btnHome_OnClick" runat="server" />
                    <asp:TextBox ID="TextBox1" Text="" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" Text="Ara" OnClick="btnSrc_OnClick" runat="server"/>
                    <asp:Button ID="Button3" Text="Yazdir" OnClick="btnEGG_OnClick" runat="server" />
            </div>

                <div>
                    <asp:Repeater ID="rptOgrenciler" runat="server">
                        <ItemTemplate>
                            <table class="table table-striped table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">Numara</th>
                                        <th scope="col">Ad</th>
                                        <th scope="col">Soyad</th>
                                        <th scope="col">Öğretim</th>
                                        <th scope="col">Sınıf Bilgisi</th>
                                        <th scope="col">Kurum Adı</th>
                                        <th scope="col">Şehir</th>
                                        <th scope="col">Staj Konusu</th>
                                        <th scope="col">Başlama Tarihi</th>
                                        <th scope="col">Bitiş Tarihi</th>
                                        <th scope="col">Yapılan Gün</th>
                                        <th scope="col">Kabul Edilen Gün</th>
                                        <th scope="col">Değerlendirildi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrNo") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrAd") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrSoyad") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrOgretim") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrSinifBilgisi") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"kurumAdi") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"sehir") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"stajKonusu") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"baslama") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"bitis") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"yapilanGun") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"kabulEdilenGun") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"degerlendirildi") %></td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                            
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
        </header>
    </div>

    </form>
</body>
</html>
