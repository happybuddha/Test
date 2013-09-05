/*==============================================================*/
/* dbms name:      mysql 5.0                                    */
/* created on:     7/18/2008 4:51:26 pm                         */
/*==============================================================*/
drop database if exists fiftypdb;
create database fiftypdb;
use fiftypdb;









/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     9/29/2008 9:34:24 AM                         */
/*==============================================================*/


drop table if exists account_status;

drop table if exists address;

drop table if exists address_type;

drop table if exists allocation_request;

drop table if exists allowance_request;

drop table if exists bank_account;

drop table if exists cause;

drop table if exists cause_category;

drop table if exists cause_state;

drop table if exists child_allocation;

drop table if exists child_friend;

drop table if exists child_mm_chore;

drop table if exists child_mm_gift;

drop table if exists child_mm_project;

drop table if exists child_money_transaction;

drop table if exists child_profile;

drop table if exists child_request;

drop table if exists child_request_status;

drop table if exists child_save;

drop table if exists child_share;

drop table if exists child_spend;

drop table if exists child_transaction_type;

drop table if exists child_vote;

drop table if exists country;

drop table if exists credit_card;

drop table if exists credit_card_type;

drop table if exists fp_theme;

drop table if exists fp_theme_login;

drop table if exists investment;

drop table if exists login;

drop table if exists mail_inbox;

drop table if exists mail_sent;

drop table if exists mm_chore;

drop table if exists mm_chore_category;

drop table if exists mm_freq;

drop table if exists mm_gift_occasion;

drop table if exists mm_gift_occasion_category;

drop table if exists mm_project;

drop table if exists mm_project_category;

drop table if exists mm_state;

drop table if exists money_transfer_request;

drop table if exists msg_type;

drop table if exists ngo_profile;

drop table if exists ngo_story;

drop table if exists ngo_story_type;

drop table if exists orders;

drop table if exists parent_activity;

drop table if exists parent_activity_type;

drop table if exists parent_profile;

drop table if exists parent_statement;

drop table if exists payday;

drop table if exists payday_freq;

drop table if exists payment_method;

drop table if exists payment_type;

drop table if exists privilege;

drop table if exists product;

drop table if exists product_category;

drop table if exists product_order;

drop table if exists profile_photo;

drop table if exists profile_photo_login;

drop table if exists registration_order;

drop table if exists role;

drop table if exists role_privilege;

drop table if exists sec_question;

drop table if exists state;

drop table if exists store;

drop table if exists subscription_type;

drop table if exists sys_template;

drop table if exists tip;

drop table if exists tip_section;

drop table if exists transaction;

drop table if exists transaction_status;

drop table if exists transaction_type;

drop table if exists child_news;

drop table if exists news;

drop table if exists child_wall;


