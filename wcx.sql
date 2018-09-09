--问查星

--用户表
create table  wenchaxinguserInfo(
       wcxuid number(10) primary key,        --用户id
       wcxuname varchar2(10) not null,          --用户名称
       wcxuemail varchar2(20) not null,                 --邮箱
       wcxualipay varchar2(50),              --支付宝
       wcxuphoto varchar2(200),           --头像
       wcxupwd   varchar2(100),          --密码
       wcxuqq varchar2(100),             --QQ
       wcxuwechat varchar2(100)          --微信

);

--用户id序列
create sequence seq_wenchaxinguserInfo_wcxuid start with 1;
drop sequence seq_wenchaxinguserInfo_wcxuid;
drop table wenchaxinguserInfo;
select * from wenchaxinguserInfo;

--模板分类
create table wenchaxingtemplate(
       wcxtid number(10) primary key,            --模板分类id
       wcxtname varchar2(10)
);
drop table wenchaxingtemplate;

--模板分类序列
create sequence seq_wenchaxingtemplate_wcxtid start with 1;
drop sequence seq_wenchaxingtemplate_wcxtid;

--调查表
create table wenchaxingsurvey(
       wcxsid number(10) primary key,        --调查表id
       wcxuid number(10)
              constraint seq_wenchaxinguserInfo2_wcxuid references wenchaxinguserInfo(wcxuid),
       wcxsname varchar2(10) not null,      --调查表名
       wcxtid number(10)            --模板分类id
              constraint seq_wenchaxingtemplate_wcxtid references wenchaxingtemplate(wcxtid),
       wcxintroduce varchar2(400),            --简介
       
       wcxbdate date,      --发表日期
       wcxtime date,             --截止日期
       status number(2)             --状态
);


drop table wenchaxingsurvey;

--调查id序列
create sequence seq_wenchaxingsurvey_wcxsid start with 1;
drop sequence seq_wenchaxingsurvey_wcxsid;
drop table wenchaxingmessage;
--内容
create table wenchaxingcontent(
       wcxcid number(10) primary key,--内容id
       wcxctitle varchar2(200) not null,--题目
       wcxcsid number(10) constraints FK_wenchaxingcontent_wcxcsid references wenchaxingsurvey(wcxsid),--调查表id
       wcxcflag number(2) --状态
);

--内容id序列
create sequence seq_wenchaxingcontent_wcxcid start with 1;
drop sequence seq_wenchaxingcontent_wcxcid;
drop table wenchaxingcontent;

--反馈表（反馈表id,用户id,反馈内容，模板分类id）  
create table wenchaxingfeedback(
       wcxfid number(10) primary key,   --反馈表id
       wcxuid number(10)
             constraint FK_wcxuser_wcxuid references wenchaxinguserInfo(wcxuid),   --用户id
       wcxfcontent varchar2(300),            --反馈内容
       wcxtid number(10)
             constraint FK_wcxtem_wcxtid references wenchaxingtemplate(wcxtid),--模板分类id
       wcxstatus number(2) --1:运行 2:暂停  3:停止
);
create sequence seq_wenchaxingfeedback_wcxfid start with 1;          --反馈表序列
drop sequence seq_wenchaxingfeedback_wcxfid;
drop table wenchaxingfeedback;

--管理员（管理员id，name，email，zhifubao，头像photo,pwd）
create table wenchaxingmanager(
       wcxmid number(10) primary key,       --管理员id
       wcxmname varchar2(20) not null,      --管理员name
       wcxmpwd varchar2(100),                 --管理员密码
       wcxmemail varchar2(20),              --管理员email
       wcxmalipay varchar2(50),             --管理员支付宝
       wcxmpic varchar2(100),                --管理员头像
       wcxqq varchar2(100),                  --管理员QQ
       wcxwechat varchar2(100)               --管理员微信
);
create sequence seq_wenchaxingmanager_wcxmid start with 1;          --管理员序列
drop sequence seq_wenchaxingmanager_wcxmid;
drop table wenchaxingmanager;

--红包表
create table wcxRedpacket(
       wcxrid number(10) primary key,           --红包id
       wcxuid number(10)
              constraint FK_wcxRedpacket_wcxuid references wenchaxinguserInfo(wcxuid),      --用户id
       wcxsid number(10)
              constraint FK_wcxRedpacket_wcxsid references wenchaxingsurvey(wcxsid),     --调查表id
       wcxmoney number(10),         --金额
       wcxnumber number(10),        --数量
       wcxtype number(2),           --类型
       wcxname varchar2(100)       --name（发送者名称）
);
drop table wcxRedpacket;


--红包序列

create sequence seq_wcxRedpacket_wcxrid start with 1;   
drop sequence seq_wcxRedpacket_wcxrid;           
select * from wcxRedpacket;

--中奖名单
create table wenchaxingwinninglist(
       wcxlistid number(10) primary key,       --红包id
       wcxlistuserid number(10) 
              constraint FK_wcxlist_wcxuserid references wenchaxinguserInfo(wcxuid) --中奖名单
);
create sequence seq_wcxwinninglist_wcxlistid start with 1;          --中奖名单序列
drop sequence seq_wcxwinninglist_wcxlistid;    