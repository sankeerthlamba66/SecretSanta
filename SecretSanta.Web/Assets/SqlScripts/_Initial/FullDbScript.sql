USE [master]
GO
/****** Object:  Database [secret_santa]    Script Date: 29-12-2021 18:37:52 ******/
CREATE DATABASE [secret_santa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'secret_santa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\secret_santa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'secret_santa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\secret_santa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [secret_santa] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [secret_santa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [secret_santa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [secret_santa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [secret_santa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [secret_santa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [secret_santa] SET ARITHABORT OFF 
GO
ALTER DATABASE [secret_santa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [secret_santa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [secret_santa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [secret_santa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [secret_santa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [secret_santa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [secret_santa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [secret_santa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [secret_santa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [secret_santa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [secret_santa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [secret_santa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [secret_santa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [secret_santa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [secret_santa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [secret_santa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [secret_santa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [secret_santa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [secret_santa] SET  MULTI_USER 
GO
ALTER DATABASE [secret_santa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [secret_santa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [secret_santa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [secret_santa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [secret_santa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [secret_santa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [secret_santa] SET QUERY_STORE = OFF
GO
USE [secret_santa]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 29-12-2021 18:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[employee_number] [varchar](50) NOT NULL,
	[employee_name] [varchar](50) NOT NULL,
	[date_of_joining] [varchar](50) NULL,
	[entity] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[santa_number] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (1, N'1006V', N'Paka Sai Krishna', N'12-Jan-18', N'Vivifi', N'8143523245', N'saikrishna.paka@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (2, N'2011V', N'Bandarapu Rose Mary', N'25-Jun-18', N'Vivifi', N'9000369845', N'rosemary.bandarapu@flexsalary.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (3, N'1014V', N'Abdul Shaji', N'25-Jul-18', N'Vivifi', N'8977866989', N'abdul.shaji@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (4, N'1029V', N'Pasumarthi Mounika', N'26-Dec-18', N'Vivifi', N'8985902230', N'pasumarthi.mounika@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (5, N'1035V', N'Sayeeda Reshma Begum', N'21-Jan-19', N'Vivifi', N'8142592056', N'sayeeda.reshmabegum@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (6, N'1005V', N'Prameela Kassetti', N'01-Mar-19', N'Vivifi', N'9640253640', N'prameela.kassetti@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (7, N'2006V', N'Sai Krishna Paka', N'01-Mar-19', N'Vivifi', N'8143523245', N'saikrishna.paka@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (8, N'1011V', N'Rose Mary Bandaru', N'01-Mar-19', N'Vivifi', N'9000369845', N'rosemary.bandarapu@flexsalary.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (9, N'2014V', N'Shaji Abdul', N'01-Mar-19', N'Vivifi', N'8977866989', N'abdul.shaji@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (10, N'1016V', N'Abdul Mohammad', N'01-Mar-19', N'Vivifi', N'8790958718', N'mohammed.abdulkhader@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (11, N'1018V', N'Balaji Pawar', N'01-Mar-19', N'Vivifi', N'7207245922', N'balaji.pawar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (12, N'1032V', N'Gunnala Vineeth', N'01-Mar-19', N'Vivifi', N'8801985262', N'gunnala.vineeth@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (13, N'1038V', N'Prakash Rajan', N'01-Mar-19', N'Vivifi', N'9840786153', N'prakash.rajan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (14, N'1474V', N'Mosam Manvitha', N'01-Mar-19', N'Vivifi', N'9154579477', N'panga.ranjithreddy@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (15, N'1043V', N'Tarun Sreevardhan', N'27-May-19', N'Vivifi', N'8500282804', N'tarun.pushadapu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (16, N'1057V', N'Pramod Kumar Sakinala', N'27-May-19', N'Vivifi', N'7995423282', N'pramod.sakinala@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (17, N'1059V', N'Nishanth Vaddaman', N'06-Jun-19', N'Vivifi', N'6303610774', N'vaddaman.nishanth@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (18, N'1070V', N'Pravallika Desani', N'29-Jul-19', N'Vivifi', N'8501082525', N'pravallika.reddy@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (19, N'1073V', N'Karan Kolupuu', N'14-Aug-19', N'Vivifi', N'6300144823', N'kolupula.karan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (20, N'1075V', N'Chandrakanth Tiwari', N'27-Aug-19', N'Vivifi', N'9885933121', N'chandrakanth.tiwari@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (21, N'1077V', N'James Raj J', N'03-Sep-19', N'Vivifi', N'9705900515', N'j.jamesraj@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (22, N'1080V', N'Sukhmani Walia', N'16-Oct-19', N'Vivifi', N'7508933878', N'sukhmani.walia@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (23, N'1081V', N'Vinod Kumar Badham', N'25-Oct-19', N'Vivifi', N'8106378045', N'vinod.k@flexsalary.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (24, N'1084V', N'Teja Mani Sai Maddu', N'22-Nov-19', N'Vivifi', N'6300012030', N'tejamani.sai@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (25, N'1088V', N'Nitesh Supatkar', N'18-Dec-19', N'Vivifi', N'9908346174', N'nitesh.supatkar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (26, N'1089V', N'Shravalika Chinumula', N'03-Jan-20', N'Vivifi', N'8465868916', N'chinumula.shravalika@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (27, N'1093V', N'Chaitanya Munukuntla', N'28-Jan-20', N'Vivifi', N'8985150495', N'munukuntla.chaitanya@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (28, N'1097V', N'Syamsundhara Rao Chinthada', N'05-Feb-20', N'Vivifi', N'7989465271', N'ch.syamasundara@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (29, N'1100V', N'Elisha Ratna Kumar', N'13-Jul-20', N'Vivifi', N'8309658711', N'ratnakumar.elisha@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (30, N'1103V', N'Ganga Rath', N'07-Sep-20', N'Vivifi', N'9868582161', N'ganga.ratha@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (31, N'1119V', N'Avanthi Nallamekala', N'15-Mar-21', N'Vivifi', N'8978365824', N'nallamekala.avanthi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (32, N'1124V', N'Bhavitha Thummeti', N'23-Mar-21', N'Vivifi', N'8247092305', N'thummeti.bhavitha@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (33, N'1127V', N'Faiz Ahmed Maniyar', N'23-Mar-21', N'Vivifi', N'8978157181', N'faizahmed.maniyar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (34, N'1133V', N'Paiyeddu Aneesha', N'23-Apr-21', N'Vivifi', N'7730075038', N'paiyeddu.aneesha@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (35, N'1132V', N'Siraj Fatima Fatima', N'23-Apr-21', N'Vivifi', N'6281914618', N'siraj.fatima@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (36, N'1160V', N'Mireskar Mounika', N'23-Jun-21', N'Vivifi', N'8106090355', N'monika.antony@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (37, N'1159V', N'Udatha Penchala Divya', N'01-Jul-21', N'Vivifi', N'9705099297', N'penchala.divya@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (38, N'1193V', N'Nadimidoddi Sangeetha Sri', N'01-Jul-21', N'Vivifi', N'8008156265', N'nadimidoddi.sangeethasri@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (39, N'1194V', N'Ch.Sai Rama Krishna', N'01-Jul-21', N'Vivifi', N'9000502134', N'sai.ramakrishna@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (40, N'1195V', N'P.Sravan', N'01-Jul-21', N'Vivifi', N'8143150296', N'p.sravan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (41, N'1198V', N'Imam Ul Faiz Kohir', N'01-Jul-21', N'Vivifi', N'9035249123', N'imamulfaiz.kohir@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (42, N'1199V', N'Srikanth Naik', N'01-Jul-21', N'Vivifi', N'7893003094', N'srikanth.naik@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (43, N'1202V', N'Naveen Kumar Mayakala', N'01-Jul-21', N'Vivifi', N'8519990261', N'mayakala.naveenkumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (44, N'1203V', N'Suresh Vijay Kumar', N'01-Jul-21', N'Vivifi', N'9606818242', N'suresh.vijaykumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (45, N'1205V', N'Gangadhar N.', N'01-Jul-21', N'Vivifi', N'9743294239', N'gangadhar.n@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (46, N'1206V', N'Laxman Ghavane', N'01-Jul-21', N'Vivifi', N'8956069703', N'laxman.ghavane@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (47, N'1207V', N'Ambadas Devkathe', N'01-Jul-21', N'Vivifi', N'9182516279', N'ambadas.devkathe@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (48, N'1209V', N'Sumalatha K', N'01-Jul-21', N'Vivifi', N'9704991480', N'kondavena.sumalatha@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (49, N'1210V', N'Aala Mohan Rao', N'01-Jul-21', N'Vivifi', N'9490432810', N'mohanrao.aala@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (50, N'1212V', N'Shaik Shakhaz', N'01-Jul-21', N'Vivifi', N'7207469488', N'shaik.shakhaz@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (51, N'1213V', N'Yalala Shyam Sundar', N'01-Jul-21', N'Vivifi', N'6303741497', N'shyamsundar.yalala@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (52, N'1214V', N'Cilguri Kamala Karuna', N'01-Jul-21', N'Vivifi', N'7286808382', N'cilguri.kamalakaruna@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (53, N'1174V', N'M Praveen Kumar', N'06-Jul-21', N'Vivifi', N'7790010885', N'praveen.kumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (54, N'1190V', N'Mohammed Sumair Uddin', N'06-Jul-21', N'Vivifi', N'9959218293', N'mohammed.sumair@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (55, N'1167V', N'Suman Mantri', N'09-Jul-21', N'Vivifi', N'9986961616', N'suman.mantri@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (56, N'1166V', N'Shahid Rizwan', N'12-Jul-21', N'Vivifi', N'7097054593', N'mohammadshahid.rizwan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (57, N'1168V', N'Amir', N'12-Jul-21', N'Vivifi', N'9966636906', N'mohammed.amir@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (58, N'1216V', N'Syeda Rafath Unnisa', N'12-Jul-21', N'Vivifi', N'8639668434', N'syedarafath.unnisa@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (59, N'1171V', N'Pendyala Roja', N'19-Jul-21', N'Vivifi', N'9676064089', N'proja.anand@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (60, N'1172V', N'Kammalapelly Sowjanya', N'19-Jul-21', N'Vivifi', N'8688968391', N'k.sowjanya@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (61, N'1215V', N'V Venkata Kishore', N'20-Jul-21', N'Vivifi', N'9030044374', N'venkata.kishore@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (62, N'1178V', N'Dasari Bala Venkata Kasi Naidu', N'26-Jul-21', N'Vivifi', N'8096750131', N'dasari.kasinaidu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (63, N'1184V', N'Eslavath Srikanth Nayak', N'26-Jul-21', N'Vivifi', N'9989564730', N'eslavath.srikanthnayak@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (64, N'1189V', N'Sanna Unnisa', N'26-Jul-21', N'Vivifi', N'9398055064', N'sana.unnisa@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (65, N'1191V', N'Dudekula Sharif', N'26-Jul-21', N'Vivifi', N'8978793807', N'dudekula.sharif@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (66, N'1180V', N'Kaluvala Nisha', N'26-Jul-21', N'Vivifi', N'8688053417', N'kaluvala.nisha@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (67, N'1231V', N'Mohd Sibquath Ullah Khan', N'30-Jul-21', N'Vivifi', N'', N'sibquath.ullahkhan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (68, N'1220V', N'Shaik Ayesha Begum', N'30-Jul-21', N'Vivifi', N'', N'ayesha.begum@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (69, N'1236V', N'Ashodha Poornachander', N'06-Aug-21', N'Vivifi', N'', N'ashodha.poornachander@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (70, N'1237V', N'Bavojula Balakrishna', N'06-Aug-21', N'Vivifi', N'', N'bavojula.balakrishna@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (71, N'1227V', N'Manoj Kumar Adulapuram', N'07-Aug-21', N'Vivifi', N'', N'manoj.adulapuram@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (72, N'1282V', N'Dabeda Srinivas', N'07-Aug-21', N'Vivifi', N'9491025249', N'dabeda.srinivas@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (73, N'1239V', N'Mohammad Tasleem', N'09-Aug-21', N'Vivifi', N'', N'mohammad.tasleem@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (74, N'1240V', N'Tirunagari Swetha', N'11-Aug-21', N'Vivifi', N'', N'swetha.tirunagari@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (75, N'1243V', N'Gurivinda Hari', N'13-Aug-21', N'Vivifi', N'7799461997', N'gurivunda.hari@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (76, N'1246V', N'Bandari Ramu', N'16-Aug-21', N'Vivifi', N'9642001220', N'bandari.ramu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (77, N'1247V', N'C Shiva Kumar Yadav', N'18-Aug-21', N'Vivifi', N'6309745595', N'shivakumar.yadav@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (78, N'1249V', N'Ramagiri Sathish', N'20-Aug-21', N'Vivifi', N'8125031945', N'ramagiri.satish@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (79, N'1250V', N'Doke Ravi', N'20-Aug-21', N'Vivifi', N'9550451488', N'ravi.doke@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (80, N'1255V', N'Chavan Lavanya', N'21-Aug-21', N'Vivifi', N'', N'lavanya.chavan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (81, N'1256V', N'Hari Krishna', N'23-Aug-21', N'Vivifi', N'9700275586', N'hari.krishna@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (82, N'1263V', N'G Krishna Prabhakar Tharshya', N'24-Aug-21', N'Vivifi', N'7416908911', N'krishna.prabhakar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (83, N'1270V', N'U M Shanti Kiran', N'27-Aug-21', N'Vivifi', N'8374774296', N'shanti.kiran@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (84, N'1273V', N'Prem Singh Rathod', N'01-Sep-21', N'Vivifi', N'9985494344', N'premsingh.rathod@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (85, N'1275V', N'Muga Srikanth', N'01-Sep-21', N'Vivifi', N'9133298086', N'muga.srikanth@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (86, N'1277V', N'Aroka David Joseph', N'01-Sep-21', N'Vivifi', N'8801867930', N'david.joseph@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (87, N'1308V', N'Prashanth Perumandla', N'01-Sep-21', N'Vivifi', N'9885535375', N'prashanth.perumandla@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (88, N'1325V', N'B Narsing Rao', N'01-Sep-21', N'Vivifi', N'7032166374', N'narsing.rao@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (89, N'1345V', N'M Veena', N'01-Sep-21', N'Vivifi', N'', N'moturi.veena@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (90, N'1346V', N'Thakur Pratap', N'01-Sep-21', N'Vivifi', N'', N'thakurpratap.singh@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (91, N'1283V', N'Aiandala Deepika', N'03-Sep-21', N'Vivifi', N'6303196217', N'aiandala.deepika@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (92, N'1289V', N'Dipika Ghosh', N'03-Sep-21', N'Vivifi', N'8374006856', N'dipika.ghosh@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (93, N'1290V', N'Govindraj Hari Kiran', N'03-Sep-21', N'Vivifi', N'8977467394', N'govindraj.harikiran@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (94, N'1291V', N'T Vinay Kumar', N'03-Sep-21', N'Vivifi', N'8688856133', N'vinay.kumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (95, N'1292V', N'Singaram Arvind', N'03-Sep-21', N'Vivifi', N'9052926060', N'singaram.arvind@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (96, N'1293V', N'A R Uday Kumar', N'06-Sep-21', N'Vivifi', N'9700503195', N'ar.udaykumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (97, N'1294V', N'Shaik Saddam Hussain', N'06-Sep-21', N'Vivifi', N'8885208626', N'shaik.saddamhussain@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (98, N'1295V', N'Shamsa Sultan', N'06-Sep-21', N'Vivifi', N'8143205830', N'shamsa.sultan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (99, N'1296V', N'Mohammad Nasreen', N'06-Sep-21', N'Vivifi', N'6281512225', N'mohammad.nasreen@vivifin.com', NULL)
GO
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (100, N'1297V', N'Rabinarayan Mohanty', N'06-Sep-21', N'Vivifi', N'7008375772', N'rabinarayan.mohanty@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (101, N'1301V', N'Shaik Heena', N'07-Sep-21', N'Vivifi', N'9989150374', N'shaik.heena@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (102, N'1328V', N'Soumi Das', N'07-Sep-21', N'Vivifi', N'8328143975', N'soumi.das@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (103, N'1317V', N'Papun Kumar Behra', N'09-Sep-21', N'Vivifi', N'7328868942', N'papunkumar.behera@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (104, N'1335V', N'Keti Deepak', N'09-Sep-21', N'Vivifi', N'', N'deepak.keti@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (105, N'1336V', N'Mohammed Abbas Khan', N'09-Sep-21', N'Vivifi', N'', N'abbas.khan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (106, N'1285V', N'Konduri Manikantan', N'11-Sep-21', N'Vivifi', N'8885077741', N'konduri.manikantan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (107, N'1338V', N'Jitu Behera', N'14-Sep-21', N'Vivifi', N'', N'jitu.behera@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (108, N'1314V', N'K Vijay Kumar Reddy', N'16-Sep-21', N'Vivifi', N'7396013908', N'vijaykumar.reddy@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (109, N'1315V', N'Grandhi Sai Lakshmi Sowmya', N'16-Sep-21', N'Vivifi', N'9291291633', N'lakshmisowmya.g@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (110, N'1307V', N'Yerra Manojnetham', N'18-Sep-21', N'Vivifi', N'9642189215', N'yerra.manojnetham@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (111, N'1311V', N'Gopichand Valeti', N'18-Sep-21', N'Vivifi', N'8096224093', N'gopichand.valeti@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (112, N'1309V', N'Ummadisetty Venu', N'20-Sep-21', N'Vivifi', N'9985652528', N'ummadisetty.venu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (113, N'1354V', N'Gallivilli Sony', N'21-Sep-21', N'Vivifi', N'8523871437', N'g.sony@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (114, N'1331V', N'Sri Ramoju Kusuma', N'22-Sep-21', N'Vivifi', N'7981104499', N'sriramoju.kusuma@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (115, N'1349V', N'Sanmitha Thakur', N'24-Sep-21', N'Vivifi', N'9346908016', N'sanmitha.thakur@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (116, N'1350V', N'Pratee Sruti Swain', N'24-Sep-21', N'Vivifi', N'8498078186', N'srutiswain.pratee@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (117, N'1351V', N'Vishal Mishra', N'24-Sep-21', N'Vivifi', N'7680044380', N'vishal.mishra@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (118, N'1352V', N'Gaikawad Manoj', N'24-Sep-21', N'Vivifi', N'7569506676', N'manoj.gaikawad@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (119, N'1353V', N'Mohammed Irfan', N'27-Sep-21', N'Vivifi', N'9160109600', N'mohammed.irfan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (120, N'1358V', N'Rasamalla Mallikarjun Yadav', N'04-Oct-21', N'Vivifi', N'9989633663', N'rasamalla.mallikarjunyadav@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (121, N'1359V', N'Jayanti Deep', N'04-Oct-21', N'Vivifi', N'8143728536', N'jayanti.deep@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (122, N'1361V', N'Vembadi Anil', N'04-Oct-21', N'Vivifi', N'9703121653', N'vembadi.anil@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (123, N'1363V', N'Koppu Revathy', N'04-Oct-21', N'Vivifi', N'6304750063', N'koppu.revathy@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (124, N'1364V', N'Feroz Ahmed Ganie', N'04-Oct-21', N'Vivifi', N'9149601471', N'ferozahmed.ganie@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (125, N'1365V', N'Syed Mohib Husssaain', N'04-Oct-21', N'Vivifi', N'8328529817', N'syedmohib.husssaain@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (126, N'1367V', N'Mohammed Imran', N'04-Oct-21', N'Vivifi', N'7097003067', N'mohammed.imran@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (127, N'1369V', N'Mohammed Sarfraz Nawaz', N'04-Oct-21', N'Vivifi', N'7207614417', N'mohammed.sarfraznawaz@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (128, N'1370V', N'Mohammed Abdul Samad', N'04-Oct-21', N'Vivifi', N'8897091772', N'mohammed.abdulsamad@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (129, N'1372V', N'Ghouse Ahmed', N'04-Oct-21', N'Vivifi', N'8019735506', N'ghouse.ahmed@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (130, N'1381V', N'Jula Vinay Babu', N'04-Oct-21', N'Vivifi', N'9515128971', N'jula.vinaybabu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (131, N'1373V', N'M A Rahman', N'05-Oct-21', N'Vivifi', N'7097085171', N'ma.rahman@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (132, N'1375V', N'Eari Lenina', N'07-Oct-21', N'Vivifi', N'9392996494', N'eari.lenina@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (133, N'1377V', N'Geetha M', N'11-Oct-21', N'Vivifi', N'6362968247', N'geetha.m@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (134, N'1378V', N'Santha Kumari Gumma', N'11-Oct-21', N'Vivifi', N'7981677858', N'santhakumari.gumma@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (135, N'1379V', N'Priyanka Choudhary', N'11-Oct-21', N'Vivifi', N'7995411256', N'priyanka.choudhary@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (136, N'1380V', N'Gunde Shiva', N'11-Oct-21', N'Vivifi', N'8179024442', N'gunde.shiva@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (137, N'1383V', N'Kondeti Shruthi', N'21-Oct-21', N'Vivifi', N'9133488973', N'kondeti.shruthi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (138, N'1384V', N'Jala Srinidhi', N'21-Oct-21', N'Vivifi', N'8096858421', N'jala.srinidhi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (139, N'1385V', N'Shubham Uikey', N'22-Oct-21', N'Vivifi', N'9860997131', N'shubham.uikey@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (140, N'1386V', N'Mohit Muchhoriya', N'22-Oct-21', N'Vivifi', N'8983536112', N'mohit.muchhoriya@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (141, N'1389V', N'Niroodi Shyam Sundar', N'25-Oct-21', N'Vivifi', N'9866139672', N'niroodi.shyamsundar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (142, N'1390V', N'Utkarsh Kumar', N'25-Oct-21', N'Vivifi', N'8507735941', N'utkarsh.kumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (143, N'1406V', N'Chavva Meghana', N'25-Oct-21', N'Vivifi', N'9553863281', N'chavva.meghana@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (144, N'1394V', N'Shaik Manisha', N'26-Oct-21', N'Vivifi', N'7981971769', N'shaik.manisha@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (145, N'1396V', N'Manoj Ravipati', N'28-Oct-21', N'Vivifi', N'9063680994', N'manoj.ravipati@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (146, N'1397V', N'Shaik Khasim', N'28-Oct-21', N'Vivifi', N'9652539341', N'shaik.khasim@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (147, N'1398V', N'Pankaj Kumar Samal', N'28-Oct-21', N'Vivifi', N'9700918860', N'pankajkumar.samal@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (148, N'1400V', N'Dipanshu Durgesh Singh', N'29-Oct-21', N'Vivifi', N'7666436065', N'dipanshu.singh@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (149, N'1402V', N'Samala Sai Vamshi', N'29-Oct-21', N'Vivifi', N'8184813102', N'samala.saivamshi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (150, N'1403V', N'Rajmouli Bhoomika', N'29-Oct-21', N'Vivifi', N'9398158674', N'rajmouli.bhoomika@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (151, N'1405V', N'Hrishikesh Kumar', N'29-Oct-21', N'Vivifi', N'9652281642', N'Hrishikesh.Kumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (152, N'1414V', N'Malvin M S', N'29-Oct-21', N'Vivifi', N'8129874424', N'malvin.ms@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (153, N'1410V', N'D Abdul Shajahan', N'01-Nov-21', N'Vivifi', N'8331814020', N'd.abdulshajahan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (154, N'1411V', N'Modugu Kanne Babu', N'01-Nov-21', N'Vivifi', N'9985113253', N'modugu.kannebabu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (155, N'1412V', N'Shaik Uzma', N'01-Nov-21', N'Vivifi', N'6309851123', N'shaik.uzma@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (156, N'1413V', N'Kummagiri Sri Lakshmi', N'01-Nov-21', N'Vivifi', N'9603072481', N'kummagiri.srilakshmi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (157, N'1415V', N'A Karan', N'03-Nov-21', N'Vivifi', N'8019077458', N' a.karan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (158, N'1430V', N'Itham Shalini', N'03-Nov-21', N'Vivifi', N'9059729223', N'Itham.Shalini@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (159, N'1434V', N'Kabeer Khan', N'03-Nov-21', N'Vivifi', N'8309536856', N'kabeer.khan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (160, N'1435V', N'Mohd Junaid Ali', N'03-Nov-21', N'Vivifi', N'9398605897', N'mohdjunaid.ali@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (161, N'1436V', N'P. Bhaskar Naidu', N'03-Nov-21', N'Vivifi', N'8179972883', N'p.bhaskarnaidu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (162, N'1437V', N'Ch. Srikanth', N'03-Nov-21', N'Vivifi', N'6304088857', N'ch.srikanth@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (163, N'1417V', N'Syed Abdul Raqheeb', N'05-Nov-21', N'Vivifi', N'7981002567', N'syedabdul.raqheeb@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (164, N'1455V', N'Faisal Khan', N'05-Nov-21', N'Vivifi', N'9392859503', N'faisal.khan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (165, N'1418V', N'Md Noor Basar', N'08-Nov-21', N'Vivifi', N'7002781657', N'mdnoor.basar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (166, N'1419V', N'Mohammed Moizuddin', N'08-Nov-21', N'Vivifi', N'9703237080', N'mohammed.moizuddin@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (167, N'1420V', N'Jai Kumar Goud', N'08-Nov-21', N'Vivifi', N'9666819003', N'jaikumar.goud@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (168, N'1421V', N'Dhananjay Balaji Garud', N'08-Nov-21', N'Vivifi', N'9075373609', N'Dhananjay.BalajiGarud@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (169, N'1422V', N'Yeddu Varun Yadav', N'08-Nov-21', N'Vivifi', N'9652334961', N'yeddu.varunyadav@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (170, N'1427V', N'Donthu Reddy Mahesh', N'08-Nov-21', N'Vivifi', N'8520869415', N'donthu.maheshreddy@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (171, N'1428V', N'Marupaka Balakishan', N'08-Nov-21', N'Vivifi', N'8897575892', N'balakishan.marupaka@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (172, N'1446V', N'B Vishal Kumar', N'08-Nov-21', N'Vivifi', N'8309166203', N'b.vishalkumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (173, N'1431V', N'Feroz Ahmed', N'09-Nov-21', N'Vivifi', N'8050976139', N'feroz.ahmed@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (174, N'1432V', N'Dandu Arun', N'09-Nov-21', N'Vivifi', N'8309779948', N'dandu.arun@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (175, N'1433V', N'Taneeru Sriramulu', N'09-Nov-21', N'Vivifi', N'6300188958', N'taneeru.sriramulu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (176, N'1438V', N'Mohd Arfath', N'09-Nov-21', N'Vivifi', N'7386542382', N'mohd.arfath@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (177, N'1448V', N'Arun Kumar Goud', N'11-Nov-21', N'Vivifi', N'9346029734', N'arunkumar.goud@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (178, N'1449V', N'Mohd Ismail Faizam', N'11-Nov-21', N'Vivifi', N'7013908640', N'mohdismail.faizam@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (179, N'1452V', N'Praveen Kumar L S', N'12-Nov-21', N'Vivifi', N'8123037393', N'praveenkumar.ls@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (180, N'1453V', N'Velishala Sai Srujan', N'12-Nov-21', N'Vivifi', N'9704117962', N'velishala.saisrujan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (181, N'1457V', N'Bathina Bhargav Sai', N'16-Nov-21', N'Vivifi', N'9985117020', N'neha.sultana@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (182, N'1458V', N'Abbagochi Vyshnavi', N'16-Nov-21', N'Vivifi', N'8688295947', N'abbagochi.vyshnavi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (183, N'1460V', N'Zeba Begum', N'23-Nov-21', N'Vivifi', N'7569263381', N'zeba.begum@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (184, N'1465V', N'Rajkumar Samal', N'25-Nov-21', N'Vivifi', N'9701336673', N'rajkumar.samal@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (185, N'1466V', N'Mohd Hasham', N'26-Nov-21', N'Vivifi', N'', N'mohd.hasham@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (186, N'1501V', N'Nuguri Nikhil Chander', N'29-Nov-21', N'Vivifi', N'', N'nuguri.nikhilchander@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (187, N'1468V', N'Mamidikayala Darshini', N'01-Dec-21', N'Vivifi', N'', N'mamidikayala.darshini@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (188, N'1469V', N'Potharaju Sairohan', N'01-Dec-21', N'Vivifi', N'', N'potharaju.sairohan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (189, N'1470V', N'Chejeti Lakshmi', N'01-Dec-21', N'Vivifi', N'', N'chejeti.lakshmi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (190, N'1471V', N'Sri Ramoju Sri Laxmi', N'01-Dec-21', N'Vivifi', N'', N'sriramoju.srilaxmi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (191, N'1472V', N'Thalari Vinod Kumar', N'01-Dec-21', N'Vivifi', N'', N'thalari.vinodkumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (192, N'1473V', N'Asma Tahreem', N'01-Dec-21', N'Vivifi', N'', N'asma.tahreem@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (193, N'1475V', N'Jyothirmay Swain', N'02-Dec-21', N'Vivifi', N'7008461992', N'Jyothirmay.Swain @vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (194, N'1476V', N'Shahid Rizwan Mohammad', N'02-Dec-21', N'Vivifi', N'709754593', N'mohammadshahid.rizwan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (195, N'1481V', N'Aamish Dildar Ali Jasani', N'03-Dec-21', N'Vivifi', N'', N'aamish.dildaralijasani@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (196, N'1482V', N'Komagalla Spandana', N'03-Dec-21', N'Vivifi', N'', N'komagalla.spandana@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (197, N'1483V', N'Nandamuri Kavya Sri', N'03-Dec-21', N'Vivifi', N'', N'nandamuri.kavyasri@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (198, N'1477V', N'Elkatoori Lalith Kumar', N'06-Dec-21', N'Vivifi', N'9515539429', N'elkatoori.lalithkumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (199, N'1478V', N'Tarun S Pilley', N'06-Dec-21', N'Vivifi', N'8855999678', N'tarun.pilley@vivifin.com', NULL)
GO
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (200, N'1480V', N'Sura Anjaneyulu', N'06-Dec-21', N'Vivifi', N'6303394201', N'sura.anjaneyulu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (201, N'1488V', N'Pendyala Manibabu', N'06-Dec-21', N'Vivifi', N'', N'pendyala.manibabu@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (202, N'1500V', N'Priyanka Madhela', N'06-Dec-21', N'Vivifi', N'', N'priyanka.madhela@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (203, N'1485V', N'Vivian Sebastian', N'07-Dec-21', N'Vivifi', N'', N'vivian.sebastian@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (204, N'1486V', N'M.J.Ravi Chander', N'07-Dec-21', N'Vivifi', N'', N'munnuswamy.jayaprakash@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (205, N'1489V', N'Vineet Kumar', N'07-Dec-21', N'Vivifi', N'', N'vineet.kumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (206, N'1491V', N'B Supriya', N'08-Dec-21', N'Vivifi', N'', N'b.supriya@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (207, N'1492V', N'Mohd Adil', N'08-Dec-21', N'Vivifi', N'', N'mohd.adil@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (208, N'1490V', N'Jonnala Adithya', N'09-Dec-21', N'Vivifi', N'', N'adithya.jonnala@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (209, N'1495V', N'Koppera Dheeraj', N'09-Dec-21', N'Vivifi', N'7730970614', N'koppera.dheeraj@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (210, N'1497V', N'K Naren Raj', N'09-Dec-21', N'Vivifi', N'8074623660', N'narenraj.k@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (211, N'1493V', N'Utkar Rajkumar', N'10-Dec-21', N'Vivifi', N'7337430743', N'utkar.rajkumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (212, N'1494V', N'Aamir Bashir Hajam', N'10-Dec-21', N'Vivifi', N'7006332716', N'aamir.bashirhajam@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (213, N'1496V', N'Chinmay Jema', N'10-Dec-21', N'Vivifi', N'9967852204', N'chinmay.jema@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (214, N'1499V', N'Jadala Rajashekar', N'13-Dec-21', N'Vivifi', N'7989871696', N'jadala.rajashekar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (215, N'1502V', N'Ashok Bendi', N'14-Dec-21', N'Vivifi', N'9010770134', N'ashok.bendi@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (216, N'1504V', N'Mallela Aakash Kumar', N'15-Dec-21', N'Vivifi', N'7569366713', N'aakashkumar.mallela@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (217, N'1505V', N'Younus Khan', N'15-Dec-21', N'Vivifi', N'7702756083', N'younus.khan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (218, N'1503V', N'Radhika Mahesh Grolle', N'16-Dec-21', N'Vivifi', N'9676721597', N'radhika.maheshgrolle@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (219, N'1506V', N'Muskan Parveen', N'16-Dec-21', N'Vivifi', N'7989706931', N'muskan.parveen@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (220, N'1508V', N'Mirza Azmath Baij', N'16-Dec-21', N'Vivifi', N'9966541691', N'mirza.azmathbaij@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (221, N'1507V', N'M Nikhil', N'17-Dec-21', N'Vivifi', N'8688573626', N'm.nikhil@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (222, N'1509V', N'Yeluri Venkata Kasi Maheswara Reddy', N'17-Dec-21', N'Vivifi', N'8474005573', N'yvk.maheswarareddy@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (223, N'1510V', N'Shaik Mohammed Iqbal', N'17-Dec-21', N'Vivifi', N'7396555599', N'shaik.mohammediqbal@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (224, N'1511V', N'Kyama Rushikesh', N'17-Dec-21', N'Vivifi', N'8688754671', N'kyama.rushikesh@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (225, N'1512V', N'Gemka Adarsh Mohan', N'17-Dec-21', N'Vivifi', N'7799074404', N'gemka.adarshmohan@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (226, N'1513V', N'Zakkam Prasanna Kumar', N'17-Dec-21', N'Vivifi', N'7569485623', N'zakkam.prasannakumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (227, N'1514V', N'Vinod Mahesh', N'17-Dec-21', N'Vivifi', N'8978959015', N'vinod.mahesh@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (228, N'1515V', N'Mortha Onesh Kumar', N'17-Dec-21', N'Vivifi', N'9059588656', N'mortha.oneshkumar@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (229, N'1516V', N'Anusha Vutukuri', N'21-Dec-21', N'Vivifi', N'', N'', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (230, N'1517V', N'Karthik Gollapalli', N'22-Dec-21', N'Vivifi', N'', N'', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (231, N'1518V', N'Shailaja Segolla', N'22-Dec-21', N'Vivifi', N'', N'', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (232, N'1519V', N'Rinky Patra', N'22-Dec-21', N'Vivifi', N'', N'', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (233, N'1520V', N'M. Sanjana', N'22-Dec-21', N'Vivifi', N'', N'', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (234, N'1521V', N'Shyam', N'22-Dec-21', N'Vivifi', N'', N'', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (235, N'1001V', N'Imran Mohammad', N'01-Mar-19', N'Vivifi', N'8106600578', N'imran.mohammed@vivifin.com', NULL)
INSERT [dbo].[employees] ([Id], [employee_number], [employee_name], [date_of_joining], [entity], [phone], [email], [santa_number]) VALUES (236, N'1036V', N'Srinivas Kasturi', N'01-Mar-19', N'Vivifi', N'8099975473', N'kasturi.srinivas@vivifin.com', NULL)
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
USE [master]
GO
ALTER DATABASE [secret_santa] SET  READ_WRITE 
GO