/*==============================================================*/
/* Table: account_status                                        */
/*==============================================================*/
create table account_status
(
   account_status_id    varchar(45) not null,
   name                 varchar(45) not null,
   description          varchar(255),
   primary key (account_status_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: address                                               */
/*==============================================================*/
create table address
(
   address_id           bigint(20) not null auto_increment,
   state_code           varchar(10),
   country_code         varchar(10),
   address_type_id      varchar(50),
   first_name           varchar(50),
   last_name            varchar(50),
   address_line_1       varchar(50),
   address_line_2       varchar(50),
   city                 varchar(50),
   daytime_phone        varchar(50),
   zip_code             varchar(10),
   primary key (address_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: address_type                                          */
/*==============================================================*/
create table address_type
(
   address_type_id      varchar(50) not null,
   name                 varchar(50),
   description          varchar(50),
   primary key (address_type_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: allocation_request                                    */
/*==============================================================*/
create table allocation_request
(
   allocation_request_id bigint(20) not null,
   spend                double not null,
   share                double not null,
   save                 double not null,
   primary key (allocation_request_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: allowance_request                                     */
/*==============================================================*/
create table allowance_request
(
   allowance_request_id bigint(20) not null,
   payday_freq_id       varchar(50),
   payday_id            varchar(50),
   allowance_amount     double not null,
   primary key (allowance_request_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: bank_account                                          */
/*==============================================================*/
create table bank_account
(
   bank_account_id      bigint(20) not null,
   routing_number       varchar(50),
   account_number       blob,
   bank_name            varchar(50) not null,
   primary key (bank_account_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: cause                                                 */
/*==============================================================*/
create table cause
(
   cause_id             integer not null auto_increment,
   cause_category_id    varchar(50),
   ngo_profile_id       bigint(20),
   name                 text not null,
   description          text,
   icon_url             text default NULL,
   photo1_url           text,
   video1_url           text,
   cause_state_id       varchar(50),
   pos_x                integer not null default 0,
   pos_y                integer not null default 0,
   confirmation_txt     text,
   primary key (cause_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: cause_category                                        */
/*==============================================================*/
create table cause_category
(
   name                 varchar(50) not null,
   cause_category_id    varchar(50) not null,
   description          text default NULL,
   primary key (cause_category_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: cause_state                                           */
/*==============================================================*/
create table cause_state
(
   cause_state_id       varchar(50) not null,
   name                 varchar(50) not null,
   description          varchar(255) default NULL,
   primary key (cause_state_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_allocation                                      */
/*==============================================================*/
create table child_allocation
(
   child_allocation_id  bigint(20) not null,
   spend                double not null,
   share                double not null,
   save                 double not null,
   primary key (child_allocation_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_friend                                          */
/*==============================================================*/
create table child_friend
(
   fp_id                bigint(20) not null,
   friend_id            bigint(20) not null,
   pending              tinyint(4) not null,
   primary key (fp_id, friend_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_mm_chore                                        */
/*==============================================================*/
create table child_mm_chore
(
   child_mm_chore_id    bigint(20) not null,
   mm_freq_id           varchar(50),
   mm_state_id          varchar(50),
   mm_chore_id          bigint(20),
   start_date           date,
   deducted_amount      double,
   primary key (child_mm_chore_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_mm_gift                                         */
/*==============================================================*/
create table child_mm_gift
(
   child_mm_gift_id     bigint(20) not null,
   mm_state_id          varchar(50),
   gift_occasion_id     bigint(20),
   amount               double,
   from_who             varchar(255),
   account_to           varchar(255),
   purpose              varchar(20),
   start_date           datetime,
   primary key (child_mm_gift_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_mm_project                                      */
/*==============================================================*/
create table child_mm_project
(
   child_mm_project_id  bigint(20) not null,
   mm_state_id          varchar(50),
   mm_project_id        bigint(20),
   start_date           date,
   amount               double not null,
   primary key (child_mm_project_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_money_transaction                               */
/*==============================================================*/
create table child_money_transaction
(
   child_money_transaction_id bigint(20) not null auto_increment,
   child_transaction_type_id varchar(45),
   amount               double not null,
   date_executed        datetime not null,
   child_profile_id     bigint(20) not null,
   description          varchar(100),
   account              varchar(50),
   primary key (child_money_transaction_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_profile                                         */
/*==============================================================*/
create table child_profile
(
   child_profile_id     bigint(20) not null,
   payday_id            varchar(50),
   payday_freq_id       varchar(50),
   parent_profile_id    bigint(20),
   cause_id             integer,
   theme_id             varchar(60),
   profile_photo_id     bigint(20),
   birthday             date,
   pay_allowance        tinyint(4) not null,
   tie_to_chores        tinyint(4),
   allowance_amount     double,
   last_payday          date,
   pay_override         double,
   parent_matching      FLOAT default 0,
   total_share          double,
   total_spend          double,
   total_save           double,
   gender               tinyint(1) not null default 1,
   goal_setting_item    varchar(255) default NULL,
   goal_setting_image_index integer default NULL,
   goal_setting_amount  double default NULL,
   goal_setting_end_date datetime default NULL,
   primary key (child_profile_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_request                                         */
/*==============================================================*/
create table child_request
(
   child_request_id     bigint(20) not null auto_increment,
   child_profile_id     bigint(20) not null,
   child_request_status_id varchar(45) not null,
   date_requested       datetime not null,
   description          varchar(512),
   primary key (child_request_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_request_status                                  */
/*==============================================================*/
create table child_request_status
(
   child_request_status_id varchar(45) not null,
   name                 varchar(45) not null,
   description          varchar(45),
   primary key (child_request_status_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_save                                            */
/*==============================================================*/
create table child_save
(
   child_save_id        bigint(20) not null,
   investment_id        varchar(45),
   date_invested        datetime,
   amount_invested      double not null,
   date_end             date,
   withdrawn            integer,
   primary key (child_save_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_share                                           */
/*==============================================================*/
create table child_share
(
   amount               double not null,
   date_completed       datetime,
   child_share_id       bigint(20) not null,
   cause_id             integer,
   primary key (child_share_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_spend                                           */
/*==============================================================*/
create table child_spend
(
   child_spend_id       bigint(20) not null,
   store_product_id     integer,
   address_id           bigint(20),
   product_price        double not null,
   product_name         varchar(50) not null,
   product_description  text not null,
   product_quantity     integer default 1,
   primary key (child_spend_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_transaction_type                                */
/*==============================================================*/
create table child_transaction_type
(
   child_transaction_type_id varchar(45) not null,
   name                 varchar(45) not null,
   primary key (child_transaction_type_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: child_vote                                            */
/*==============================================================*/
create table child_vote
(
   id			bigint(20) not null auto_increment,
   child_profile_id	bigint(20) not null,
   cause_id		integer not null,
   allocation		double,
   primary key (id)
)
type = InnoDB;

/*==============================================================*/
/* Table: country                                               */
/*==============================================================*/
create table country
(
   country_code         varchar(10) not null,
   name                 varchar(50) not null,
   description          text,
   primary key (country_code)
)
type = InnoDB;

/*==============================================================*/
/* Table: credit_card                                           */
/*==============================================================*/
create table credit_card
(
   cc_id                bigint(20) not null,
   credit_card_type_id  varchar(45),
   name                 varchar(45),
   number               blob not null,
   display_no           varchar(50) not null,
   expiry_month         integer not null,
   is_enabled           integer,
   expiry_year          integer not null,
   primary key (cc_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: credit_card_type                                      */
/*==============================================================*/
create table credit_card_type
(
   credit_card_type_id  varchar(45) not null,
   name                 varchar(45) not null,
   primary key (credit_card_type_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: fp_theme                                              */
/*==============================================================*/
create table fp_theme
(
   theme_id             varchar(60) not null,
   name                 varchar(50),
   description          text,
   theme_small_picture_url text not null,
   theme_preview_picture_url text not null,
   primary key (theme_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: fp_theme_login                                        */
/*==============================================================*/
create table fp_theme_login
(
   theme_id             varchar(60) not null,
   child_profile_id     bigint(20) not null,
   primary key (theme_id, child_profile_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: investment                                            */
/*==============================================================*/
create table investment
(
   investment_id        varchar(45) not null,
   name                 varchar(50) not null,
   description          text not null,
   rate                 double not null,
   maturity             integer not null,
   penalty              double not null,
   minimum_amount       double not null,
   maximum_amount       double not null,
   primary key (investment_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: login                                                 */
/*==============================================================*/
create table login
(
   fp_id                bigint(20) not null auto_increment,
   address_id           bigint(20),
   account_status_id    varchar(45) not null,
   subscription_type_id varchar(45),
   role_id              varchar(45) not null,
   username             varchar(50) not null,
   password             varchar(512) not null,
   lastlogin            datetime,
   description          text,
   first_name           varchar(45),
   primary key (fp_id),
   unique key AK_key_2 (username)
)
type = InnoDB;

/*==============================================================*/
/* Table: mail_inbox                                            */
/*==============================================================*/
create table mail_inbox
(
   msg_text             varchar(512) not null,
   msg_date             datetime not null,
   mail_inbox_id        bigint(20) not null auto_increment,
   fp_id                bigint(20) not null,
   from_user_id         bigint(20),
   msg_type_id          varchar(45),
   is_read              tinyint not null,
   primary key (mail_inbox_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mail_sent                                             */
/*==============================================================*/
create table mail_sent
(
   msg_date             datetime not null,
   msg_to_id            bigint(20) not null auto_increment,
   fp_id                bigint(20),
   msg_text             varchar(512) not null,
   to_user_id           bigint(20) not null,
   primary key (msg_to_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mm_chore                                              */
/*==============================================================*/
create table mm_chore
(
   mm_chore_id          bigint(20) not null auto_increment,
   mm_chore_category_id integer,
   name                 varchar(50) not null,
   description          text not null,
   family_id            bigint(20),
   date_added           datetime,
   primary key (mm_chore_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mm_chore_category                                     */
/*==============================================================*/
create table mm_chore_category
(
   mm_chore_category_id integer not null auto_increment,
   name                 varchar(55),
   description          varchar(255),
   primary key (mm_chore_category_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mm_freq                                               */
/*==============================================================*/
create table mm_freq
(
   mm_freq_id           varchar(50) not null,
   name                 varchar(50) not null,
   description          text,
   primary key (mm_freq_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mm_gift_occasion                                      */
/*==============================================================*/
create table mm_gift_occasion
(
   gift_occasion_id     bigint(20) not null auto_increment,
   mm_gift_occasion_category_id integer,
   name                 varchar(50) not null,
   description          text not null,
   family_id            bigint(20),
   date_added           datetime,
   primary key (gift_occasion_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mm_gift_occasion_category                             */
/*==============================================================*/
create table mm_gift_occasion_category
(
   mm_gift_occasion_category_id integer not null auto_increment,
   name                 varchar(55),
   description          varchar(255),
   primary key (mm_gift_occasion_category_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mm_project                                            */
/*==============================================================*/
create table mm_project
(
   mm_project_id        bigint(20) not null auto_increment,
   mm_project_category_id integer,
   name                 varchar(50) not null,
   description          text not null,
   family_id            bigint(20),
   date_added           date,
   primary key (mm_project_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mm_project_category                                   */
/*==============================================================*/
create table mm_project_category
(
   description          varchar(255),
   name                 varchar(55),
   mm_project_category_id integer not null auto_increment,
   primary key (mm_project_category_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: mm_state                                              */
/*==============================================================*/
create table mm_state
(
   mm_state_id          varchar(50) not null,
   name                 varchar(50) not null,
   description          text,
   primary key (mm_state_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: money_transfer_request                                */
/*==============================================================*/
create table money_transfer_request
(
   money_transfer_request_id bigint(20) not null,
   from_account         varchar(40),
   to_account           varchar(40),
   amount               double,
   primary key (money_transfer_request_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: msg_type                                              */
/*==============================================================*/
create table msg_type
(
   msg_type_id          varchar(45) not null,
   name                 varchar(45),
   description          varchar(45),
   primary key (msg_type_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: ngo_profile                                           */
/*==============================================================*/
create table ngo_profile
(
   name                 text not null,
   ngo_profile_id       bigint(20) not null,
   description          text not null,
   logo_url             text not null,
   can_login            integer not null,
   primary key (ngo_profile_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: ngo_story                                             */
/*==============================================================*/
create table ngo_story
(
   ngo_story_id         bigint(20) not null auto_increment,
   ngo_story_type_id    varchar(50),
   cause_id             integer,
   date_posted          datetime not null,
   date_reviewed        datetime,
   headline             text not null,
   photo_url            text,
   video_url            text,
   story_text           text,
   description          text,
   primary key (ngo_story_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: ngo_story_type                                        */
/*==============================================================*/
create table ngo_story_type
(
   ngo_story_type_id    varchar(50) not null,
   name                 varchar(50) not null,
   description          text,
   primary key (ngo_story_type_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: orders                                                */
/*==============================================================*/
create table orders
(
   order_id             bigint(20) not null auto_increment,
   order_number         varchar(45) not null,
   fp_id                bigint(20),
   is_delivered         tinyint,
   order_date           datetime not null,
   total                double not null,
   description          varchar(255),
   primary key (order_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: parent_activity                                       */
/*==============================================================*/
create table parent_activity
(
   description          text,
   fp_id                bigint(20),
   entry_date           datetime not null,
   child_id             bigint(20),
   parent_activity_id   bigint(20) not null auto_increment,
   parent_activity_type_id varchar(20),
   primary key (parent_activity_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: parent_activity_type                                  */
/*==============================================================*/
create table parent_activity_type
(
   parent_activity_type_id varchar(20) not null,
   name                 varchar(50) not null,
   description          text not null,
   primary key (parent_activity_type_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: parent_profile                                        */
/*==============================================================*/
create table parent_profile
(
   parent_profile_id    bigint(20) not null,
   sec_question_id      tinyint(4),
   site_alias           varchar(50),
   sec_answer           varchar(50) not null,
   notify_allowance     tinyint(4) not null,
   notify_requests      tinyint(4) not null,
   notify_spendshare    tinyint(4) not null,
   max_req_child        tinyint(4) not null,
   parent_nickname      varchar(45),
   activation_key       varchar(20),
   subscription_date    date not null,
   subscription_expiry_date date,
   primary key (parent_profile_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: parent_statement                                      */
/*==============================================================*/
create table parent_statement
(
   parent_statement_id  bigint(20) not null auto_increment,
   entry_date           datetime not null,
   child_id             bigint(20) not null,
   fp_id                bigint(20),
   amount               double,
   account              varchar(10),
   description          text,
   primary key (parent_statement_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: payday                                                */
/*==============================================================*/
create table payday
(
   name                 varchar(50) not null,
   description          text not null,
   payday_id            varchar(50) not null,
   primary key (payday_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: payday_freq                                           */
/*==============================================================*/
create table payday_freq
(
   payday_freq_id       varchar(50) not null,
   name                 varchar(50),
   description          text,
   primary key (payday_freq_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: payment_method                                        */
/*==============================================================*/
create table payment_method
(
   payment_method_id    bigint(20) not null auto_increment,
   fp_id                bigint(20) not null,
   payment_type_id      varchar(50),
   address_id           bigint(20),
   is_used              tinyint not null,
   zip_code             varchar(15) not null,
   primary key (payment_method_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: payment_type                                          */
/*==============================================================*/
create table payment_type
(
   payment_type_id      varchar(50) not null,
   name                 varchar(50) not null,
   description          text,
   primary key (payment_type_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: privilege                                             */
/*==============================================================*/
create table privilege
(
   privilege_id         integer not null auto_increment,
   parent_id            integer,
   privilege_key        varchar(50),
   is_menu              integer,
   primary key (privilege_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   product_id           integer not null auto_increment,
   store_id             integer,
   product_category_id  integer,
   price                double not null,
   name                 varchar(50),
   description  		text not null,
   image_url            varchar(255),
   primary key (product_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: product_category                                      */
/*==============================================================*/
create table product_category
(
   product_category_id  integer not null auto_increment,
   name                 varchar(55),
   description          varchar(255),
   primary key (product_category_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: product_order                                         */
/*==============================================================*/
create table product_order
(
   product_order_id     bigint(20) not null,
   price                double,
   product_id           integer,
   child_spend_id       bigint(20),
   quantity             integer,
   primary key (product_order_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: profile_photo                                         */
/*==============================================================*/
create table profile_photo
(
   profile_photo_id     bigint(20) not null auto_increment,
   name                 varchar(50),
   url                  text,
   description          text,
   primary key (profile_photo_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: profile_photo_login                                   */
/*==============================================================*/
create table profile_photo_login
(
   profile_photo_id     bigint(20) not null,
   child_profile_id     bigint(20) not null,
   primary key (profile_photo_id, child_profile_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: registration_order                                    */
/*==============================================================*/
create table registration_order
(
   registration_order_id bigint(20) not null,
   price                double not null,
   primary key (registration_order_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   role_id              varchar(45) not null,
   name                 varchar(45) not null,
   description          varchar(45),
   primary key (role_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: role_privilege                                        */
/*==============================================================*/
create table role_privilege
(
   privilege_id         integer not null,
   role_id              varchar(45) not null,
   primary key (privilege_id, role_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: sec_question                                          */
/*==============================================================*/
create table sec_question
(
   sec_question_id      tinyint(4) not null auto_increment,
   sec_question_text    text,
   primary key (sec_question_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: state                                                 */
/*==============================================================*/
create table state
(
   state_code           varchar(10) not null,
   country_code         varchar(10),
   name                 varchar(50) not null,
   description          text,
   primary key (state_code)
)
type = InnoDB;

/*==============================================================*/
/* Table: store                                                 */
/*==============================================================*/
create table store
(
   store_id             integer not null auto_increment,
   name                 varchar(50) not null,
   description          text not null,
   url                  text not null,
   company_url          text,
   company_logo_url     text,
   primary key (store_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: subscription_type                                     */
/*==============================================================*/
create table subscription_type
(
   subscription_type_id varchar(45) not null,
   name                 varchar(45) not null,
   description          varchar(255),
   price                double,
   primary key (subscription_type_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: sys_template                                          */
/*==============================================================*/
create table sys_template
(
   sys_template_id      varchar(50) not null,
   description          varchar(255) not null,
   design               text not null,
   subject              varchar(50) not null,
   primary key (sys_template_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: tip                                                   */
/*==============================================================*/
create table tip
(
   tip_id               integer not null auto_increment,
   tip_section_id       varchar(50),
   tip_data             text not null,
   primary key (tip_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: tip_section                                           */
/*==============================================================*/
create table tip_section
(
   tip_section_id       varchar(50) not null,
   section_name         varchar(50) not null,
   primary key (tip_section_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: transaction                                           */
/*==============================================================*/
create table transaction
(
   transaction_id       bigint(20) not null auto_increment,
   payment_method_id    bigint(20),
   transaction_type_id  varchar(50),
   transaction_status_id varchar(50),
   order_id             bigint(20),
   transaction_date     datetime,
   amount               double,
   gate_way_order_number varchar(100),
   num_retries          integer not null default 0,
   last_try_date        date,
   gate_way_r_ref       varchar(50),
   primary key (transaction_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: transaction_status                                    */
/*==============================================================*/
create table transaction_status
(
   transaction_status_id varchar(50) not null,
   name                 varchar(50) not null,
   primary key (transaction_status_id)
)
type = InnoDB;

/*==============================================================*/
/* Table: transaction_type                                      */
/*==============================================================*/
create table transaction_type
(
   transaction_type_id  varchar(50) not null,
   name                 varchar(50) not null,
   primary key (transaction_type_id)
)
type = InnoDB;


/*==============================================================*/
/* Table: news                                                  */
/*==============================================================*/
create table  news (
  news_id        bigint(20)   NOT NULL auto_increment,
  news_date      datetime     NOT NULL,
  news_content   varchar(512) NOT NULL,
  primary key (news_id)
)
type=InnoDB;

/*==============================================================*/
/* Table: child_news                                            */
/*==============================================================*/
create table  child_news (
  news_id           bigint(20)   NOT NULL,
  child_profile_id  bigint(20) NOT NULL
)
type=InnoDB;

/*==============================================================*/
/* Table: child_wall                                            */
/*==============================================================*/
create table  child_wall (
  message_id        bigint(20)   NOT NULL auto_increment,
  sender_id         bigint(20)   NOT NULL,
  receiver_id       bigint(20)   NOT NULL,
  message_date      datetime NOT NULL,
  message_content   varchar(512) NOT NULL,
  primary key (message_id)
)
type=InnoDB;



alter table address add constraint FK_address_type_address foreign key (address_type_id)
      references address_type (address_type_id) on delete restrict on update restrict;

alter table address add constraint FK_country_address foreign key (country_code)
      references country (country_code) on delete restrict on update restrict;

alter table address add constraint FK_state_address foreign key (state_code)
      references state (state_code) on delete restrict on update restrict;

alter table allocation_request add constraint FK_child_request_allocation_request foreign key (allocation_request_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table allowance_request add constraint FK_child_request_allowance_request foreign key (allowance_request_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table allowance_request add constraint FK_payday_allowance_request foreign key (payday_id)
      references payday (payday_id) on delete restrict on update restrict;

alter table allowance_request add constraint FK_payday_freq_allowance_request foreign key (payday_freq_id)
      references payday_freq (payday_freq_id) on delete restrict on update restrict;

alter table bank_account add constraint FK_payment_method_bank_account foreign key (bank_account_id)
      references payment_method (payment_method_id) on delete restrict on update restrict;

alter table cause add constraint FK_cause_category_cause foreign key (cause_category_id)
      references cause_category (cause_category_id) on delete restrict on update restrict;

alter table cause add constraint FK_cause_cause_state foreign key (cause_state_id)
      references cause_state (cause_state_id) on delete restrict on update restrict;

alter table cause add constraint FK_ngo_profile_cause foreign key (ngo_profile_id)
      references ngo_profile (ngo_profile_id) on delete restrict on update restrict;

alter table child_allocation add constraint FK_child_profile_child_allocation foreign key (child_allocation_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;

alter table child_friend add constraint FK_login_child_friend foreign key (fp_id)
      references login (fp_id) on delete restrict on update restrict;

alter table child_friend add constraint FK_login_child_friend2 foreign key (friend_id)
      references login (fp_id) on delete restrict on update restrict;

alter table child_mm_chore add constraint FK_child_request_child_chore foreign key (child_mm_chore_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table child_mm_chore add constraint FK_mm_chore_child_mm_chore foreign key (mm_chore_id)
      references mm_chore (mm_chore_id) on delete restrict on update restrict;

alter table child_mm_chore add constraint FK_mm_freq_mm_chore foreign key (mm_freq_id)
      references mm_freq (mm_freq_id) on delete restrict on update restrict;

alter table child_mm_chore add constraint FK_mm_state_mm_chore foreign key (mm_state_id)
      references mm_state (mm_state_id) on delete restrict on update restrict;

alter table child_mm_gift add constraint FK_child_request_child_gift foreign key (child_mm_gift_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table child_mm_gift add constraint FK_mm_gift_occasion_child_mm_gift foreign key (gift_occasion_id)
      references mm_gift_occasion (gift_occasion_id) on delete restrict on update restrict;

alter table child_mm_gift add constraint FK_mm_state_child_mm_gift foreign key (mm_state_id)
      references mm_state (mm_state_id) on delete restrict on update restrict;

alter table child_mm_project add constraint FK_child_request_child_project foreign key (child_mm_project_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table child_mm_project add constraint FK_mm_project_child_mm_project foreign key (mm_project_id)
      references mm_project (mm_project_id) on delete restrict on update restrict;

alter table child_mm_project add constraint FK_mm_state_mm_project foreign key (mm_state_id)
      references mm_state (mm_state_id) on delete restrict on update restrict;

alter table child_money_transaction add constraint FK_child_profile_child_money_transactions foreign key (child_profile_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;

alter table child_money_transaction add constraint FK_child_transaction_type_child_money_transaction foreign key (child_transaction_type_id)
      references child_transaction_type (child_transaction_type_id) on delete restrict on update restrict;

alter table child_profile add constraint FK_cause_child_profile foreign key (cause_id)
      references cause (cause_id) on delete restrict on update restrict;

alter table child_profile add constraint FK_child_profile_fp_photo foreign key (profile_photo_id)
      references profile_photo (profile_photo_id) on delete restrict on update restrict;

alter table child_profile add constraint FK_child_profile_fp_theme foreign key (theme_id)
      references fp_theme (theme_id) on delete restrict on update restrict;

alter table child_profile add constraint FK_login_child_profile foreign key (child_profile_id)
      references login (fp_id) on delete restrict on update restrict;

alter table child_profile add constraint FK_parent_profile_child_profile foreign key (parent_profile_id)
      references parent_profile (parent_profile_id) on delete restrict on update restrict;

alter table child_profile add constraint FK_payday_child_profile foreign key (payday_id)
      references payday (payday_id) on delete restrict on update restrict;

alter table child_profile add constraint FK_payday_freq_child_profile foreign key (payday_freq_id)
      references payday_freq (payday_freq_id) on delete restrict on update restrict;

alter table child_request add constraint FK_child_profile_child_request foreign key (child_profile_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;

alter table child_request add constraint FK_child_request_status_request foreign key (child_request_status_id)
      references child_request_status (child_request_status_id) on delete restrict on update restrict;

alter table child_save add constraint FK_child_request_child_save foreign key (child_save_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table child_save add constraint FK_investment_child_save foreign key (investment_id)
      references investment (investment_id) on delete restrict on update restrict;

alter table child_share add constraint FK_cause_child_share foreign key (cause_id)
      references cause (cause_id) on delete restrict on update restrict;

alter table child_share add constraint FK_child_request_child_share foreign key (child_share_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table child_spend add constraint FK_address_child_spend foreign key (address_id)
      references address (address_id) on delete restrict on update restrict;

alter table child_spend add constraint FK_child_request_child_spend foreign key (child_spend_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table child_spend add constraint FK_store_product_child_spend foreign key (store_product_id)
      references product (product_id) on delete restrict on update restrict;

alter table child_vote add constraint FK_child_vote_child_profile foreign key (child_profile_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;

alter table child_vote add constraint FK_child_vote_cause foreign key (cause_id)
      references cause (cause_id) on delete restrict on update restrict;

alter table credit_card add constraint FK_credit_card_description_credit_card foreign key (credit_card_type_id)
      references credit_card_type (credit_card_type_id) on delete restrict on update restrict;

alter table credit_card add constraint FK_payment_method_credit_card foreign key (cc_id)
      references payment_method (payment_method_id) on delete restrict on update restrict;

alter table fp_theme_login add constraint FK_fp_theme_login_child_profile foreign key (child_profile_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;

alter table fp_theme_login add constraint FK_fp_theme_login_fp_theme foreign key (theme_id)
      references fp_theme (theme_id) on delete restrict on update restrict;

alter table login add constraint FK_account_status_login foreign key (account_status_id)
      references account_status (account_status_id) on delete restrict on update restrict;

alter table login add constraint FK_address_login foreign key (address_id)
      references address (address_id) on delete restrict on update restrict;

alter table login add constraint FK_role_login foreign key (role_id)
      references role (role_id) on delete restrict on update restrict;

alter table login add constraint FK_subscription_type_login foreign key (subscription_type_id)
      references subscription_type (subscription_type_id) on delete restrict on update restrict;

alter table mail_inbox add constraint FK_login_mail_inbox foreign key (fp_id)
      references login (fp_id) on delete restrict on update restrict;

alter table mail_inbox add constraint FK_login_mail_inbox_2 foreign key (from_user_id)
      references login (fp_id) on delete restrict on update restrict;

alter table mail_inbox add constraint FK_msg_type_mail_inbox foreign key (msg_type_id)
      references msg_type (msg_type_id) on delete restrict on update restrict;

alter table mail_sent add constraint FK_login_mail_sent foreign key (fp_id)
      references login (fp_id) on delete restrict on update restrict;

alter table mail_sent add constraint FK_login_mail_sent_2 foreign key (to_user_id)
      references login (fp_id) on delete restrict on update restrict;

alter table mm_chore add constraint FK_mm_chore_cat_mm_chore foreign key (mm_chore_category_id)
      references mm_chore_category (mm_chore_category_id) on delete restrict on update restrict;

alter table mm_gift_occasion add constraint FK_occasion_category_mm_gift_occasion foreign key (mm_gift_occasion_category_id)
      references mm_gift_occasion_category (mm_gift_occasion_category_id) on delete restrict on update restrict;

alter table mm_project add constraint FK_parent_profile_mm_project foreign key (family_id)
      references parent_profile (parent_profile_id) on delete restrict on update restrict;

alter table mm_project add constraint FK_project_category_mm_project foreign key (mm_project_category_id)
      references mm_project_category (mm_project_category_id) on delete restrict on update restrict;

alter table money_transfer_request add constraint FK_child_request_money_transfer_request foreign key (money_transfer_request_id)
      references child_request (child_request_id) on delete restrict on update restrict;

alter table ngo_profile add constraint FK_login_ngo_profile foreign key (ngo_profile_id)
      references login (fp_id) on delete restrict on update restrict;

alter table ngo_story add constraint FK_cause_story foreign key (cause_id)
      references cause (cause_id) on delete restrict on update restrict;

alter table ngo_story add constraint FK_story_type_story foreign key (ngo_story_type_id)
      references ngo_story_type (ngo_story_type_id) on delete restrict on update restrict;

alter table orders add constraint FK_login_orders foreign key (fp_id)
      references login (fp_id) on delete restrict on update restrict;

alter table parent_activity add constraint FK_login_parent_activity foreign key (fp_id)
      references login (fp_id) on delete restrict on update restrict;

alter table parent_activity add constraint FK_parent_activity_type_parent_activity foreign key (parent_activity_type_id)
      references parent_activity_type (parent_activity_type_id) on delete restrict on update restrict;

alter table parent_profile add constraint FK_login_parent_profile foreign key (parent_profile_id)
      references login (fp_id) on delete restrict on update restrict;

alter table parent_profile add constraint FK_sec_question_parent_profile foreign key (sec_question_id)
      references sec_question (sec_question_id) on delete restrict on update restrict;

alter table parent_statement add constraint FK_login_parent_statement foreign key (child_id)
      references login (fp_id) on delete restrict on update restrict;

alter table parent_statement add constraint FK_login_parent_statement2 foreign key (fp_id)
      references login (fp_id) on delete restrict on update restrict;

alter table payment_method add constraint FK_address_payment_method foreign key (address_id)
      references address (address_id) on delete restrict on update restrict;

alter table payment_method add constraint FK_login_payment_method foreign key (fp_id)
      references login (fp_id) on delete restrict on update restrict;

alter table payment_method add constraint FK_payment_type_payment_method foreign key (payment_type_id)
      references payment_type (payment_type_id) on delete restrict on update restrict;

alter table privilege add constraint FK_privilege_privilege foreign key (parent_id)
      references privilege (privilege_id) on delete restrict on update restrict;

alter table product add constraint FK_login_store_product foreign key (store_id)
      references store (store_id) on delete restrict on update restrict;

alter table product add constraint FK_product_category_store_product foreign key (product_category_id)
      references product_category (product_category_id) on delete restrict on update restrict;

alter table product_order add constraint FK_child_spend_product_order foreign key (child_spend_id)
      references child_spend (child_spend_id) on delete restrict on update restrict;

alter table product_order add constraint FK_order_product_order foreign key (product_order_id)
      references orders (order_id) on delete restrict on update restrict;

alter table product_order add constraint FK_product_product_order foreign key (product_id)
      references product (product_id) on delete restrict on update restrict;

alter table profile_photo_login add constraint FK_profile_photo_login_child_profile foreign key (child_profile_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;

alter table profile_photo_login add constraint FK_profile_photo_profile_photo_login foreign key (profile_photo_id)
      references profile_photo (profile_photo_id) on delete restrict on update restrict;

alter table registration_order add constraint FK_order_registration_order foreign key (registration_order_id)
      references orders (order_id) on delete restrict on update restrict;

alter table role_privilege add constraint FK_privilege_role_privilege foreign key (privilege_id)
      references privilege (privilege_id) on delete restrict on update restrict;

alter table role_privilege add constraint FK_role_role_privilege foreign key (role_id)
      references role (role_id) on delete restrict on update restrict;

alter table state add constraint FK_country_state foreign key (country_code)
      references country (country_code) on delete restrict on update restrict;

alter table tip add constraint FK_tip_tip_section foreign key (tip_section_id)
      references tip_section (tip_section_id) on delete restrict on update restrict;

alter table transaction add constraint FK_orders_transaction foreign key (order_id)
      references orders (order_id) on delete restrict on update restrict;

alter table transaction add constraint FK_payment_method_transaction foreign key (payment_method_id)
      references payment_method (payment_method_id) on delete restrict on update restrict;

alter table transaction add constraint FK_transaction_status_transaction foreign key (transaction_status_id)
      references transaction_status (transaction_status_id) on delete restrict on update restrict;

alter table transaction add constraint FK_transaction_type_transaction foreign key (transaction_type_id)
      references transaction_type (transaction_type_id) on delete restrict on update restrict;


alter table child_news add constraint FK_news_child_news foreign key (news_id)
      references news (news_id) on delete restrict on update restrict;

alter table child_news add constraint FK_child_profile_child_news foreign key (child_profile_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;

alter table child_wall add constraint FK_child_profile_sender_child_wall foreign key (sender_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;

alter table child_wall add constraint FK_child_profile_receiver_child_wall foreign key (receiver_id)
      references child_profile (child_profile_id) on delete restrict on update restrict;




insert into `address_type` (`address_type_id`, `name`, `description`)  			values('BILLING', 'Billing Address', 'Billing Address');
insert into `address_type` (`address_type_id`, `name`, `description`)  			values('SHIPPING', 'Shipping Address', 'Shipping Address');

insert into `mm_freq` (`mm_freq_id`, `name`, `description`)  				values('DAILY', 'Daily', 'Daily');
insert into `mm_freq` (`mm_freq_id`, `name`, `description`)  				values('ONCEAMONTH', 'Once a Month', 'Once a Month');
insert into `mm_freq` (`mm_freq_id`, `name`, `description`)  				values('ONCEAWEEK', 'Once a Week', 'Once a Week');
insert into `mm_freq` (`mm_freq_id`, `name`, `description`)  				values('ONETIME', 'One Time', 'One Time');
insert into `mm_freq` (`mm_freq_id`, `name`, `description`)  				values('WEEKDAYS', 'Week Days', 'Week Days');
insert into `mm_state` (`mm_state_id`, `name`, `description`)  			values('APPROVED', 'Approved', 'Approved');
insert into `mm_state` (`mm_state_id`, `name`, `description`)  			values('CANCELED', 'Canceled', 'Canceled');
insert into `mm_state` (`mm_state_id`, `name`, `description`)  			values('DENIED', 'Denied', 'Denied');
insert into `mm_state` (`mm_state_id`, `name`, `description`)  			values('PENDING', 'Pending', 'Pending');
-- insert into `msg_type` (`msg_type_id`, `name`, `description`) 					values('ALERT', 'Alert', 'Alert');
insert into `msg_type` (`msg_type_id`, `name`, `description`)  					values('REQUEST', 'REQUEST', 'REQUEST');
insert into `msg_type` (`msg_type_id`, `name`, `description`)  					values('EMAIL', 'Email', 'Email');
insert into `ngo_story_type` (`ngo_story_type_id`, `name`, `description`)  		values('NEWS', 'News', 'Photo');
insert into `ngo_story_type` (`ngo_story_type_id`, `name`, `description`)  		values('PHOTO', 'Photo', 'Photo');
insert into `ngo_story_type` (`ngo_story_type_id`, `name`, `description`)  		values('VIDEO', 'Video', 'Video');
insert into `payday` (`payday_id`, `name`, `description`)  	values('FIRSTANDMID', '1st and Mid Days of the Month', '1st and Mid');
insert into `payday` (`payday_id`, `name`, `description`)  	values('FIRST', 'First Day of the Month', 'First Day of the Month');
insert into `payday` (`payday_id`, `name`, `description`)  	values('FRI', 'Friday', 'Friday');
insert into `payday` (`payday_id`,  `name`, `description`)  values('LAST', 'Last Day of the Month', 'Last Day of the Month');
insert into `payday` (`payday_id`, `name`, `description`)  	values('MIDANDLAST', 'Mid and Last Days of the Month', 'Mid and Last');
insert into `payday` (`payday_id`, `name`, `description`)  	values('MON', 'Monday', 'Monday');
insert into `payday` (`payday_id`, `name`, `description`)  	values('SAT', 'Saturday', 'Saturday');
insert into `payday` (`payday_id`, `name`, `description`)  	values('SUN', 'Sunday', 'Sunday');
insert into `payday` (`payday_id`, `name`, `description`)  	values('THU', 'Thursday', 'Thursday');
insert into `payday` (`payday_id`, `name`, `description`)  	values('TUE', 'Tuesday', 'Tuesday');
insert into `payday` (`payday_id`, `name`, `description`)  	values('WED', 'Wednesday', 'Wednesday');
insert into `payday_freq` (`payday_freq_id`, `name`, `description`)  			values('BIWEEKLY', 'Biweekly', 'Biweekly');
insert into `payday_freq` (`payday_freq_id`, `name`, `description`)  			values('MONTHLY', 'Monthly', 'Montlhy');
insert into `payday_freq` (`payday_freq_id`, `name`, `description`)  			values('WEEKLY', 'Weekly', 'Weekly');
insert into `payment_type` (`payment_type_id`, `name`, `description`)  			values('BANK', 'Bank Account', 'Bank Account');
insert into `payment_type` (`payment_type_id`, `name`, `description`)  			values('CC', 'Credit Card', 'Credit Card');
-- insert into `payment_type` (`payment_type_id`, `name`, `description`)  			values('PAYPAL', 'Paypal', 'Paypal');
insert into `account_status` (`account_status_id`, `name`, `description`)  		values('CANCELED', 'Canceled', 'Canceled');
insert into `account_status` (`account_status_id`, `name`, `description`)  		values('DISABLED_BY_PARENT', 'DISABLED_BY_PARENT', 'DISABLED_BY_PARENT');
insert into `account_status` (`account_status_id`, `name`, `description`)  		values('ACTIVE', 'Active', 'Active');
insert into `account_status` (`account_status_id`, `name`, `description`)  		values('WAITING_ACTIVATION', 'Waiting activation', 'Waiting activation');

insert into sec_question (sec_question_text) values ('What is your favorite pet\'s name?');
insert into sec_question (sec_question_text) values ('What is your first car?');

INSERT INTO country(country_code,name) VALUES ('US', 'United States');
/*
INSERT INTO country(country_code,name) VALUES ('CA', 'Canada');
INSERT INTO country(country_code,name) VALUES ('AF', 'Afghanistan');
INSERT INTO country(country_code,name) VALUES ('AL', 'Albania');
INSERT INTO country(country_code,name) VALUES ('DZ', 'Algeria');
INSERT INTO country(country_code,name) VALUES ('DS', 'American Samoa');
INSERT INTO country(country_code,name) VALUES ('AD', 'Andorra');
INSERT INTO country(country_code,name) VALUES ('AO', 'Angola');
INSERT INTO country(country_code,name) VALUES ('AI', 'Anguilla');
INSERT INTO country(country_code,name) VALUES ('AQ', 'Antarctica');
INSERT INTO country(country_code,name) VALUES ('AG', 'Antigua and/or Barbuda');
INSERT INTO country(country_code,name) VALUES ('AR', 'Argentina');
INSERT INTO country(country_code,name) VALUES ('AM', 'Armenia');
INSERT INTO country(country_code,name) VALUES ('AW', 'Aruba');
INSERT INTO country(country_code,name) VALUES ('AU', 'Australia');
INSERT INTO country(country_code,name) VALUES ('AT', 'Austria');
INSERT INTO country(country_code,name) VALUES ('AZ', 'Azerbaijan');
INSERT INTO country(country_code,name) VALUES ('BS', 'Bahamas');
INSERT INTO country(country_code,name) VALUES ('BH', 'Bahrain');
INSERT INTO country(country_code,name) VALUES ('BD', 'Bangladesh');
INSERT INTO country(country_code,name) VALUES ('BB', 'Barbados');
INSERT INTO country(country_code,name) VALUES ('BY', 'Belarus');
INSERT INTO country(country_code,name) VALUES ('BE', 'Belgium');
INSERT INTO country(country_code,name) VALUES ('BZ', 'Belize');
INSERT INTO country(country_code,name) VALUES ('BJ', 'Benin');
INSERT INTO country(country_code,name) VALUES ('BM', 'Bermuda');
INSERT INTO country(country_code,name) VALUES ('BT', 'Bhutan');
INSERT INTO country(country_code,name) VALUES ('BO', 'Bolivia');
INSERT INTO country(country_code,name) VALUES ('BA', 'Bosnia and Herzegovina');
INSERT INTO country(country_code,name) VALUES ('BW', 'Botswana');
INSERT INTO country(country_code,name) VALUES ('BV', 'Bouvet Island');
INSERT INTO country(country_code,name) VALUES ('BR', 'Brazil');
INSERT INTO country(country_code,name) VALUES ('IO', 'British lndian Ocean Territory');
INSERT INTO country(country_code,name) VALUES ('BN', 'Brunei Darussalam');
INSERT INTO country(country_code,name) VALUES ('BG', 'Bulgaria');
INSERT INTO country(country_code,name) VALUES ('BF', 'Burkina Faso');
INSERT INTO country(country_code,name) VALUES ('BI', 'Burundi');
INSERT INTO country(country_code,name) VALUES ('KH', 'Cambodia');
INSERT INTO country(country_code,name) VALUES ('CM', 'Cameroon');
INSERT INTO country(country_code,name) VALUES ('CV', 'Cape Verde');
INSERT INTO country(country_code,name) VALUES ('KY', 'Cayman Islands');
INSERT INTO country(country_code,name) VALUES ('CF', 'Central African Republic');
INSERT INTO country(country_code,name) VALUES ('TD', 'Chad');
INSERT INTO country(country_code,name) VALUES ('CL', 'Chile');
INSERT INTO country(country_code,name) VALUES ('CN', 'China');
INSERT INTO country(country_code,name) VALUES ('CX', 'Christmas Island');
INSERT INTO country(country_code,name) VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO country(country_code,name) VALUES ('CO', 'Colombia');
INSERT INTO country(country_code,name) VALUES ('KM', 'Comoros');
INSERT INTO country(country_code,name) VALUES ('CG', 'Congo');
INSERT INTO country(country_code,name) VALUES ('CK', 'Cook Islands');
INSERT INTO country(country_code,name) VALUES ('CR', 'Costa Rica');
INSERT INTO country(country_code,name) VALUES ('HR', 'Croatia (Hrvatska)');
INSERT INTO country(country_code,name) VALUES ('CU', 'Cuba');
INSERT INTO country(country_code,name) VALUES ('CY', 'Cyprus');
INSERT INTO country(country_code,name) VALUES ('CZ', 'Czech Republic');
INSERT INTO country(country_code,name) VALUES ('DK', 'Denmark');
INSERT INTO country(country_code,name) VALUES ('DJ', 'Djibouti');
INSERT INTO country(country_code,name) VALUES ('DM', 'Dominica');
INSERT INTO country(country_code,name) VALUES ('DO', 'Dominican Republic');
INSERT INTO country(country_code,name) VALUES ('TP', 'East Timor');
INSERT INTO country(country_code,name) VALUES ('EC', 'Ecudaor');
INSERT INTO country(country_code,name) VALUES ('EG', 'Egypt');
INSERT INTO country(country_code,name) VALUES ('SV', 'El Salvador');
INSERT INTO country(country_code,name) VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO country(country_code,name) VALUES ('ER', 'Eritrea');
INSERT INTO country(country_code,name) VALUES ('EE', 'Estonia');
INSERT INTO country(country_code,name) VALUES ('ET', 'Ethiopia');
INSERT INTO country(country_code,name) VALUES ('FK', 'Falkland Islands (Malvinas)');
INSERT INTO country(country_code,name) VALUES ('FO', 'Faroe Islands');
INSERT INTO country(country_code,name) VALUES ('FJ', 'Fiji');
INSERT INTO country(country_code,name) VALUES ('FI', 'Finland');
INSERT INTO country(country_code,name) VALUES ('FR', 'France');
INSERT INTO country(country_code,name) VALUES ('FX', 'France, Metropolitan');
INSERT INTO country(country_code,name) VALUES ('GF', 'French Guiana');
INSERT INTO country(country_code,name) VALUES ('PF', 'French Polynesia');
INSERT INTO country(country_code,name) VALUES ('TF', 'French Southern Territories');
INSERT INTO country(country_code,name) VALUES ('GA', 'Gabon');
INSERT INTO country(country_code,name) VALUES ('GM', 'Gambia');
INSERT INTO country(country_code,name) VALUES ('GE', 'Georgia');
INSERT INTO country(country_code,name) VALUES ('DE', 'Germany');
INSERT INTO country(country_code,name) VALUES ('GH', 'Ghana');
INSERT INTO country(country_code,name) VALUES ('GI', 'Gibraltar');
INSERT INTO country(country_code,name) VALUES ('GR', 'Greece');
INSERT INTO country(country_code,name) VALUES ('GL', 'Greenland');
INSERT INTO country(country_code,name) VALUES ('GD', 'Grenada');
INSERT INTO country(country_code,name) VALUES ('GP', 'Guadeloupe');
INSERT INTO country(country_code,name) VALUES ('GU', 'Guam');
INSERT INTO country(country_code,name) VALUES ('GT', 'Guatemala');
INSERT INTO country(country_code,name) VALUES ('GN', 'Guinea');
INSERT INTO country(country_code,name) VALUES ('GW', 'Guinea-Bissau');
INSERT INTO country(country_code,name) VALUES ('GY', 'Guyana');
INSERT INTO country(country_code,name) VALUES ('HT', 'Haiti');
INSERT INTO country(country_code,name) VALUES ('HM', 'Heard and Mc Donald Islands');
INSERT INTO country(country_code,name) VALUES ('HN', 'Honduras');
INSERT INTO country(country_code,name) VALUES ('HK', 'Hong Kong');
INSERT INTO country(country_code,name) VALUES ('HU', 'Hungary');
INSERT INTO country(country_code,name) VALUES ('IS', 'Iceland');
INSERT INTO country(country_code,name) VALUES ('IN', 'India');
INSERT INTO country(country_code,name) VALUES ( 'ID', 'Indonesia');
INSERT INTO country(country_code,name) VALUES ( 'IR', 'Iran (Islamic Republic of)');
INSERT INTO country(country_code,name) VALUES ( 'IQ', 'Iraq');
INSERT INTO country(country_code,name) VALUES ( 'IE', 'Ireland');
INSERT INTO country(country_code,name) VALUES ( 'IL', 'Israel');
INSERT INTO country(country_code,name) VALUES ( 'IT', 'Italy');
INSERT INTO country(country_code,name) VALUES ( 'CI', 'Ivory Coast');
INSERT INTO country(country_code,name) VALUES ( 'JM', 'Jamaica');
INSERT INTO country(country_code,name) VALUES ( 'JP', 'Japan');
INSERT INTO country(country_code,name) VALUES ( 'JO', 'Jordan');
INSERT INTO country(country_code,name) VALUES ( 'KZ', 'Kazakhstan');
INSERT INTO country(country_code,name) VALUES ( 'KE', 'Kenya');
INSERT INTO country(country_code,name) VALUES ( 'KI', 'Kiribati');
INSERT INTO country(country_code,name) VALUES ( 'KP', 'Korea, Democratic People''s Republic of');
INSERT INTO country(country_code,name) VALUES ( 'KR', 'Korea, Republic of');
INSERT INTO country(country_code,name) VALUES ( 'KW', 'Kuwait');
INSERT INTO country(country_code,name) VALUES ( 'KG', 'Kyrgyzstan');
INSERT INTO country(country_code,name) VALUES ( 'LA', 'Lao People''s Democratic Republic');
INSERT INTO country(country_code,name) VALUES ( 'LV', 'Latvia');
INSERT INTO country(country_code,name) VALUES ( 'LB', 'Lebanon');
INSERT INTO country(country_code,name) VALUES ( 'LS', 'Lesotho');
INSERT INTO country(country_code,name) VALUES ( 'LR', 'Liberia');
INSERT INTO country(country_code,name) VALUES ( 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO country(country_code,name) VALUES ( 'LI', 'Liechtenstein');
INSERT INTO country(country_code,name) VALUES ( 'LT', 'Lithuania');
INSERT INTO country(country_code,name) VALUES ( 'LU', 'Luxembourg');
INSERT INTO country(country_code,name) VALUES ( 'MO', 'Macau');
INSERT INTO country(country_code,name) VALUES ( 'MK', 'Macedonia');
INSERT INTO country(country_code,name) VALUES ( 'MG', 'Madagascar');
INSERT INTO country(country_code,name) VALUES ( 'MW', 'Malawi');
INSERT INTO country(country_code,name) VALUES ( 'MY', 'Malaysia');
INSERT INTO country(country_code,name) VALUES ( 'MV', 'Maldives');
INSERT INTO country(country_code,name) VALUES ( 'ML', 'Mali');
INSERT INTO country(country_code,name) VALUES ( 'MT', 'Malta');
INSERT INTO country(country_code,name) VALUES ( 'MH', 'Marshall Islands');
INSERT INTO country(country_code,name) VALUES ( 'MQ', 'Martinique');
INSERT INTO country(country_code,name) VALUES ( 'MR', 'Mauritania');
INSERT INTO country(country_code,name) VALUES ( 'MU', 'Mauritius');
INSERT INTO country(country_code,name) VALUES ( 'TY', 'Mayotte');
INSERT INTO country(country_code,name) VALUES ( 'MX', 'Mexico');
INSERT INTO country(country_code,name) VALUES ( 'FM', 'Micronesia, Federated States of');
INSERT INTO country(country_code,name) VALUES ( 'MD', 'Moldova, Republic of');
INSERT INTO country(country_code,name) VALUES ( 'MC', 'Monaco');
INSERT INTO country(country_code,name) VALUES ( 'MN', 'Mongolia');
INSERT INTO country(country_code,name) VALUES ( 'MS', 'Montserrat');
INSERT INTO country(country_code,name) VALUES ( 'MA', 'Morocco');
INSERT INTO country(country_code,name) VALUES ( 'MZ', 'Mozambique');
INSERT INTO country(country_code,name) VALUES ( 'MM', 'Myanmar');
INSERT INTO country(country_code,name) VALUES ( 'NA', 'Namibia');
INSERT INTO country(country_code,name) VALUES ( 'NR', 'Nauru');
INSERT INTO country(country_code,name) VALUES ( 'NP', 'Nepal');
INSERT INTO country(country_code,name) VALUES ( 'NL', 'Netherlands');
INSERT INTO country(country_code,name) VALUES ( 'AN', 'Netherlands Antilles');
INSERT INTO country(country_code,name) VALUES ( 'NC', 'New Caledonia');
INSERT INTO country(country_code,name) VALUES ( 'NZ', 'New Zealand');
INSERT INTO country(country_code,name) VALUES ( 'NI', 'Nicaragua');
INSERT INTO country(country_code,name) VALUES ( 'NE', 'Niger');
INSERT INTO country(country_code,name) VALUES ( 'NG', 'Nigeria');
INSERT INTO country(country_code,name) VALUES ( 'NU', 'Niue');
INSERT INTO country(country_code,name) VALUES ( 'NF', 'Norfork Island');
INSERT INTO country(country_code,name) VALUES ( 'MP', 'Northern Mariana Islands');
INSERT INTO country(country_code,name) VALUES ( 'NO', 'Norway');
INSERT INTO country(country_code,name) VALUES ( 'OM', 'Oman');
INSERT INTO country(country_code,name) VALUES ( 'PK', 'Pakistan');
INSERT INTO country(country_code,name) VALUES ( 'PW', 'Palau');
INSERT INTO country(country_code,name) VALUES ( 'PA', 'Panama');
INSERT INTO country(country_code,name) VALUES ( 'PG', 'Papua New Guinea');
INSERT INTO country(country_code,name) VALUES ( 'PY', 'Paraguay');
INSERT INTO country(country_code,name) VALUES ( 'PE', 'Peru');
INSERT INTO country(country_code,name) VALUES ( 'PH', 'Philippines');
INSERT INTO country(country_code,name) VALUES ( 'PN', 'Pitcairn');
INSERT INTO country(country_code,name) VALUES ( 'PL', 'Poland');
INSERT INTO country(country_code,name) VALUES ( 'PT', 'Portugal');
INSERT INTO country(country_code,name) VALUES ( 'PR', 'Puerto Rico');
INSERT INTO country(country_code,name) VALUES ( 'QA', 'Qatar');
INSERT INTO country(country_code,name) VALUES ( 'RE', 'Reunion');
INSERT INTO country(country_code,name) VALUES ( 'RO', 'Romania');
INSERT INTO country(country_code,name) VALUES ( 'RU', 'Russian Federation');
INSERT INTO country(country_code,name) VALUES ( 'RW', 'Rwanda');
INSERT INTO country(country_code,name) VALUES ( 'KN', 'Saint Kitts and Nevis');
INSERT INTO country(country_code,name) VALUES ( 'LC', 'Saint Lucia');
INSERT INTO country(country_code,name) VALUES ( 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO country(country_code,name) VALUES ( 'WS', 'Samoa');
INSERT INTO country(country_code,name) VALUES ( 'SM', 'San Marino');
INSERT INTO country(country_code,name) VALUES ( 'ST', 'Sao Tome and Principe');
INSERT INTO country(country_code,name) VALUES ( 'SA', 'Saudi Arabia');
INSERT INTO country(country_code,name) VALUES ( 'SN', 'Senegal');
INSERT INTO country(country_code,name) VALUES ( 'SC', 'Seychelles');
INSERT INTO country(country_code,name) VALUES ( 'SL', 'Sierra Leone');
INSERT INTO country(country_code,name) VALUES ( 'SG', 'Singapore');
INSERT INTO country(country_code,name) VALUES ( 'SK', 'Slovakia');
INSERT INTO country(country_code,name) VALUES ( 'SI', 'Slovenia');
INSERT INTO country(country_code,name) VALUES ( 'SB', 'Solomon Islands');
INSERT INTO country(country_code,name) VALUES ( 'SO', 'Somalia');
INSERT INTO country(country_code,name) VALUES ( 'ZA', 'South Africa');
INSERT INTO country(country_code,name) VALUES ( 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO country(country_code,name) VALUES ( 'ES', 'Spain');
INSERT INTO country(country_code,name) VALUES ( 'LK', 'Sri Lanka');
INSERT INTO country(country_code,name) VALUES ( 'SH', 'St. Helena');
INSERT INTO country(country_code,name) VALUES ( 'PM', 'St. Pierre and Miquelon');
INSERT INTO country(country_code,name) VALUES ( 'SD', 'Sudan');
INSERT INTO country(country_code,name) VALUES ( 'SR', 'Suriname');
INSERT INTO country(country_code,name) VALUES ( 'SJ', 'Svalbarn and Jan Mayen Islands');
INSERT INTO country(country_code,name) VALUES ( 'SZ', 'Swaziland');
INSERT INTO country(country_code,name) VALUES ( 'SE', 'Sweden');
INSERT INTO country(country_code,name) VALUES ( 'CH', 'Switzerland');
INSERT INTO country(country_code,name) VALUES ( 'SY', 'Syrian Arab Republic');
INSERT INTO country(country_code,name) VALUES ( 'TW', 'Taiwan');
INSERT INTO country(country_code,name) VALUES ( 'TJ', 'Tajikistan');
INSERT INTO country(country_code,name) VALUES ( 'TZ', 'Tanzania, United Republic of');
INSERT INTO country(country_code,name) VALUES ( 'TH', 'Thailand');
INSERT INTO country(country_code,name) VALUES ( 'TG', 'Togo');
INSERT INTO country(country_code,name) VALUES ( 'TK', 'Tokelau');
INSERT INTO country(country_code,name) VALUES ( 'TO', 'Tonga');
INSERT INTO country(country_code,name) VALUES ( 'TT', 'Trinidad and Tobago');
INSERT INTO country(country_code,name) VALUES ( 'TN', 'Tunisia');
INSERT INTO country(country_code,name) VALUES ( 'TR', 'Turkey');
INSERT INTO country(country_code,name) VALUES ( 'TM', 'Turkmenistan');
INSERT INTO country(country_code,name) VALUES ( 'TC', 'Turks and Caicos Islands');
INSERT INTO country(country_code,name) VALUES ( 'TV', 'Tuvalu');
INSERT INTO country(country_code,name) VALUES ( 'UG', 'Uganda');
INSERT INTO country(country_code,name) VALUES ( 'UA', 'Ukraine');
INSERT INTO country(country_code,name) VALUES ( 'AE', 'United Arab Emirates');
INSERT INTO country(country_code,name) VALUES ( 'GB', 'United Kingdom');
INSERT INTO country(country_code,name) VALUES ( 'UM', 'United States minor outlying islands');
INSERT INTO country(country_code,name) VALUES ( 'UY', 'Uruguay');
INSERT INTO country(country_code,name) VALUES ( 'UZ', 'Uzbekistan');
INSERT INTO country(country_code,name) VALUES ( 'VU', 'Vanuatu');
INSERT INTO country(country_code,name) VALUES ( 'VA', 'Vatican City State');
INSERT INTO country(country_code,name) VALUES ( 'VE', 'Venezuela');
INSERT INTO country(country_code,name) VALUES ( 'VN', 'Vietnam');
INSERT INTO country(country_code,name) VALUES ( 'VG', 'Virigan Islands (British)');
INSERT INTO country(country_code,name) VALUES ( 'VI', 'Virgin Islands (U.S.)');
INSERT INTO country(country_code,name) VALUES ( 'WF', 'Wallis and Futuna Islands');
INSERT INTO country(country_code,name) VALUES ( 'EH', 'Western Sahara');
INSERT INTO country(country_code,name) VALUES ( 'YE', 'Yemen');
INSERT INTO country(country_code,name) VALUES ( 'YU', 'Yugoslavia');
INSERT INTO country(country_code,name) VALUES ( 'ZR', 'Zaire');
INSERT INTO country(country_code,name) VALUES ( 'ZM', 'Zambia');
INSERT INTO country(country_code,name) VALUES ( 'ZW', 'Zimbabwe'); */

INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'AK', 'Alaska');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'AR', 'Arkansas');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'AZ', 'Arizona');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'CA', 'California');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'CO', 'Colorado');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'CT', 'Connecticut');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'DE', 'Delaware');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'FL', 'Florida');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'GA', 'Georgia');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'HI', 'Hawaii');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'IA', 'Iowa');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'ID', 'Idaho');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'IL', 'Illinois');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'IN', 'Indiana');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'KS', 'Kansas');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'KY', 'Kentucky');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'LA', 'Louisiana');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'MA', 'Massachusetts');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'MD', 'Maryland');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'ME', 'Maine');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'MI', 'Michigan');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'MN', 'Minnesota');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'MS', 'Mississippi');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'MO', 'Missouri');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'MT', 'Montana');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'NC', 'North Carolina');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'ND', 'North Dakota');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'NE', 'Nebraska');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'NH', 'New Hampshire');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'NJ', 'New Jersey');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'NV', 'Nevada');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'NM', 'New Mexico');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'NY', 'New York');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'OH', 'Ohio');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'OK', 'Oklahoma');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'OR', 'Oregon');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'PA', 'Pennsylvania');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'RI', 'Rhode Island');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'SC', 'South Carolina');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'SD', 'South Dakota');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'TN', 'Tennessee');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'TX', 'Texas');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'UT', 'Utah');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'VA', 'Virginia');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'VT', 'Vermont');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'WA', 'Washington');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'WI', 'Wisconsin');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'WV', 'West Virginia');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'WY', 'Wyoming');
INSERT INTO `state` (country_code, state_code , name)VALUES ('US', 'DC', 'Washington DC');



insert into investment
(investment_id, name, description, rate, maturity, penalty, minimum_amount,
 maximum_amount)
values
('PIGGY_BANK', 'Piggy Bank', '', 0, 0, 0, 0, 9999999);


insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('Hi_Yield_Savings1',
 'Hi-Yield Savings', '', 1.75, 0, 0, 0, 98);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('Hi_Yield_Savings2',
 'Hi-Yield Savings', '', 2.3, 0, 0, 99, 499);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('Hi_Yield_Savings3',
 'Hi-Yield Savings', '', 2.9, 0, 0, 500, 999);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('Hi_Yield_Savings4',
 'Hi-Yield Savings', '', 3.5, 0, 0, 999, 9999999);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('CD3', 'CD (3 Month)', '',
 3.26, 3, 0.5, 10, 9999999);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('CD6', 'CD (6 Month)', '',
 3.61, 6, 0.5, 50, 9999999);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('CD12', 'CD (12 Month)', '',
 3.91, 12, 0.5, 100, 9999999);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('CD24', 'CD (24 Month)', '',
 4.25, 24, 0.5, 250, 9999999);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('CD60', 'CD (60 Month)', '',
 5.01, 60, 0.5, 500, 9999999);

insert into investment (investment_id, name, description, rate, maturity,
 penalty, minimum_amount, maximum_amount) values ('Parent_Bond', 'Parent Bond',
 '', -1, 0, 0.5, 0, 9999999);



insert into child_request_status values('WAITING_APPROVAL','Waiting Approval','Waiting Approval description');
insert into child_request_status values('APPROVED','Approved','Approved description');
insert into child_request_status values('CANCELED_BY_CHILD','CANCELED','CANCELED description');
insert into child_request_status values('REJECTED','REJECTED','Rejected description');
insert into child_request_status values('DONE','DONE','Done description');

insert into credit_card_type values ('VISA', 'Visa');
insert into credit_card_type values ('MASTER_CARD', 'Master Card');

insert into subscription_type values ('YEARLY', 'Yearly subscription', '', 11.95);
insert into subscription_type values ('MONTHLY', 'Monthly subscription', '', 3.95);
insert into subscription_type values ('FREE', 'Free subscription', '', 0);

insert into `role` values ('CHILD', 'Child role', '');
insert into `role` values ('PARENT', 'Parent role', '');
insert into `role` values ('NGO', 'NGO role', '');


INSERT INTO `sys_template` VALUES ('ACTIVATION_CODE','Email template for when registration successful','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n</head>\r\n<body>\r\n<table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #7B2B83\">\r\n  <tr>\r\n    <td style=\"border-bottom:1px solid #7B2B83\">\r\n	<table width=\"100%\" border=\"0\">\r\n	  <tr>\r\n		<td><img src=\"logo_parent.gif\" width=\"294\" height=\"84\"></td>\r\n		<td align=\"right\" style=\"padding:55px 10px 0px 0px\"><font color=\"#F68B1F\" size=\"2\" style=\"font-size:14px;\" face=\"verdana\"><b>Account Activation</b></font></td>\r\n	  </tr>\r\n	</table>\r\n</td>\r\n  </tr>\r\n  <tr>\r\n    <td style=\"padding:20px;font-size:12px; font-family:verdana;\">\r\n	<p>Dear ${userName},</p>\r\n	<p>Please click on the link below to activate your account </p>\r\n	<p>${link}</b></p>\r\n	<br/>	<p>Regards,<br/> \r\n	The FiftyP team \r\n	</p>\r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor=\"#7B2B83\" style=\"padding:5px\">\r\n	<font  style=\"font-size:11px; line-height:16px\" face=\"verdana\" color=\"#ffffff\">For more information please contact our support team at support@fiftyp.com <br>\r\n	or Call us at 971 - 111 111 111</font>\r\n	</td>\r\n  </tr>\r\n</table>\r\n\r\n</body>\r\n</html>\r\n','Welcome to FiftyP'),('FIVE_DAYS_EXPIRY_NOTIFICATION','Email sent when five days left to expire','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n</head>\r\n<body>\r\n<table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #7B2B83\">\r\n  <tr>\r\n    <td style=\"border-bottom:1px solid #7B2B83\">\r\n      <table width=\"100%\" border=\"0\">\r\n        <tr>\r\n          <td><img src=\"logo_parent.gif\" width=\"294\" height=\"84\"></td>\r\n          <td align=\"right\" style=\"padding:55px 10px 0px 0px\" nowrap=\"nowrap\"><font color=\"#F68B1F\" size=\"2\" style=\"font-size:14px;\" face=\"verdana\"><b>Forgot Password</b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style=\"padding:20px;font-size:12px; font-family:verdana;\">\r\n	<p>Dear ${userName},</p>\r\n	<p>Your account expires in less than 5 days. We will automatically charge you</p>\r\n	<p>If you wish to stop your account, please login and disable your family account</b></p>\r\n	<br/>	<p>Regards,<br/> \r\n	The FiftyP team \r\n	</p>\r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor=\"#7B2B83\" style=\"padding:5px\"> <font  style=\"font-size:11px; line-height:16px\" face=\"verdana\" color=\"#ffffff\">For more information please contact our support team at support@fiftyp.com <br>\r\n    or Call us at 971 - 111 111 111</font> </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>\r\n</html>\r\n','Renewal Notification'),('FORGOT_PASSWORD','Email template for new password','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n</head>\r\n<body>\r\n<table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #7B2B83\">\r\n  <tr>\r\n    <td style=\"border-bottom:1px solid #7B2B83\">\r\n      <table width=\"100%\" border=\"0\">\r\n        <tr>\r\n          <td><img src=\"logo_parent.gif\" width=\"294\" height=\"84\"></td>\r\n          <td align=\"right\" style=\"padding:55px 10px 0px 0px\" nowrap=\"nowrap\"><font color=\"#F68B1F\" size=\"2\" style=\"font-size:14px;\" face=\"verdana\"><b>Forgot Password</b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style=\"padding:20px;font-size:12px; font-family:verdana;\">\r\n	<p>Dear ${userName},</p>\r\n	<p>You requested to change your password.</p>\r\n	<p>Your new password is:<b>${newPassword}</b></p>\r\n	<br/>	<p>Regards,<br/> \r\n	The FiftyP team \r\n	</p>\r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor=\"#7B2B83\" style=\"padding:5px\"> <font  style=\"font-size:11px; line-height:16px\" face=\"verdana\" color=\"#ffffff\">For more information please contact our support team at support@fiftyp.com <br>\r\n    or Call us at 971 - 111 111 111</font> </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>\r\n</html>\r\n','FiftyP New Password'),('WELCOME_CODE','Email template for new paying user','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n</head>\r\n<body>\r\n<table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #7B2B83\">\r\n  <tr>\r\n    <td style=\"border-bottom:1px solid #7B2B83\">\r\n      <table width=\"100%\" border=\"0\">\r\n        <tr>\r\n          <td><img src=\"logo_parent.gif\" width=\"294\" height=\"84\"></td>\r\n          <td align=\"right\" style=\"padding:55px 10px 0px 0px\" nowrap=\"nowrap\"><font color=\"#F68B1F\" size=\"2\" style=\"font-size:14px;\" face=\"verdana\"><b>Welcome to FiftyP </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style=\"padding:20px;font-size:12px; font-family:verdana;\">\r\n	<p>Dear ${userName},</p>\r\n	<p>You userName is your email.</p>\r\n	<br/>	<p>Regards,<br/> \r\n	The FiftyP team \r\n	</p>\r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor=\"#7B2B83\" style=\"padding:5px\"> <font  style=\"font-size:11px; line-height:16px\" face=\"verdana\" color=\"#ffffff\">For more information please contact our support team at support@fiftyp.com <br>\r\n    or Call us at 971 - 111 111 111</font> </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>\r\n</html>\r\n','Welcome to FiftyP'),('CHILD_FEED_BACK', 'Email template for child feedback', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td align="center"  nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>FiftyP site feedback from Child</b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	<p><b> ${userName}</b> has given Feedback on ${pageName}.</p>\r\n	<p>Feedback Rate : ${feedback}.</p>\r\n\r\n	<p>This feedback is generated from the machine ${clientAddress} on ${date}\r\n	</td>\r\n  </tr>\r\n\r\n</table>', 'FiftyP Site feedback from Child'),('PARENT_FEED_BACK', 'Email template for parent feedback', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td align="center"  nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>FiftyP site feedback from Parent </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	<p><b> ${userName}</b> has given Feedback on ${pageName}.</p>\r\n	<p>Content Rating : <#if "${contentRating}"!="undefined">${contentRating} <#else>N/A</#if></p>\r\n	<p>Design Rating  : <#if "${desingRating}"!="undefined">${desingRating}   <#else>N/A</#if></p>\r\n	<p>Use Rating     : <#if "${useRating}"!="undefined">${useRating} 		  <#else>N/A</#if></p>\r\n	<p>OverAll Rating : <#if "${overAllRating}"!="undefined">${overAllRating} <#else>N/A</#if></p>\r\n	<#if "${topic}"!="choose" >\r\n	<p>Selected Topic : ${topic}</p>\r\n	<p>Topic Comments : ${topicComment}</p>\r\n	</#if>\r\n	<br/>	\r\n	<p>This feedback is generated from the machine ${clientAddress} on ${date}\r\n	</td>\r\n  </tr>\r\n\r\n</table>', 'FiftyP site feedback from Parent');

insert into cause_state values ('VOTE_INITIAL', 'VoteInitial', null);
insert into cause_state values ('VOTE_SELECTED', 'VoteSelected', null);
insert into cause_state values ('VOTE_NOT_SELECTED', 'VoteNotSelected', null);

insert into cause_category values ('Environment', 'ENVIRONMENT', null);

insert into cause values (1, 'ENVIRONMENT', null, 'Tree Planting Program', 'Tree Planting Program', 'icons/hands.gif', 'share/pic1.gif', null, 'VOTE_INITIAL', 345, 533 , '');
insert into cause values (2, 'ENVIRONMENT', null, 'Reforestation', 'Reforestation', 'icons/hands.gif', 'share/pic1.gif', null, 'VOTE_INITIAL', 320, 276, '');
insert into cause values (3, 'ENVIRONMENT', null, 'Landfill Methane', 'Landfill Methane', 'icons/hands.gif', 'share/pic1.gif', null, 'VOTE_INITIAL', 420, 490, '');
insert into cause values (4, 'ENVIRONMENT', null, 'Renewable Energy Investments', 'Renewable Energy Investments', 'icons/hands.gif', 'share/pic1.gif', null, 'VOTE_INITIAL', 397, 343, '');

insert into child_transaction_type (child_transaction_type_id, name) values ('PROJECT_TRANSACTION', 'project');
insert into child_transaction_type (child_transaction_type_id, name) values ('GIFT_TRANSACTION', 'gift');
insert into child_transaction_type (child_transaction_type_id, name) values ('CHORE_TRANSACTION', 'chore');
insert into child_transaction_type (child_transaction_type_id, name) values ('ALLOWANCE_TRANSACTION', 'allowance');
insert into child_transaction_type (child_transaction_type_id, name) values ('SHARE_TRANSACTION', 'share');
insert into child_transaction_type (child_transaction_type_id, name) values ('SPEND_TRANSACTION', 'share');
insert into child_transaction_type (child_transaction_type_id, name) values ('SAVE_INTEREST_TRANSACTION', 'save');
insert into child_transaction_type (child_transaction_type_id, name) values ('WITHDRAWAL_DEPOSIT_TRANSACTION', 'save');

insert into transaction_status (transaction_status_id, name) values ('NEW_TRANSACTION', 'new transaction');
insert into transaction_status (transaction_status_id, name) values ('FAILED_TRANSACTION', 'failed transaction');
insert into transaction_status (transaction_status_id, name) values ('ATTPT_CHRG_TRANSACTION', 'attempting to charge');
insert into transaction_status (transaction_status_id, name) values ('SUCCESS_TRANSACTION', 'success transaction');

insert into transaction_type (transaction_type_id, name) values ('PRE_AUTH', 'pre auth');
insert into transaction_type (transaction_type_id, name) values ('POST_AUTH', 'post auth');
insert into transaction_type (transaction_type_id, name) values ('SALE', 'charge directly');

insert into tip_section values ('SAVE_SECTION', 'save');
insert into tip_section values ('SHARE_SECTION', 'share');
insert into tip_section values ('SPEND_SECTION', 'spend');
insert into tip_section values ('MONEY_MACHINE_SECTION', 'moneymachine');