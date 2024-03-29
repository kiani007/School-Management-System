USE [master]
GO
/****** Object:  Database [School_Management_System]    Script Date: 6/27/2019 12:53:32 PM ******/
CREATE DATABASE [School_Management_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School_Management_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\School_Management_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'School_Management_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\School_Management_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [School_Management_System] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School_Management_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School_Management_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School_Management_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School_Management_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School_Management_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School_Management_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [School_Management_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [School_Management_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School_Management_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School_Management_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School_Management_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School_Management_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School_Management_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School_Management_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School_Management_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School_Management_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [School_Management_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School_Management_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School_Management_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School_Management_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School_Management_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School_Management_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School_Management_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School_Management_System] SET RECOVERY FULL 
GO
ALTER DATABASE [School_Management_System] SET  MULTI_USER 
GO
ALTER DATABASE [School_Management_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School_Management_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School_Management_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School_Management_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [School_Management_System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [School_Management_System] SET QUERY_STORE = OFF
GO
USE [School_Management_System]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [School_Management_System]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/27/2019 12:53:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cat_id] [int] NOT NULL,
	[cat_name] [varchar](50) NOT NULL,
	[Academic_year] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_fee_structure:]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_fee_structure:](
	[Cat_id] [int] NULL,
	[class_number] [int] NULL,
	[fee_amount] [money] NULL,
	[due_date] [date] NULL,
	[Academic_year] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[class_number] [int] IDENTITY(1,1) NOT NULL,
	[Academic_year] [varchar](50) NOT NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[class_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class_Subject:]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_Subject:](
	[sub_id] [int] NOT NULL,
	[class_number] [int] NOT NULL,
	[division_id] [int] NOT NULL,
	[Academic_year] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[designation_id] [int] IDENTITY(1,1) NOT NULL,
	[designation] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[designation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division](
	[divisio_id] [int] IDENTITY(1,1) NOT NULL,
	[division_name] [varchar](50) NOT NULL,
	[D_date] [date] NOT NULL,
	[Academic_year] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Division] PRIMARY KEY CLUSTERED 
(
	[divisio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[mname] [varchar](50) NOT NULL,
	[lname] [varchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[occupation] [varchar](50) NOT NULL,
	[qualification] [varchar](50) NOT NULL,
	[Father_name] [nchar](10) NOT NULL,
	[Father_pnumber] [numeric](18, 0) NULL,
	[Father_office_address] [varchar](250) NULL,
	[Ephone_number] [numeric](18, 0) NULL,
	[salary] [money] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee attendence:]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee attendence:](
	[eid] [int] NULL,
	[Attendence_date] [datetime] NULL,
	[Attendence_status] [varchar](50) NULL,
	[User_name] [varchar](50) NULL,
	[Academic_year] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam_ Marks]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam_ Marks](
	[s_id] [int] NOT NULL,
	[ex_id] [int] NOT NULL,
	[sub_id] [int] NOT NULL,
	[marks] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam_Date]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam_Date](
	[ex_id] [int] NOT NULL,
	[DATE] [date] NOT NULL,
	[End_date] [date] NOT NULL,
	[class_number] [int] NOT NULL,
	[Ex_rec_id] [int] NOT NULL,
	[Academic_year] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exams]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[ex_id] [int] IDENTITY(1,1) NOT NULL,
	[ex_name] [varchar](50) NOT NULL,
	[total_number] [int] NOT NULL,
	[date] [date] NOT NULL,
	[Academic_year] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED 
