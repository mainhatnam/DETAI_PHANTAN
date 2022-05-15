/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2014                    */
/* Created on:     5/16/2022 1:29:31 AM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHINHANH') and o.name = 'FK_CHINHANH_THUOC5_KHO')
alter table CHINHANH
   drop constraint FK_CHINHANH_THUOC5_KHO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETPHIEUHOAN') and o.name = 'FK_CHITIETP_CHITIETPH_SANPHAM')
alter table CHITIETPHIEUHOAN
   drop constraint FK_CHITIETP_CHITIETPH_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETPHIEUHOAN') and o.name = 'FK_CHITIETP_CHITIETPH_PHIEUHOA')
alter table CHITIETPHIEUHOAN
   drop constraint FK_CHITIETP_CHITIETPH_PHIEUHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETPT') and o.name = 'FK_CHITIETP_CHITIETPT_SANPHAM')
alter table CHITIETPT
   drop constraint FK_CHITIETP_CHITIETPT_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETPT') and o.name = 'FK_CHITIETP_CHITIETPT_PHIEUTRA')
alter table CHITIETPT
   drop constraint FK_CHITIETP_CHITIETPT_PHIEUTRA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHUCVU') and o.name = 'FK_CHUCVU_CO1_PHUCAP')
alter table CHUCVU
   drop constraint FK_CHUCVU_CO1_PHUCAP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONG') and o.name = 'FK_CONG_CHAMCONG_NHANVIEN')
alter table CONG
   drop constraint FK_CONG_CHAMCONG_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIABAN') and o.name = 'FK_GIABAN_CO3_SANPHAM')
alter table GIABAN
   drop constraint FK_GIABAN_CO3_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_LAP_NHANVIEN')
alter table HOADON
   drop constraint FK_HOADON_LAP_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_MUAHANG_KHACHHAN')
alter table HOADON
   drop constraint FK_HOADON_MUAHANG_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_TAI_CHINHANH')
alter table HOADON
   drop constraint FK_HOADON_TAI_CHINHANH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADONCT') and o.name = 'FK_HOADONCT_HOADONCT_SANPHAM')
alter table HOADONCT
   drop constraint FK_HOADONCT_HOADONCT_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADONCT') and o.name = 'FK_HOADONCT_HOADONCT2_HOADON')
alter table HOADONCT
   drop constraint FK_HOADONCT_HOADONCT2_HOADON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHO_SANPHAM') and o.name = 'FK_KHO_SANP_KHO_SANPH_SANPHAM')
alter table KHO_SANPHAM
   drop constraint FK_KHO_SANP_KHO_SANPH_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHO_SANPHAM') and o.name = 'FK_KHO_SANP_KHO_SANPH_KHO')
alter table KHO_SANPHAM
   drop constraint FK_KHO_SANP_KHO_SANPH_KHO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LUONG') and o.name = 'FK_LUONG_ASSOCIATI_MUCLUONG')
alter table LUONG
   drop constraint FK_LUONG_ASSOCIATI_MUCLUONG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MUCLUONG') and o.name = 'FK_MUCLUONG_ASSOCIATI_NHANVIEN')
alter table MUCLUONG
   drop constraint FK_MUCLUONG_ASSOCIATI_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MUCLUONG') and o.name = 'FK_MUCLUONG_GOM_HESOLUON')
alter table MUCLUONG
   drop constraint FK_MUCLUONG_GOM_HESOLUON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_LAMVIEC_CHINHANH')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_LAMVIEC_CHINHANH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_SOHUU_TAIKHOAN')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_SOHUU_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_VOI_CHUCVU')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_VOI_CHUCVU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUHOANHANG') and o.name = 'FK_PHIEUHOA_HOANDEN_NHACUNGC')
alter table PHIEUHOANHANG
   drop constraint FK_PHIEUHOA_HOANDEN_NHACUNGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUHOANHANG') and o.name = 'FK_PHIEUHOA_LAPPHIEUH_NHANVIEN')
alter table PHIEUHOANHANG
   drop constraint FK_PHIEUHOA_LAPPHIEUH_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUNHAPCT') and o.name = 'FK_PHIEUNHA_PHIEUNHAP_SANPHAM')
alter table PHIEUNHAPCT
   drop constraint FK_PHIEUNHA_PHIEUNHAP_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUNHAPCT') and o.name = 'FK_PHIEUNHA_PHIEUNHAP_PHIEUNHA')
alter table PHIEUNHAPCT
   drop constraint FK_PHIEUNHA_PHIEUNHAP_PHIEUNHA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUNHAPHANG') and o.name = 'FK_PHIEUNHA_LAPPHIEUN_NHANVIEN')
alter table PHIEUNHAPHANG
   drop constraint FK_PHIEUNHA_LAPPHIEUN_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUNHAPHANG') and o.name = 'FK_PHIEUNHA_THUOC4_NHACUNGC')
alter table PHIEUNHAPHANG
   drop constraint FK_PHIEUNHA_THUOC4_NHACUNGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUTRA') and o.name = 'FK_PHIEUTRA_LAPPHIEUT_NHANVIEN')
alter table PHIEUTRA
   drop constraint FK_PHIEUTRA_LAPPHIEUT_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUTRA') and o.name = 'FK_PHIEUTRA_TRAHANG_KHACHHAN')
alter table PHIEUTRA
   drop constraint FK_PHIEUTRA_TRAHANG_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANPHAM') and o.name = 'FK_SANPHAM_CUNGCAP_NHACUNGC')
alter table SANPHAM
   drop constraint FK_SANPHAM_CUNGCAP_NHACUNGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANPHAM') and o.name = 'FK_SANPHAM_THUOC2_LOAISANP')
alter table SANPHAM
   drop constraint FK_SANPHAM_THUOC2_LOAISANP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANPHAM_KICHCO') and o.name = 'FK_SANPHAM__SANPHAM_K_SANPHAM')
alter table SANPHAM_KICHCO
   drop constraint FK_SANPHAM__SANPHAM_K_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANPHAM_KICHCO') and o.name = 'FK_SANPHAM__SANPHAM_K_KICHCO')
alter table SANPHAM_KICHCO
   drop constraint FK_SANPHAM__SANPHAM_K_KICHCO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANPHAM_MAUSAC') and o.name = 'FK_SANPHAM__SANPHAM_M_SANPHAM')
alter table SANPHAM_MAUSAC
   drop constraint FK_SANPHAM__SANPHAM_M_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANPHAM_MAUSAC') and o.name = 'FK_SANPHAM__SANPHAM_M_MAUSAC')
alter table SANPHAM_MAUSAC
   drop constraint FK_SANPHAM__SANPHAM_M_MAUSAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKHUYENMAI') and o.name = 'FK_SPKHUYEN_SPKHUYENM_SANPHAM')
alter table SPKHUYENMAI
   drop constraint FK_SPKHUYEN_SPKHUYENM_SANPHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SPKHUYENMAI') and o.name = 'FK_SPKHUYEN_SPKHUYENM_KHUYENMA')
alter table SPKHUYENMAI
   drop constraint FK_SPKHUYEN_SPKHUYENM_KHUYENMA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAIKHOAN') and o.name = 'FK_TAIKHOAN_THUOC_QUYEN')
alter table TAIKHOAN
   drop constraint FK_TAIKHOAN_THUOC_QUYEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHINHANH')
            and   name  = 'THUOC5_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHINHANH.THUOC5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHINHANH')
            and   type = 'U')
   drop table CHINHANH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETPHIEUHOAN')
            and   name  = 'CHITIETPHIEUHOAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETPHIEUHOAN.CHITIETPHIEUHOAN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETPHIEUHOAN')
            and   name  = 'CHITIETPHIEUHOAN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETPHIEUHOAN.CHITIETPHIEUHOAN2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETPHIEUHOAN')
            and   type = 'U')
   drop table CHITIETPHIEUHOAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETPT')
            and   name  = 'CHITIETPT_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETPT.CHITIETPT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETPT')
            and   name  = 'CHITIETPT2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETPT.CHITIETPT2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETPT')
            and   type = 'U')
   drop table CHITIETPT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHUCVU')
            and   name  = 'CO1_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHUCVU.CO1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUCVU')
            and   type = 'U')
   drop table CHUCVU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONG')
            and   name  = 'CHAMCONG_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONG.CHAMCONG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONG')
            and   type = 'U')
   drop table CONG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIABAN')
            and   name  = 'CO3_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIABAN.CO3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIABAN')
            and   type = 'U')
   drop table GIABAN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HESOLUONG')
            and   type = 'U')
   drop table HESOLUONG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'TAI_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.TAI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'LAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.LAP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'MUAHANG_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.MUAHANG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOADON')
            and   type = 'U')
   drop table HOADON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADONCT')
            and   name  = 'HOADONCT_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADONCT.HOADONCT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADONCT')
            and   name  = 'HOADONCT2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADONCT.HOADONCT2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOADONCT')
            and   type = 'U')
   drop table HOADONCT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHACHHANG')
            and   type = 'U')
   drop table KHACHHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHO')
            and   type = 'U')
   drop table KHO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHO_SANPHAM')
            and   name  = 'KHO_SANPHAM_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHO_SANPHAM.KHO_SANPHAM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHO_SANPHAM')
            and   name  = 'KHO_SANPHAM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHO_SANPHAM.KHO_SANPHAM2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHO_SANPHAM')
            and   type = 'U')
   drop table KHO_SANPHAM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHUYENMAI')
            and   type = 'U')
   drop table KHUYENMAI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KICHCO')
            and   type = 'U')
   drop table KICHCO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAISANPHAM')
            and   type = 'U')
   drop table LOAISANPHAM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LUONG')
            and   name  = 'ASSOCIATION_31_FK'
            and   indid > 0
            and   indid < 255)
   drop index LUONG.ASSOCIATION_31_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LUONG')
            and   type = 'U')
   drop table LUONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MAUSAC')
            and   type = 'U')
   drop table MAUSAC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MUCLUONG')
            and   name  = 'ASSOCIATION_32_FK'
            and   indid > 0
            and   indid < 255)
   drop index MUCLUONG.ASSOCIATION_32_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MUCLUONG')
            and   name  = 'GOM_FK'
            and   indid > 0
            and   indid < 255)
   drop index MUCLUONG.GOM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MUCLUONG')
            and   type = 'U')
   drop table MUCLUONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHACUNGCAP')
            and   type = 'U')
   drop table NHACUNGCAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'LAMVIEC_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.LAMVIEC_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'VOI_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.VOI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'SOHUU_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.SOHUU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUHOANHANG')
            and   name  = 'HOANDEN_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUHOANHANG.HOANDEN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUHOANHANG')
            and   name  = 'LAPPHIEUHOAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUHOANHANG.LAPPHIEUHOAN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUHOANHANG')
            and   type = 'U')
   drop table PHIEUHOANHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUNHAPCT')
            and   name  = 'PHIEUNHAPCT_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAPCT.PHIEUNHAPCT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUNHAPCT')
            and   name  = 'PHIEUNHAPCT2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAPCT.PHIEUNHAPCT2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUNHAPCT')
            and   type = 'U')
   drop table PHIEUNHAPCT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUNHAPHANG')
            and   name  = 'LAPPHIEUNHAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAPHANG.LAPPHIEUNHAP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUNHAPHANG')
            and   name  = 'THUOC4_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAPHANG.THUOC4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUNHAPHANG')
            and   type = 'U')
   drop table PHIEUNHAPHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUTRA')
            and   name  = 'TRAHANG_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUTRA.TRAHANG_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUTRA')
            and   name  = 'LAPPHIEUTRA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUTRA.LAPPHIEUTRA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUTRA')
            and   type = 'U')
   drop table PHIEUTRA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHUCAP')
            and   type = 'U')
   drop table PHUCAP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QUYEN')
            and   type = 'U')
   drop table QUYEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANPHAM')
            and   name  = 'CUNGCAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANPHAM.CUNGCAP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANPHAM')
            and   name  = 'THUOC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANPHAM.THUOC2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SANPHAM')
            and   type = 'U')
   drop table SANPHAM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANPHAM_KICHCO')
            and   name  = 'SANPHAM_KICHCO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANPHAM_KICHCO.SANPHAM_KICHCO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANPHAM_KICHCO')
            and   name  = 'SANPHAM_KICHCO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANPHAM_KICHCO.SANPHAM_KICHCO2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SANPHAM_KICHCO')
            and   type = 'U')
   drop table SANPHAM_KICHCO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANPHAM_MAUSAC')
            and   name  = 'SANPHAM_MAUSAC_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANPHAM_MAUSAC.SANPHAM_MAUSAC_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANPHAM_MAUSAC')
            and   name  = 'SANPHAM_MAUSAC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANPHAM_MAUSAC.SANPHAM_MAUSAC2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SANPHAM_MAUSAC')
            and   type = 'U')
   drop table SANPHAM_MAUSAC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SPKHUYENMAI')
            and   name  = 'SPKHUYENMAI_FK'
            and   indid > 0
            and   indid < 255)
   drop index SPKHUYENMAI.SPKHUYENMAI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SPKHUYENMAI')
            and   name  = 'SPKHUYENMAI2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SPKHUYENMAI.SPKHUYENMAI2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SPKHUYENMAI')
            and   type = 'U')
   drop table SPKHUYENMAI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAIKHOAN')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAIKHOAN.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAIKHOAN')
            and   type = 'U')
   drop table TAIKHOAN
go

/*==============================================================*/
/* Table: CHINHANH                                              */
/*==============================================================*/
create table CHINHANH (
   MACHINHANH           char(20)             not null,
   MAKHO                char(10)             not null,
   TENCHINHANH          varchar(200)         null,
   DIACHI               varchar(200)         null,
   SDT                  char(20)             null,
   constraint PK_CHINHANH primary key (MACHINHANH)
)
go

