USE [ApartmanYonetim]
GO
/****** Object:  StoredProcedure [dbo].[AidatEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[AidatEkle]
(
@UyeId int,
@Tutar float,
@Ay varchar(50)
)
As
Begin
	Insert Into AIDAT (UyeId,Tutar,Ay)
	Values (@UyeId,@Tutar,@Ay)
End
GO
/****** Object:  StoredProcedure [dbo].[AidatGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[AidatGuncelle]
(
@AidatId int,
@UyeId int,
@Tutar float,
@Ay varchar(50)
)
As
Begin
	Update AIDAT set
	UyeId=@UyeId, Tutar=@Tutar, Ay=@Ay
	Where Id=@AidatId
End
GO
/****** Object:  StoredProcedure [dbo].[AidatSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[AidatSil]
(
@AidatId int
)
As
Begin
	Delete AIDAT
	Where Id=@AidatId
End
GO
/****** Object:  StoredProcedure [dbo].[ApartmanCek]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ApartmanCek]
As
Begin
	Select * From APARTMAN
End
GO
/****** Object:  StoredProcedure [dbo].[ApartmanCekTekli]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ApartmanCekTekli]
(
@ApartmanId int
)
As
Begin
	Select * From APARTMAN Where Id=@ApartmanId
End
GO
/****** Object:  StoredProcedure [dbo].[ApartmanEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ApartmanEkle]
(
@YoneticiId int,
@Ad varchar(50),
@ApartmanBlok varchar(50),
@KatSayi int,
@DaireSayi int,
@Aidat float
)
As
Begin
	Insert Into APARTMAN (YoneticiId,Ad,ApartmanBlok,KatSayi,DaireSayi,Aidat)
	Values (@YoneticiId,@Ad,@ApartmanBlok,@KatSayi,@DaireSayi,@Aidat)
End
GO
/****** Object:  StoredProcedure [dbo].[ApartmanGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ApartmanGuncelle]
(
@ApartmanId int,
@YoneticiId int,
@Ad varchar(50),
@ApartmanBlok varchar(50),
@KatSayi int,
@DaireSayi int,
@Aidat float
)
As
Begin
	Update APARTMAN set 
	YoneticiId=@YoneticiId,Ad=@Ad,ApartmanBlok=@ApartmanBlok,KatSayi=@KatSayi,DaireSayi=@DaireSayi,Aidat=@Aidat
	Where Id=@ApartmanId
End
GO
/****** Object:  StoredProcedure [dbo].[ApartmanSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ApartmanSil]
(
@ApartmanId int
)
As
Begin
	Delete APARTMAN Where Id=@ApartmanId
End
GO
/****** Object:  StoredProcedure [dbo].[BireyEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[BireyEkle]
(
@UyeId int,
@AdSoyad varchar(150),
@Yas int
)
As
Begin
	Insert Into BIREY (UyeId,AdSoyad,Yas)
	Values (@UyeId,@AdSoyad,@Yas)
End
GO
/****** Object:  StoredProcedure [dbo].[BireyGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[BireyGuncelle]
(
@BireyId int,
@UyeId int,
@AdSoyad varchar(150),
@Yas int
)
As
Begin
	Update BIREY set
	UyeId=@UyeId, AdSoyad=@AdSoyad, Yas=@Yas
	Where Id=@BireyId
End
GO
/****** Object:  StoredProcedure [dbo].[BireySil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[BireySil]
(
@BireyId int
)
As
Begin
	Delete BIREY Where Id=@BireyId
End
GO
/****** Object:  StoredProcedure [dbo].[BorcEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[BorcEkle]
(
@UyeId int,
@Tarih datetime,
@Durum varchar(50)
)
As
Begin
	Insert Into BORC (UyeId,Tarih,Durum)
	Values(@UyeId,@Tarih,@Durum)
End
GO
/****** Object:  StoredProcedure [dbo].[BorcGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[BorcGuncelle]
(
@BorcId int,
@UyeId int,
@Tarih datetime,
@Durum varchar(50)
)
As
Begin
	Update BORC set
	UyeId=@UyeId, Tarih=@Tarih, Durum=@Durum
	Where Id=@BorcId
End
GO
/****** Object:  StoredProcedure [dbo].[BorcSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[BorcSil]
(
@BorcId int
)
As
Begin
	Delete BORC
	Where Id=@BorcId
End
GO
/****** Object:  StoredProcedure [dbo].[DogalGazEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DogalGazEkle]
(
@BorcId int,
@FaturaId int,
@Tarih datetime,
@SonOdeme datetime,
@Tutar float,
@Durum varchar(50)
)
As
Begin
	Insert Into DOGALGAZ (BorcId,FaturaId,Tarih,SonOdeme,Tutar,Durum)
	Values (@BorcId,@FaturaId,@Tarih,@SonOdeme,@Tutar,@Durum)
End
GO
/****** Object:  StoredProcedure [dbo].[DogalGazGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DogalGazGuncelle]
(
@DogalGazId int,
@BorcId int,
@FaturaId int,
@Tarih datetime,
@SonOdeme datetime,
@Tutar float,
@Durum varchar(50)
)
As
Begin
	Update DOGALGAZ set
	BorcId=@BorcId, FaturaId=@FaturaId, Tarih=@Tarih, SonOdeme=@SonOdeme, Tutar=@Tutar, Durum=@Durum
	Where Id=@DogalGazId
End
GO
/****** Object:  StoredProcedure [dbo].[DogalGazSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DogalGazSil]
(
@DogalGazId int
)
As
Begin
	Delete DOGALGAZ
	Where Id=@DogalGazId
End
GO
/****** Object:  StoredProcedure [dbo].[DuyuruEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DuyuruEkle]
(
@YoneticiId int,
@Baslik varchar(150),
@Metin text
)
As
Begin
	Insert Into DUYURU (YoneticiId,Baslik,Metin)
	Values (@YoneticiId,@Baslik,@Metin)
End
GO
/****** Object:  StoredProcedure [dbo].[DuyuruGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DuyuruGuncelle]
(
@DuyuruId int,
@YoneticiId int,
@Baslik varchar(150),
@Metin text
)
As
Begin
	Update DUYURU set
	YoneticiId=@YoneticiId, Baslik=@Baslik, Metin=@Metin
	Where Id=@DuyuruId
End
GO
/****** Object:  StoredProcedure [dbo].[DuyuruSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DuyuruSil]
(
@DuyuruId int
)
As
Begin
	Delete DUYURU
	Where Id=@DuyuruId
End
GO
/****** Object:  StoredProcedure [dbo].[ElektrikEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ElektrikEkle]
(
@BorcId int,
@FaturaId int,
@Tarih datetime,
@SonOdeme datetime,
@Tutar float,
@Durum varchar(50)
)
As
Begin
	Insert Into ELEKTRIK (BorcId,FaturaId,Tarih,SonOdeme,Tutar,Durum)
	Values (@BorcId,@FaturaId,@Tarih,@SonOdeme,@Tutar,@Durum)
End
GO
/****** Object:  StoredProcedure [dbo].[ElektrikGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ElektrikGuncelle]
(
@ElektrikId int,
@BorcId int,
@FaturaId int,
@Tarih datetime,
@SonOdeme datetime,
@Tutar float,
@Durum varchar(50)
)
As
Begin
	Update ELEKTRIK set
	BorcId=@BorcId, FaturaId=@FaturaId, Tarih=@Tarih, SonOdeme=@SonOdeme, Tutar=@Tutar, Durum=@Durum
	Where Id=@ElektrikId
End
GO
/****** Object:  StoredProcedure [dbo].[ElektrikSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ElektrikSil]
(
@ElektrikId int
)
As
Begin
	Delete ELEKTRIK
	Where Id=@ElektrikId
End
GO
/****** Object:  StoredProcedure [dbo].[GuvenlikEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GuvenlikEkle]
(
@ApartmanId int,
@AdSoyad varchar(150),
@Telefon varchar(50)
)
As
Begin
	Insert Into GUVENLIK (ApartmanId,AdSoyad,Telefon)
	Values (@ApartmanId,@AdSoyad,@Telefon)
End
GO
/****** Object:  StoredProcedure [dbo].[GuvenlikGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GuvenlikGuncelle]
(
@GuvenlikId int,
@ApartmanId int,
@AdSoyad varchar(150),
@Telefon varchar(50)
)
As
Begin
	Update GUVENLIK set
	ApartmanId=@ApartmanId, AdSoyad=@AdSoyad, Telefon=@Telefon
	Where Id=@GuvenlikId
End
GO
/****** Object:  StoredProcedure [dbo].[GuvenlikSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GuvenlikSil]
(
@ApartmanId int
)
As
Begin
	Delete GUVENLIK Where Id=@ApartmanId
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciCek]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciCek]
(
@KullaniciId int
)
As
Begin
	Select * From KULLANICI Where Id=@KullaniciId

End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciCekAd]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciCekAd]
(
@KullaniciId int
)
As
Begin
	Select * From KULLANICI Where Id=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciCekId]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[KullaniciCekId]
(
@KullaniciAd varchar(150)
)
As
Begin
	Select * From KULLANICI Where KullaniciAd=@KullaniciAd
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciDuzenle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciDuzenle]
(
@KullaniciId int,
@Sifre varchar(150),
@AdSoyad varchar(150),
@MailAdres varchar(150),
@Telefon varchar(150),
@DogumTarih datetime,
@Cinsiyet varchar(50),
@MedeniDurum varchar(50)
)
As
Begin
	Update KULLANICI set
	Sifre=@Sifre, AdSoyad=@AdSoyad, MailAdres=@MailAdres, Telefon=@Telefon, DogumTarih=@DogumTarih, Cinsiyet=@Cinsiyet, MedeniDurum=@MedeniDurum
	Where Id=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[KullaniciEkle]
(
@KullaniciAd varchar(150),
@Sifre varchar(150),
@AdSoyad varchar(150),
@MailAdres varchar(150),
@Telefon varchar(150),
@DogumTarih datetime,
@Cinsiyet varchar(50),
@MedeniDurum varchar(50)
)
As

If Exists(Select * From KULLANICI Where KullaniciAd=@KullaniciAd)
	Begin
	Return 'Kullanici Adi daha onceden alinmis'
	End
Else
	Begin
	Insert Into KULLANICI (KullaniciAd,Sifre,AdSoyad,MailAdres,Telefon,DogumTarih,Cinsiyet,MedeniDurum)
	Values (@KullaniciAd,@Sifre,@AdSoyad,@MailAdres,@Telefon,@DogumTarih,@Cinsiyet,@MedeniDurum)
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciGuncelle]
(
@KullaniciId int,
@Sifre varchar(150),
@AdSoyad varchar(150),
@MailAdres varchar(150),
@Telefon varchar(150),
@DogumTarih datetime,
@Cinsiyet varchar(50),
@MedeniDurum varchar(50)
)
As
Begin
	Update KULLANICI set
	Sifre=@Sifre, AdSoyad=@AdSoyad, MailAdres=@MailAdres, Telefon=@Telefon, DogumTarih=@DogumTarih, Cinsiyet=@Cinsiyet, MedeniDurum=@MedeniDurum
	Where Id=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciKontrol]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[KullaniciKontrol]
(
@KullaniciAd varchar(150),
@Sifre varchar(150)
)
As
Begin
	Select * From KULLANICI Where KullaniciAd=@KullaniciAd AND Sifre=@Sifre
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciKontrol2]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[KullaniciKontrol2]
(
@KullaniciId int,
@Sifre varchar(150)
)
As
Begin
	Select * From KULLANICI Where Id=@KullaniciId AND Sifre=@Sifre
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciSil]
(
@KullaniciId int
)
As
Begin
	Delete From KULLANICI Where Id=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[ResimCek]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ResimCek]
(
@KullaniciId int
)
As
Begin
	Select * From RESIM Where KullaniciId=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[ResimEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ResimEkle]
(
@KullaniciId int,
@Ad int
)
As
Begin
	Insert Into RESIM (KullaniciId,Ad)
	Values (@KullaniciId,@Ad)
End
GO
/****** Object:  StoredProcedure [dbo].[ResimGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ResimGuncelle]
(
@KullaniciId int,
@Ad varchar(50)
)
As
Begin
	Update RESIM set
	Ad=@Ad Where KullaniciId=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[SuEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SuEkle]
(
@BorcId int,
@FaturaId int,
@Tarih datetime,
@SonOdeme datetime,
@Tutar float,
@Durum varchar(50)
)
As
Begin
	Insert Into SU(BorcId,FaturaId,Tarih,SonOdeme,Tutar,Durum)
	Values (@BorcId,@FaturaId,@Tarih,@SonOdeme,@Tutar,@Durum)
End
GO
/****** Object:  StoredProcedure [dbo].[SuGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SuGuncelle]
(
@SuId int,
@BorcId int,
@FaturaId int,
@Tarih datetime,
@SonOdeme datetime,
@Tutar float,
@Durum varchar(50)
)
As
Begin
	Update SU set
	BorcId=@BorcId, FaturaId=@FaturaId, Tarih=@Tarih, SonOdeme=@SonOdeme, Tutar=@Tutar, Durum=@Durum
	Where Id=@SuId
End
GO
/****** Object:  StoredProcedure [dbo].[SuSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SuSil]
(
@SuId int
)
As
Begin
	Delete SU
	Where Id=@SuId
End
GO
/****** Object:  StoredProcedure [dbo].[UyeCek]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UyeCek]
(
@UyeId int
)
As
Begin
	Select * From UYE Where Id=@UyeId
End
GO
/****** Object:  StoredProcedure [dbo].[UyeEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UyeEkle]
(
@KullaniciId int,
@ApartmanId int,
@KatNo int,
@DaireNo int
)
As
Begin
	Insert Into UYE (KullaniciId,ApartmanId,KatNo,DaireNo)
	Values (@KullaniciId,@ApartmanId,@KatNo,@DaireNo)
End
GO
/****** Object:  StoredProcedure [dbo].[UyeGuncelle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UyeGuncelle]
(
@UyeId int,
@ApartmanId int,
@KatNo int,
@DaireNo int
)
As
Begin
	Update UYE set
	ApartmanId=@ApartmanId, KatNo=@KatNo, DaireNo=@DaireNo
	Where Id=@UyeId
End
GO
/****** Object:  StoredProcedure [dbo].[UyeSil]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UyeSil]
(
@UyeId int
)
As
Begin
	Delete UYE Where Id=@UyeId
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiCek]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiCek]
As
Begin
	Select * From YONETICI
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiEkle]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiEkle]
(
@KullaniciId int
)
As
Begin
	Insert Into YONETICI (KullaniciId) Values(@KullaniciId)
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiKontrol]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[YoneticiKontrol]
(
@KullaniciId int
)
As
Begin
	Select * From YONETICI Where KullaniciId=@KullaniciId 
End
GO
/****** Object:  Table [dbo].[AIDAT]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AIDAT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UyeId] [int] NULL,
	[Tutar] [float] NULL,
	[Ay] [varchar](50) NULL,
 CONSTRAINT [PK_AIDAT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AIDATAY]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AIDATAY](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AidatId] [int] NOT NULL,
	[Ay] [varchar](50) NULL,
 CONSTRAINT [PK_AIDATAY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[APARTMAN]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[APARTMAN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YoneticiId] [int] NULL,
	[Ad] [varchar](50) NULL,
	[ApartmanBlok] [varchar](50) NULL,
	[KatSayi] [int] NULL,
	[DaireSayi] [int] NULL,
	[Aidat] [float] NULL,
 CONSTRAINT [PK_APARTMAN] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BIREY]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BIREY](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UyeId] [int] NULL,
	[AdSoyad] [varchar](150) NULL,
	[Yas] [int] NULL,
 CONSTRAINT [PK_BIREY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BORC]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BORC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UyeId] [int] NOT NULL,
	[Tarih] [datetime] NULL,
	[Durum] [varchar](50) NULL,
 CONSTRAINT [PK_BORC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOGALGAZ]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOGALGAZ](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BorcId] [int] NULL,
	[FaturaId] [int] NULL,
	[Tarih] [datetime] NULL,
	[SonOdeme] [datetime] NULL,
	[Tutar] [float] NULL,
	[Durum] [varchar](50) NULL,
 CONSTRAINT [PK_DOGALGAZ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DUYURU]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DUYURU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YoneticiId] [int] NULL,
	[Baslik] [varchar](150) NULL,
	[Metin] [text] NULL,
 CONSTRAINT [PK_DUYURU] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ELEKTRIK]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ELEKTRIK](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BorcId] [int] NULL,
	[FaturaId] [int] NULL,
	[Tarih] [datetime] NULL,
	[SonOdeme] [datetime] NULL,
	[Tutar] [float] NULL,
	[Durum] [varchar](50) NULL,
 CONSTRAINT [PK_ELEKTRIK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GUVENLIK]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GUVENLIK](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApartmanId] [int] NULL,
	[AdSoyad] [varchar](150) NULL,
	[Telefon] [varchar](50) NULL,
 CONSTRAINT [PK_GUVENLIK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KULLANICI]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KULLANICI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [varchar](150) NULL,
	[Sifre] [varchar](150) NULL,
	[AdSoyad] [varchar](150) NULL,
	[MailAdres] [varchar](150) NULL,
	[Telefon] [varchar](150) NULL,
	[DogumTarih] [datetime] NULL,
	[Cinsiyet] [varchar](50) NULL,
	[MedeniDurum] [varchar](50) NULL,
 CONSTRAINT [PK_KULLANICI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RESIM]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESIM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NOT NULL,
	[Ad] [int] NULL,
 CONSTRAINT [PK_RESIM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SU]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BorcId] [int] NULL,
	[FaturaId] [int] NULL,
	[Tarih] [datetime] NULL,
	[SonOdeme] [datetime] NULL,
	[Tutar] [float] NULL,
	[Durum] [varchar](50) NULL,
 CONSTRAINT [PK_SU] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UYE]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UYE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NULL,
	[ApartmanId] [int] NULL,
	[KatNo] [int] NULL,
	[DaireNo] [int] NULL,
 CONSTRAINT [PK_UYE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YONETICI]    Script Date: 17.05.2019 04:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YONETICI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NULL,
 CONSTRAINT [PK_YONETICI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AIDAT]  WITH CHECK ADD  CONSTRAINT [FK_AIDAT_UYE] FOREIGN KEY([UyeId])
REFERENCES [dbo].[UYE] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AIDAT] CHECK CONSTRAINT [FK_AIDAT_UYE]
GO
ALTER TABLE [dbo].[BIREY]  WITH CHECK ADD  CONSTRAINT [FK_BIREY_UYE] FOREIGN KEY([UyeId])
REFERENCES [dbo].[UYE] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BIREY] CHECK CONSTRAINT [FK_BIREY_UYE]
GO
ALTER TABLE [dbo].[BORC]  WITH CHECK ADD  CONSTRAINT [FK_BORC_UYE] FOREIGN KEY([UyeId])
REFERENCES [dbo].[UYE] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BORC] CHECK CONSTRAINT [FK_BORC_UYE]
GO
ALTER TABLE [dbo].[DOGALGAZ]  WITH CHECK ADD  CONSTRAINT [FK_DOGALGAZ_BORC] FOREIGN KEY([BorcId])
REFERENCES [dbo].[BORC] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DOGALGAZ] CHECK CONSTRAINT [FK_DOGALGAZ_BORC]
GO
ALTER TABLE [dbo].[DUYURU]  WITH CHECK ADD  CONSTRAINT [FK_DUYURU_YONETICI1] FOREIGN KEY([YoneticiId])
REFERENCES [dbo].[YONETICI] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DUYURU] CHECK CONSTRAINT [FK_DUYURU_YONETICI1]
GO
ALTER TABLE [dbo].[ELEKTRIK]  WITH CHECK ADD  CONSTRAINT [FK_ELEKTRIK_BORC] FOREIGN KEY([BorcId])
REFERENCES [dbo].[BORC] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ELEKTRIK] CHECK CONSTRAINT [FK_ELEKTRIK_BORC]
GO
ALTER TABLE [dbo].[GUVENLIK]  WITH CHECK ADD  CONSTRAINT [FK_GUVENLIK_APARTMAN] FOREIGN KEY([ApartmanId])
REFERENCES [dbo].[APARTMAN] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GUVENLIK] CHECK CONSTRAINT [FK_GUVENLIK_APARTMAN]
GO
ALTER TABLE [dbo].[RESIM]  WITH CHECK ADD  CONSTRAINT [FK_RESIM_KULLANICI] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[KULLANICI] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RESIM] CHECK CONSTRAINT [FK_RESIM_KULLANICI]
GO
ALTER TABLE [dbo].[SU]  WITH CHECK ADD  CONSTRAINT [FK_SU_BORC] FOREIGN KEY([BorcId])
REFERENCES [dbo].[BORC] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SU] CHECK CONSTRAINT [FK_SU_BORC]
GO
ALTER TABLE [dbo].[UYE]  WITH CHECK ADD  CONSTRAINT [FK_UYE_APARTMAN] FOREIGN KEY([ApartmanId])
REFERENCES [dbo].[APARTMAN] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UYE] CHECK CONSTRAINT [FK_UYE_APARTMAN]
GO
ALTER TABLE [dbo].[UYE]  WITH CHECK ADD  CONSTRAINT [FK_UYE_KULLANICI] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[KULLANICI] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UYE] CHECK CONSTRAINT [FK_UYE_KULLANICI]
GO
ALTER TABLE [dbo].[YONETICI]  WITH CHECK ADD  CONSTRAINT [FK_YONETICI_KULLANICI] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[KULLANICI] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YONETICI] CHECK CONSTRAINT [FK_YONETICI_KULLANICI]
GO