(
	[ex_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exams_Sub_Timetable:]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams_Sub_Timetable:](
	[ex_id] [int] NOT NULL,
	[sub_id] [int] NOT NULL,
	[ExDate] [date] NOT NULL,
	[Academic_year] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fee_Details]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee_Details](
	[fid] [int] NOT NULL,
	[sid] [int] NOT NULL,
	[ftype] [varchar](50) NOT NULL,
	[installement] [int] NOT NULL,
	[Cashier_name] [varchar](50) NOT NULL,
	[Paying_mode] [varchar](50) NOT NULL,
	[Bank_name] [varchar](50) NOT NULL,
	[remarks] [varchar](50) NOT NULL,
	[Fees_paid] [varchar](50) NOT NULL,
	[Paid_by] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student Attendance:]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student Attendance:](
	[sid] [int] NOT NULL,
	[Attendance_date] [datetime] NOT NULL,
	[Attendance_status] [varchar](50) NOT NULL,
	[Ddate] [varchar](50) NOT NULL,
	[Academic_year] [numeric](18, 0) NOT NULL,
	[Division] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studnet]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studnet](
	[sid] [int] NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[mname] [varchar](50) NOT NULL,
	[lname] [varchar](50) NOT NULL,
	[P_name] [varchar](50) NOT NULL,
	[L_name] [varchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[religion] [varchar](50) NOT NULL,
	[Permanent_address] [varchar](250) NOT NULL,
	[Present_address] [varchar](250) NULL,
	[gender] [varchar](50) NULL,
	[Phone_no] [numeric](18, 0) NULL,
	[Cell_no] [numeric](18, 0) NULL,
	[Email_address] [varchar](50) NULL,
	[Father_office] [varchar](50) NULL,
	[class_number] [int] NULL,
 CONSTRAINT [PK_studnet] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [varchar](50) NOT NULL,
	[marks] [int] NOT NULL,
	[pass_marks] [int] NOT NULL,
	[Academic_year] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[class_number] [int] NOT NULL,
	[div_id] [int] NOT NULL,
	[qid] [int] NOT NULL,
	[e_id] [int] NOT NULL,
	[Academic_year] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[working_days]    Script Date: 6/27/2019 12:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[working_days](
	[day_id] [int] IDENTITY(1,1) NOT NULL,
	[day_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_working_days] PRIMARY KEY CLUSTERED 
(
	[day_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category_fee_structure:]  WITH CHECK ADD  CONSTRAINT [FK_Category_fee_structure:_Category] FOREIGN KEY([Cat_id])
REFERENCES [dbo].[Category] ([cat_id])
GO
ALTER TABLE [dbo].[Category_fee_structure:] CHECK CONSTRAINT [FK_Category_fee_structure:_Category]
GO
ALTER TABLE [dbo].[Employee attendence:]  WITH CHECK ADD  CONSTRAINT [FK_Employee attendence:_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[Employee attendence:] CHECK CONSTRAINT [FK_Employee attendence:_Employee]
GO
ALTER TABLE [dbo].[Exam_ Marks]  WITH CHECK ADD  CONSTRAINT [FK_Exam_ Marks_Exams] FOREIGN KEY([ex_id])
REFERENCES [dbo].[Exams] ([ex_id])
GO
ALTER TABLE [dbo].[Exam_ Marks] CHECK CONSTRAINT [FK_Exam_ Marks_Exams]
GO
ALTER TABLE [dbo].[Exam_ Marks]  WITH CHECK ADD  CONSTRAINT [FK_Exam_ Marks_studnet] FOREIGN KEY([s_id])
REFERENCES [dbo].[studnet] ([sid])
GO
ALTER TABLE [dbo].[Exam_ Marks] CHECK CONSTRAINT [FK_Exam_ Marks_studnet]
GO
ALTER TABLE [dbo].[Exam_Date]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Date_class] FOREIGN KEY([class_number])
REFERENCES [dbo].[class] ([class_number])
GO
ALTER TABLE [dbo].[Exam_Date] CHECK CONSTRAINT [FK_Exam_Date_class]
GO
ALTER TABLE [dbo].[Exams_Sub_Timetable:]  WITH CHECK ADD  CONSTRAINT [FK_Exams_Sub_Timetable:_Exams] FOREIGN KEY([ex_id])
REFERENCES [dbo].[Exams] ([ex_id])
GO
ALTER TABLE [dbo].[Exams_Sub_Timetable:] CHECK CONSTRAINT [FK_Exams_Sub_Timetable:_Exams]
GO
ALTER TABLE [dbo].[Exams_Sub_Timetable:]  WITH CHECK ADD  CONSTRAINT [FK_Exams_Sub_Timetable:_Subjects] FOREIGN KEY([sub_id])
REFERENCES [dbo].[Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[Exams_Sub_Timetable:] CHECK CONSTRAINT [FK_Exams_Sub_Timetable:_Subjects]
GO
ALTER TABLE [dbo].[Exams_Sub_Timetable:]  WITH CHECK ADD  CONSTRAINT [FK_Exams_Sub_Timetable:_Subjects1] FOREIGN KEY([sub_id])
REFERENCES [dbo].[Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[Exams_Sub_Timetable:] CHECK CONSTRAINT [FK_Exams_Sub_Timetable:_Subjects1]
GO
ALTER TABLE [dbo].[Fee_Details]  WITH CHECK ADD  CONSTRAINT [FK_Fee_Details_studnet] FOREIGN KEY([sid])
REFERENCES [dbo].[studnet] ([sid])
GO
ALTER TABLE [dbo].[Fee_Details] CHECK CONSTRAINT [FK_Fee_Details_studnet]
GO
ALTER TABLE [dbo].[Student Attendance:]  WITH CHECK ADD  CONSTRAINT [FK_Student Attendance:_studnet] FOREIGN KEY([sid])
REFERENCES [dbo].[studnet] ([sid])
GO
ALTER TABLE [dbo].[Student Attendance:] CHECK CONSTRAINT [FK_Student Attendance:_studnet]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_class] FOREIGN KEY([class_number])
REFERENCES [dbo].[class] ([class_number])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_class]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Employee] FOREIGN KEY([e_id])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_Employee]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Exams] FOREIGN KEY([e_id])
REFERENCES [dbo].[Exams] ([ex_id])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_Exams]
GO
USE [master]
GO
ALTER DATABASE [School_Management_System] SET  READ_WRITE 
GO