/*==============================================================*/
/* Index: THUOC5_FK                                             */
/*==============================================================*/




create nonclustered index THUOC5_FK on CHINHANH (MAKHO ASC)
go

/*==============================================================*/
/* Table: CHITIETPHIEUHOAN                                      */
/*==============================================================*/
create table CHITIETPHIEUHOAN (
   MAPHIEU              char(10)             not null,
   MASP                 char(10)             not null,
   SOLUONG              int                  null,
   TINHTRANG            text                 null,
   constraint PK_CHITIETPHIEUHOAN primary key (MAPHIEU, MASP)
)
go

/*==============================================================*/
/* Index: CHITIETPHIEUHOAN2_FK                                  */
/*==============================================================*/




create nonclustered index CHITIETPHIEUHOAN2_FK on CHITIETPHIEUHOAN (MAPHIEU ASC)
go

/*==============================================================*/
/* Index: CHITIETPHIEUHOAN_FK                                   */
/*==============================================================*/




create nonclustered index CHITIETPHIEUHOAN_FK on CHITIETPHIEUHOAN (MASP ASC)
go

/*==============================================================*/
/* Table: CHITIETPT                                             */
/*==============================================================*/
create table CHITIETPT (
   MAPT                 char(10)             not null,
   MASP                 char(10)             not null,
   SOLUONG              int                  null,
   DONGIA               bigint               null,
   MAUSAC               varchar(50)          null,
   KICHTHUOC            char(50)             null,
   TINHTRANG            text                 null,
   constraint PK_CHITIETPT primary key (MAPT, MASP)
)
go

