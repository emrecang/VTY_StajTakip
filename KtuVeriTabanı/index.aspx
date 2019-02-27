<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KtuVeriTabanı.index" %>


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
                    <div class="row">
                        <div class="col-md-0" style="margin: 0 auto;">
                             <a type="sumbit" href="student-no-search.aspx" class="btn btn-primary" runat="server">Öğrenci Ara</a> 
                             <a href="add.aspx" class="btn btn-primary">Staj Ekle</a>
                             <a href="bitenler.aspx" class="btn btn-primary">Staj Bitenler</a>
                    </div>
                </div>
             </div>
            </header>

        <main class="main">
            <section class="hero">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6" style="float: none; float: left">
                        </div>
                    </div>
                </div>
            </section>

            <section class="select-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                           <label for="exampleFormControlSelect3">Staj Konusu</label><br />
                                <asp:TextBox ID="konuText" Text="" runat="server" Width="150px"></asp:TextBox>
                                <asp:Button ID="KonuEkle" Text="Ekle" OnClick="btnKonuEkle_OnClick" runat="server"/>
                        </div>

                        <div class="col-md-3">
                                <label for="exampleFormControlSelect3">Şirket Adı</label><br />
                                <asp:TextBox ID="sirketText" Text="" runat="server" Width="150px"></asp:TextBox>
                                <asp:Button ID="sirketEkle" Text="Ekle" OnClick="btnSirketEkle_OnClick" runat="server"/>
                        </div>
                        <div class="col-md-3">
                                <label for="exampleFormControlSelect3">Sehir Adı</label><br />
                                <asp:TextBox ID="sehirText" Text="" runat="server" Width="150px"></asp:TextBox>
                                <asp:Button ID="sehirEkle" Text="Ekle" OnClick="btnSehirEkle_OnClick" runat="server"/>
                        </div>

                        <div class="col-md-3">
                                <label for="exampleFormControlSelect3">Komisyon</label><br />
                                <label for="exampleFormControlSelect3">Ad</label>
                                <asp:TextBox ID="komisyonAdText" Text="" runat="server" Width="150px"></asp:TextBox><br />
                                <label for="exampleFormControlSelect3">Soyad</label>
                                <asp:TextBox ID="komisyonSoyadText" Text="" runat="server" Width="150px"></asp:TextBox>
                                <asp:Button ID="komisyonEkle" Text="Ekle" OnClick="btnKomisyonEkle_OnClick" runat="server"/>
                                <asp:Button ID="komisyonListele" Text="Listele" OnClick="btnKomisyonListele_OnClick" runat ="server" />
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
  </form>
</body>
</html>