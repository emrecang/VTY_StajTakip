<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bitenler.aspx.cs" Inherits="KtuVeriTabanı.bitenler" %>


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
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
                <a href="index.aspx" type="button" class="btn btn-primary btn-lg">Anasayfa</a>
                <a href="#" style="float: right" type="button" class="btn btn-secondary btn-lg">YAZDIR</a>

            </div>

            <asp:Repeater ID="rptBitenler" runat="server">
                        <ItemTemplate>
                            <table class="table table-striped table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">Numara</th>
                                        <th scope="col">Ad</th>
                                        <th scope="col">Soyad</th>
                                        <th scope="col">Öğretim</th>
                                        <th scope="col">Sınıf Bilgisi</th>
                                        <th scope="col">Toplam Yapılan Gün</th>
                                        <th scope="col">Toplam Kabul Edilen Gün</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrNo") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrAd") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrSoyad") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrOgretim") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ogrSinifBilgisi") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ToplamGun") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"ToplamKabulEdilenGun") %></td>
                                    </tr>
                                </tbody>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
        </header>
    </div>
        </form>
</body>
</html>