/*==============================================================*/
/* Index: CHITIETPT2_FK                                         */
/*==============================================================*/




create nonclustered index CHITIETPT2_FK on CHITIETPT (MAPT ASC)
go

/*==============================================================*/
/* Index: CHITIETPT_FK                                          */
/*==============================================================*/




create nonclustered index CHITIETPT_FK on CHITIETPT (MASP ASC)
go

/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create table CHUCVU (
   MACV                 char(10)             not null,
   MAPC                 char(10)             not null,
   TENCV                varchar(100)         null,
   constraint PK_CHUCVU primary key (MACV)
)
go

/*==============================================================*/
/* Index: CO1_FK                                                */
/*==============================================================*/




create nonclustered index CO1_FK on CHUCVU (MAPC ASC)
go

/*==============================================================*/
/* Table: CONG                                                  */
/*==============================================================*/
create table CONG (
   MACONG               char(10)             not null,
   MANV                 char(20)             not null,
   NGAYCONG             int                  null,
   THOIGIAN             datetime             null,
   constraint PK_CONG primary key (MACONG)
)
go

/*==============================================================*/
/* Index: CHAMCONG_FK                                           */
/*==============================================================*/




create nonclustered index CHAMCONG_FK on CONG (MANV ASC)
go

/*==============================================================*/
/* Table: GIABAN                                                */
/*==============================================================*/
create table GIABAN (
   ID_GIABAN            bigint               not null,
   MASP                 char(10)             not null,
   GIA                  bigint               null,
   THOIGIANBATDAU       datetime             null,
   THOIGIANKETTHUC      datetime             null,
   constraint PK_GIABAN primary key (ID_GIABAN)
)
go

