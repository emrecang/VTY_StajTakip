<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="KtuVeriTabanı.add" %>

        
<!DOCTYPE html>
<style type="text/css">
    .auto-style1 {
        width: 90px;
    }
</style>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ödev</title>
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
                    <asp:Button ID="ButtonHome2" Text="Anasayfa" OnClick="btnHome_OnClick2" runat="server" />
            </div>
        </header>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-8 order-md-1">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <br/>
                            <label for="firstName">Ad </label>
                            <asp:TextBox ID="ogrenciAd" Text="" runat="server" Width="110px"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <br/>
                            <label for="lastName">Soyad </label>
                            <asp:TextBox ID="ogrenciSoyad" Text="" runat="server" Width="110px"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="address">Öğrenci No </label>
                        <asp:TextBox ID="ogrenciNo" Text="" runat="server" Width="110px"></asp:TextBox>
                        <asp:Label ID="label5" Text="" runat="server"></asp:Label>
                    </div>
                <div class="mb-3">
                        <label for="address">Öğretim </label>
                        <asp:TextBox ID="ogrenciOgretim" Text="" runat="server" Width="110px"></asp:TextBox>
                    </div>
                <div class="mb-3">
                        <label for="address">Sınıf Bilgisi </label>
                        <asp:TextBox ID="ogrenciSinif" Text="" runat="server" Width="110px"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="address2">Yapılan Gün </label>
                        <asp:TextBox ID="ogrenciYGun" Text="" runat="server" Width="110px"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                            <label for="address2">Kabul Edilen Gün</label>
                            <asp:TextBox ID="ogrenciKGun" Text="" runat="server" Width="110px"></asp:TextBox>
                         <label for="address2">(Boş Bırakılabilir.) </label>
                        </div>
                    <div class="mb-3">
                        <label for="bdate">Başlama Tarihi </label>
                        <asp:Calendar ID="datePickerBa"  runat="server" OnSelectionChanged="DateChangeBa" Visible="false" ShowGridLines="True">
                            <OtherMonthDayStyle ForeColor="#999999" />
                        </asp:Calendar>
                        <asp:TextBox ID="ogrenciBaTarih" Text="" runat="server" Width="110px"></asp:TextBox>
                        <asp:LinkButton ID="lpdBa" runat="server" OnClick="lpdBa_Click">Tarihi Al</asp:LinkButton>
                    </div>
                    <div class="mb-3">
                        <label for="bdate">Bitiş Tarihi </label>
                        <asp:Calendar ID="datePickerBi"  runat="server" OnSelectionChanged="DateChangeBi" Visible="false" ShowGridLines="True">
                            <OtherMonthDayStyle ForeColor="#999999" />
                        </asp:Calendar>
                        <asp:TextBox ID="ogrenciBiTarih" Text="" runat="server" Width="110px"></asp:TextBox>
                        <asp:LinkButton ID="lnkpickdate" runat="server" OnClick="lnkpickdate_Click">Tarihi Al</asp:LinkButton>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label for="country">Şehir Adı</label>
                            <asp:TextBox ID="sehirAdi" Text="" runat="server" Width="110px"></asp:TextBox>
                            <asp:Label ID="label4" Text="" runat="server"></asp:Label>
                            <table >
                                    <tr>
                                        <td>
                                             <asp:DropDownList id="SehirList" runat="server" Width="90px"></asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                             <asp:Button ID="secButton" Text="Seç" OnClick="btnSehirSec_OnClick" runat="server" />
                        </div>

                        <div class="col-md-3 mb-3">
                            <label for="state">Kurum Adı</label>
                            <asp:TextBox ID="kurum" Text="" runat="server" Width="110px"></asp:TextBox>
                            <asp:Label ID="label3" Text="" runat="server"></asp:Label>
                            <table >
                                    <tr>
                                        <td>
                                             <asp:DropDownList id="kurumList" runat="server" Width="90px"></asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            <asp:Button ID="kurumSec" Text="Seç" OnClick="btnKurumSec_OnClick" runat="server" />
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="state" class="">Staj Konusu</label>
                                 <asp:TextBox ID="konuAdi" Text="" runat="server" Width="110px"></asp:TextBox>
                                <asp:Label ID="label2" Text="" runat="server"></asp:Label>
                                <table >
                                    <tr>
                                        <td class="auto-style1">
                                             <asp:DropDownList id="konuAdiList" runat="server" Width="90px"></asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            <asp:Button ID="konuSec" Text="Seç" OnClick="btnKonuSec_OnClick" runat="server" />
                        </div>
                    </div>
                <section class="select-section">
            </section>
                    <hr class="mb-4">
                    
                    <asp:Button ID="kaydet" Text="Kaydet" OnClick="btnKaydet_OnClick" runat="server" Height="50px" Width="350px" />
                    <asp:Label ID="label1" Text="" runat="server"></asp:Label>

            </div>
        </div>
    </div>
  </form>
</body>
</html>
