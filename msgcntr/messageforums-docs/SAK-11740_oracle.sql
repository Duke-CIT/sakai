DROP TABLE MFR_EMAIL_NOTIFICATION_T;
drop sequence MFR_EMAIL_NOTIFICATION_S;

CREATE TABLE  "MFR_EMAIL_NOTIFICATION_T"
   (    "ID" NUMBER(19,0) NOT NULL ENABLE,
        "VERSION" NUMBER(10,0) NOT NULL ENABLE,
        "USER_ID" VARCHAR2(255 BYTE) NOT NULL ENABLE,
        "CONTEXT_ID" VARCHAR2(255 BYTE) NOT NULL ENABLE,
        "NOTIFICATION_LEVEL" NUMBER(1,0) NOT NULL ENABLE,
         PRIMARY KEY ("ID")
  
   )  ;
CREATE INDEX "MFR_EMAIL_USER_ID_I" ON  "MFR_EMAIL_NOTIFICATION_T" ("USER_ID")  ;

CREATE INDEX  "MFR_EMAIL_CONTEXT_ID_I" ON  "MFR_EMAIL_NOTIFICATION_T" ("CONTEXT_ID")
    ;



create sequence MFR_EMAIL_NOTIFICATION_S;