/*==============================================================*/
/* Index: CO3_FK                                                */
/*==============================================================*/




create nonclustered index CO3_FK on GIABAN (MASP ASC)
go

/*==============================================================*/
/* Table: HESOLUONG                                             */
/*==============================================================*/
create table HESOLUONG (
   MAHSL                char(10)             not null,
   MUCHSL               float(5)             null,
   constraint PK_HESOLUONG primary key (MAHSL)
)
go

/*==============================================================*/
/* Table: HOADON                                                */
/*==============================================================*/
create table HOADON (
   MAHD                 char(50)             not null,
   MAKH                 char(10)             not null,
   MANV                 char(20)             not null,
   MACHINHANH           char(20)             not null,
   NGAYLAPHD            datetime             null,
   TONGTIEN             int                  null,
   TIENNHAN             int                  null,
   TIENTHUA             int                  null,
   constraint PK_HOADON primary key (MAHD)
)
go

/*==============================================================*/
/* Index: MUAHANG_FK                                            */
/*==============================================================*/




create nonclustered index MUAHANG_FK on HOADON (MAKH ASC)
go

/*==============================================================*/
/* Index: LAP_FK                                                */
/*==============================================================*/




create nonclustered index LAP_FK on HOADON (MANV ASC)
go

/*==============================================================*/
/* Index: TAI_FK                                                */
/*==============================================================*/




create nonclustered index TAI_FK on HOADON (MACHINHANH ASC)
go

/*==============================================================*/
/* Table: HOADONCT                                              */
/*==============================================================*/
create table HOADONCT (
   MAHD                 char(50)             not null,
   MASP                 char(10)             not null,
   SOLUONG              int                  null,
   MAUSAC               varchar(50)          null,
   KICHTHUOC            char(50)             null,
   constraint PK_HOADONCT primary key (MAHD, MASP)
)
go

/*==============================================================*/
/* Index: HOADONCT2_FK                                          */
/*==============================================================*/




create nonclustered index HOADONCT2_FK on HOADONCT (MAHD ASC)
go

/*==============================================================*/
/* Index: HOADONCT_FK                                           */
/*==============================================================*/




create nonclustered index HOADONCT_FK on HOADONCT (MASP ASC)
go

/*==============================================================*/
/* Table: KHACHHANG                                             */
/*==============================================================*/
create table KHACHHANG (
   MAKH                 char(10)             not null,
   TENKH                varchar(100)         null,
   SDT                  char(20)             null,
   DIACHI               varchar(200)         null,
   EMAIL                char(100)            null,
   NGAYSINH             datetime             null,
   SOTK                 char(200)            null,
   GHICHU               varchar(500)         null,
   constraint PK_KHACHHANG primary key (MAKH)
)
go

/*==============================================================*/
/* Table: KHO                                                   */
/*==============================================================*/
create table KHO (
   MAKHO                char(10)             not null,
   TENKHO               text                 null,
   DIACHI               varchar(200)         null,
   SDT                  char(20)             null,
   constraint PK_KHO primary key (MAKHO)
)
go

/*==============================================================*/
/* Table: KHO_SANPHAM                                           */
/*==============================================================*/
create table KHO_SANPHAM (
   MAKHO                char(10)             not null,
   MASP                 char(10)             not null,
   constraint PK_KHO_SANPHAM primary key (MAKHO, MASP)
)
go

/*==============================================================*/
/* Index: KHO_SANPHAM2_FK                                       */
/*==============================================================*/




create nonclustered index KHO_SANPHAM2_FK on KHO_SANPHAM (MAKHO ASC)
go

/*==============================================================*/
/* Index: KHO_SANPHAM_FK                                        */
/*==============================================================*/




create nonclustered index KHO_SANPHAM_FK on KHO_SANPHAM (MASP ASC)
go

/*==============================================================*/
/* Table: KHUYENMAI                                             */
/*==============================================================*/
create table KHUYENMAI (
   MAKM                 char(10)             not null,
   NGAYBD               datetime             null,
   NGAYKT               datetime             null,
   NOIDUNG              text                 null,
   MUCKM                text                 null,
   constraint PK_KHUYENMAI primary key (MAKM)
)
go

/*==============================================================*/
/* Table: KICHCO                                                */
/*==============================================================*/
create table KICHCO (
   MAKICHCO             char(10)             not null,
   SOKICHCO             char(10)             null,
   constraint PK_KICHCO primary key (MAKICHCO)
)
go

/*==============================================================*/
/* Table: LOAISANPHAM                                           */
/*==============================================================*/
create table LOAISANPHAM (
   MALOAI               char(20)             not null,
   TENLOAI              varchar(100)         null,
   constraint PK_LOAISANPHAM primary key (MALOAI)
)
go

/*==============================================================*/
/* Table: LUONG                                                 */
/*==============================================================*/
create table LUONG (
   ID                   char(10)             not null,
   MAMUCLUONG           char(10)             not null,
   THOIGIAN             datetime             null,
   TAMUNG               int                  null,
   THUONG               int                  null,
   KHAUTRUBH            int                  null,
   THUCLINH             int                  null,
   constraint PK_LUONG primary key (ID)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_31_FK                                     */
/*==============================================================*/




create nonclustered index ASSOCIATION_31_FK on LUONG (MAMUCLUONG ASC)
go

/*==============================================================*/
/* Table: MAUSAC                                                */
/*==============================================================*/
create table MAUSAC (
   MAMAU                char(10)             not null,
   TENMAU               char(100)            null,
   constraint PK_MAUSAC primary key (MAMAU)
)
go

/*==============================================================*/
/* Table: MUCLUONG                                              */
/*==============================================================*/
create table MUCLUONG (
   MAMUCLUONG           char(10)             not null,
   MAHSL                char(10)             not null,
   MANV                 char(20)             not null,
   MUCLUONG             float(10)            null,
   NGAYAPDUNG           datetime             null,
   constraint PK_MUCLUONG primary key (MAMUCLUONG)
)
go

/*==============================================================*/
/* Index: GOM_FK                                                */
/*==============================================================*/




create nonclustered index GOM_FK on MUCLUONG (MAHSL ASC)
go

/*==============================================================*/
/* Index: ASSOCIATION_32_FK                                     */
/*==============================================================*/




create nonclustered index ASSOCIATION_32_FK on MUCLUONG (MANV ASC)
go

/*==============================================================*/
/* Table: NHACUNGCAP                                            */
/*==============================================================*/
create table NHACUNGCAP (
   MANCC                char(20)             not null,
   TENNHACC             varchar(200)         null,
   DIACHI               varchar(200)         null,
   SDT                  char(20)             null,
   EMAIL                char(100)            null,
   constraint PK_NHACUNGCAP primary key (MANCC)
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   MANV                 char(20)             not null,
   TENDANGNHAP          char(50)             not null,
   MACV                 char(10)             not null,
   MACHINHANH           char(20)             not null,
   HO                   varchar(50)          null,
   TEN                  varchar(50)          null,
   DIACHI               varchar(200)         null,
   SDT                  char(20)             null,
   EMAIL                char(100)            null,
   NGAYSINH             datetime             null,
   GIOITINH             int                  null,
   NGAYBDLV             datetime             null,
   constraint PK_NHANVIEN primary key (MANV)
)
go

/*==============================================================*/
/* Index: SOHUU_FK                                              */
/*==============================================================*/




create nonclustered index SOHUU_FK on NHANVIEN (TENDANGNHAP ASC)
go

/*==============================================================*/
/* Index: VOI_FK                                                */
/*==============================================================*/




create nonclustered index VOI_FK on NHANVIEN (MACV ASC)
go

/*==============================================================*/
/* Index: LAMVIEC_FK                                            */
/*==============================================================*/




create nonclustered index LAMVIEC_FK on NHANVIEN (MACHINHANH ASC)
go

/*==============================================================*/
/* Table: PHIEUHOANHANG                                         */
/*==============================================================*/
create table PHIEUHOANHANG (
   MAPHIEU              char(10)             not null,
   MANV                 char(20)             not null,
   MANCC                char(20)             not null,
   NGAYHOAN             datetime             null,
   constraint PK_PHIEUHOANHANG primary key (MAPHIEU)
)
go

/*==============================================================*/
/* Index: LAPPHIEUHOAN_FK                                       */
/*==============================================================*/




create nonclustered index LAPPHIEUHOAN_FK on PHIEUHOANHANG (MANV ASC)
go

/*==============================================================*/
/* Index: HOANDEN_FK                                            */
/*==============================================================*/




create nonclustered index HOANDEN_FK on PHIEUHOANHANG (MANCC ASC)
go

/*==============================================================*/
/* Table: PHIEUNHAPCT                                           */
/*==============================================================*/
create table PHIEUNHAPCT (
   MAPN                 char(50)             not null,
   MASP                 char(10)             not null,
   SOLUONG              int                  null,
   DONGIA               bigint               null,
   MAUSAC               varchar(50)          null,
   KICHTHUOC            char(50)             null,
   constraint PK_PHIEUNHAPCT primary key (MAPN, MASP)
)
go

/*==============================================================*/
/* Index: PHIEUNHAPCT2_FK                                       */
/*==============================================================*/




create nonclustered index PHIEUNHAPCT2_FK on PHIEUNHAPCT (MAPN ASC)
go

/*==============================================================*/
/* Index: PHIEUNHAPCT_FK                                        */
/*==============================================================*/




create nonclustered index PHIEUNHAPCT_FK on PHIEUNHAPCT (MASP ASC)
go

/*==============================================================*/
/* Table: PHIEUNHAPHANG                                         */
/*==============================================================*/
create table PHIEUNHAPHANG (
   MAPN                 char(50)             not null,
   MANCC                char(20)             not null,
   MANV                 char(20)             not null,
   NGAYLAPPT            datetime             null,
   constraint PK_PHIEUNHAPHANG primary key (MAPN)
)
go

/*==============================================================*/
/* Index: THUOC4_FK                                             */
/*==============================================================*/




create nonclustered index THUOC4_FK on PHIEUNHAPHANG (MANCC ASC)
go

/*==============================================================*/
/* Index: LAPPHIEUNHAP_FK                                       */
/*==============================================================*/




create nonclustered index LAPPHIEUNHAP_FK on PHIEUNHAPHANG (MANV ASC)
go

/*==============================================================*/
/* Table: PHIEUTRA                                              */
/*==============================================================*/
create table PHIEUTRA (
   MAPT                 char(10)             not null,
   MANV                 char(20)             not null,
   MAKH                 char(10)             not null,
   NGAYLAPPT            datetime             null,
   constraint PK_PHIEUTRA primary key (MAPT)
)
go

/*==============================================================*/
/* Index: LAPPHIEUTRA_FK                                        */
/*==============================================================*/




create nonclustered index LAPPHIEUTRA_FK on PHIEUTRA (MANV ASC)
go

/*==============================================================*/
/* Index: TRAHANG_FK                                            */
/*==============================================================*/




create nonclustered index TRAHANG_FK on PHIEUTRA (MAKH ASC)
go

/*==============================================================*/
/* Table: PHUCAP                                                */
/*==============================================================*/
create table PHUCAP (
   MAPC                 char(10)             not null,
   HESOPC               float(5)             null,
   constraint PK_PHUCAP primary key (MAPC)
)
go

/*==============================================================*/
/* Table: QUYEN                                                 */
/*==============================================================*/
create table QUYEN (
   MAQUYEN              int                  not null,
   TENQUYEN             varchar(100)         null,
   constraint PK_QUYEN primary key (MAQUYEN)
)
go

/*==============================================================*/
/* Table: SANPHAM                                               */
/*==============================================================*/
create table SANPHAM (
   MASP                 char(10)             not null,
   MALOAI               char(20)             not null,
   MANCC                char(20)             not null,
   TENSP                varchar(500)         null,
   MOTA                 text                 null,
   HANBAOHANH           float(5)             null,
   constraint PK_SANPHAM primary key (MASP)
)
go

/*==============================================================*/
/* Index: THUOC2_FK                                             */
/*==============================================================*/




create nonclustered index THUOC2_FK on SANPHAM (MALOAI ASC)
go

/*==============================================================*/
/* Index: CUNGCAP_FK                                            */
/*==============================================================*/




create nonclustered index CUNGCAP_FK on SANPHAM (MANCC ASC)
go

/*==============================================================*/
/* Table: SANPHAM_KICHCO                                        */
/*==============================================================*/
create table SANPHAM_KICHCO (
   MAKICHCO             char(10)             not null,
   MASP                 char(10)             not null,
   constraint PK_SANPHAM_KICHCO primary key (MAKICHCO, MASP)
)
go

/*==============================================================*/
/* Index: SANPHAM_KICHCO2_FK                                    */
/*==============================================================*/




create nonclustered index SANPHAM_KICHCO2_FK on SANPHAM_KICHCO (MAKICHCO ASC)
go

/*==============================================================*/
/* Index: SANPHAM_KICHCO_FK                                     */
/*==============================================================*/




create nonclustered index SANPHAM_KICHCO_FK on SANPHAM_KICHCO (MASP ASC)
go

/*==============================================================*/
/* Table: SANPHAM_MAUSAC                                        */
/*==============================================================*/
create table SANPHAM_MAUSAC (
   MAMAU                char(10)             not null,
   MASP                 char(10)             not null,
   constraint PK_SANPHAM_MAUSAC primary key (MAMAU, MASP)
)
go

/*==============================================================*/
/* Index: SANPHAM_MAUSAC2_FK                                    */
/*==============================================================*/




create nonclustered index SANPHAM_MAUSAC2_FK on SANPHAM_MAUSAC (MAMAU ASC)
go

/*==============================================================*/
/* Index: SANPHAM_MAUSAC_FK                                     */
/*==============================================================*/




create nonclustered index SANPHAM_MAUSAC_FK on SANPHAM_MAUSAC (MASP ASC)
go

/*==============================================================*/
/* Table: SPKHUYENMAI                                           */
/*==============================================================*/
create table SPKHUYENMAI (
   MAKM                 char(10)             not null,
   MASP                 char(10)             not null,
   constraint PK_SPKHUYENMAI primary key (MAKM, MASP)
)
go

/*==============================================================*/
/* Index: SPKHUYENMAI2_FK                                       */
/*==============================================================*/




create nonclustered index SPKHUYENMAI2_FK on SPKHUYENMAI (MAKM ASC)
go

/*==============================================================*/
/* Index: SPKHUYENMAI_FK                                        */
/*==============================================================*/




create nonclustered index SPKHUYENMAI_FK on SPKHUYENMAI (MASP ASC)
go

/*==============================================================*/
/* Table: TAIKHOAN                                              */
/*==============================================================*/
create table TAIKHOAN (
   TENDANGNHAP          char(50)             not null,
   MAQUYEN              int                  not null,
   MATKHAU              char(50)             null,
   constraint PK_TAIKHOAN primary key (TENDANGNHAP)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/




create nonclustered index THUOC_FK on TAIKHOAN (MAQUYEN ASC)
go

alter table CHINHANH
   add constraint FK_CHINHANH_THUOC5_KHO foreign key (MAKHO)
      references KHO (MAKHO)
go

alter table CHITIETPHIEUHOAN
   add constraint FK_CHITIETP_CHITIETPH_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table CHITIETPHIEUHOAN
   add constraint FK_CHITIETP_CHITIETPH_PHIEUHOA foreign key (MAPHIEU)
      references PHIEUHOANHANG (MAPHIEU)
go

alter table CHITIETPT
   add constraint FK_CHITIETP_CHITIETPT_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table CHITIETPT
   add constraint FK_CHITIETP_CHITIETPT_PHIEUTRA foreign key (MAPT)
      references PHIEUTRA (MAPT)
go

alter table CHUCVU
   add constraint FK_CHUCVU_CO1_PHUCAP foreign key (MAPC)
      references PHUCAP (MAPC)
go

alter table CONG
   add constraint FK_CONG_CHAMCONG_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table GIABAN
   add constraint FK_GIABAN_CO3_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table HOADON
   add constraint FK_HOADON_LAP_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table HOADON
   add constraint FK_HOADON_MUAHANG_KHACHHAN foreign key (MAKH)
      references KHACHHANG (MAKH)
go

alter table HOADON
   add constraint FK_HOADON_TAI_CHINHANH foreign key (MACHINHANH)
      references CHINHANH (MACHINHANH)
go

alter table HOADONCT
   add constraint FK_HOADONCT_HOADONCT_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table HOADONCT
   add constraint FK_HOADONCT_HOADONCT2_HOADON foreign key (MAHD)
      references HOADON (MAHD)
go

alter table KHO_SANPHAM
   add constraint FK_KHO_SANP_KHO_SANPH_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table KHO_SANPHAM
   add constraint FK_KHO_SANP_KHO_SANPH_KHO foreign key (MAKHO)
      references KHO (MAKHO)
go

alter table LUONG
   add constraint FK_LUONG_ASSOCIATI_MUCLUONG foreign key (MAMUCLUONG)
      references MUCLUONG (MAMUCLUONG)
go

alter table MUCLUONG
   add constraint FK_MUCLUONG_ASSOCIATI_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table MUCLUONG
   add constraint FK_MUCLUONG_GOM_HESOLUON foreign key (MAHSL)
      references HESOLUONG (MAHSL)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_LAMVIEC_CHINHANH foreign key (MACHINHANH)
      references CHINHANH (MACHINHANH)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_SOHUU_TAIKHOAN foreign key (TENDANGNHAP)
      references TAIKHOAN (TENDANGNHAP)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_VOI_CHUCVU foreign key (MACV)
      references CHUCVU (MACV)
go

alter table PHIEUHOANHANG
   add constraint FK_PHIEUHOA_HOANDEN_NHACUNGC foreign key (MANCC)
      references NHACUNGCAP (MANCC)
go

alter table PHIEUHOANHANG
   add constraint FK_PHIEUHOA_LAPPHIEUH_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table PHIEUNHAPCT
   add constraint FK_PHIEUNHA_PHIEUNHAP_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table PHIEUNHAPCT
   add constraint FK_PHIEUNHA_PHIEUNHAP_PHIEUNHA foreign key (MAPN)
      references PHIEUNHAPHANG (MAPN)
go

alter table PHIEUNHAPHANG
   add constraint FK_PHIEUNHA_LAPPHIEUN_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table PHIEUNHAPHANG
   add constraint FK_PHIEUNHA_THUOC4_NHACUNGC foreign key (MANCC)
      references NHACUNGCAP (MANCC)
go

alter table PHIEUTRA
   add constraint FK_PHIEUTRA_LAPPHIEUT_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table PHIEUTRA
   add constraint FK_PHIEUTRA_TRAHANG_KHACHHAN foreign key (MAKH)
      references KHACHHANG (MAKH)
go

alter table SANPHAM
   add constraint FK_SANPHAM_CUNGCAP_NHACUNGC foreign key (MANCC)
      references NHACUNGCAP (MANCC)
go

alter table SANPHAM
   add constraint FK_SANPHAM_THUOC2_LOAISANP foreign key (MALOAI)
      references LOAISANPHAM (MALOAI)
go

alter table SANPHAM_KICHCO
   add constraint FK_SANPHAM__SANPHAM_K_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table SANPHAM_KICHCO
   add constraint FK_SANPHAM__SANPHAM_K_KICHCO foreign key (MAKICHCO)
      references KICHCO (MAKICHCO)
go

alter table SANPHAM_MAUSAC
   add constraint FK_SANPHAM__SANPHAM_M_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table SANPHAM_MAUSAC
   add constraint FK_SANPHAM__SANPHAM_M_MAUSAC foreign key (MAMAU)
      references MAUSAC (MAMAU)
go

alter table SPKHUYENMAI
   add constraint FK_SPKHUYEN_SPKHUYENM_SANPHAM foreign key (MASP)
      references SANPHAM (MASP)
go

alter table SPKHUYENMAI
   add constraint FK_SPKHUYEN_SPKHUYENM_KHUYENMA foreign key (MAKM)
      references KHUYENMAI (MAKM)
go

alter table TAIKHOAN
   add constraint FK_TAIKHOAN_THUOC_QUYEN foreign key (MAQUYEN)
      references QUYEN (MAQUYEN)
go

