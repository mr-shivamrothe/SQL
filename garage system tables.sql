---------------------garage system tables---------------------------------------
----------------------------------------------------------------------------------
        --CUSTOMER TABLE--

CREATE TABLE CUSTOMER
       (CID                     Number Primary key,
        CNAME                VARCHAR2(20),
        CADD                  VARCHAR2(15),
        C_CONTACT           NUMBER,
        C_CEIDITDAYS        NUMBER,
        CJ_DATE               DATE,
        SEX                     VARCHAR2(6)
    );
    
SELECT *FROM CUSTOMER;     
    
    INSERT INTO CUSTOMER VALUES(1001,'Cyone Blake', 'New York', 1235684, 20, TO_DATE('20-JAN-11', 'DD-MON-YY'),'FEMALE'); 
    INSERT INTO CUSTOMER VALUES(1002,'John Smith', 'New Jersi', 1341684,20,TO_DATE('21-FEB-11', 'DD-MON-YY'),'MALE');
    INSERT INTO CUSTOMER VALUES(1003,'JORDEN WOD', 'PRAG',1805184,20,TO_DATE('22-MAR-11', 'DD-MON-YY'),'MALE');
    INSERT INTO CUSTOMER VALUES(1004,'CHRISTNA', 'MANHATTON', 1125684,31,TO_DATE('23-APR-13','DD-MON-YY'),'FEMALE');
    INSERT INTO CUSTOMER VALUES(1005,'TOM HILL', 'LONDON', 1239284,10,TO_DATE('25-JUN-15','DD-MON-YY'),'MALE');
    INSERT INTO CUSTOMER VALUES(1006,'KAMILA JOSEF', 'PARISE', 124568,9,TO_DATE('28-JUL-11','DD-MON-YY'),'FEMALE');
    INSERT INTO CUSTOMER VALUES(1007,'ANDRU SYMON', 'TAXES',125654,15,TO_DATE('01-APR-16','DD-MON-YY'),'MALE');
    INSERT INTO CUSTOMER VALUES(1008,'SANJU SAMSUNG','NEW YORK', 12346341,4,TO_DATE('20-JAN-16','DD-MON-YY'),'MALE');
    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        --VENDORS TABLE--

CREATE TABLE VENDORS
    (
        VID                 NUMBER PRIMARY KEY,
        VNAME            VARCHAR2(15),
        VADD              VARCHAR2(10),
        VCONTACT       NUMBER,
        VCREDITDAYS   NUMBER,
        VJ_DATE          DATE
    );
    
    SELECT * FROM VENDORS;
    
    INSERT INTO VENDORS VALUES(2001,'KIRAN PATIL','PUNE',20535535,20,TO_DATE('20-JAN-10','DD-MON-YY'));
    INSERT INTO VENDORS VALUES(2002,'PRAKASH JAIN','MUMBAI',2063564,10,TO_DATE('05-NOV-11','DD-MON-YY'));
    INSERT INTO VENDORS VALUES(2003,'SWAPNIL THETE', 'NASHIK',25355352,15,TO_DATE('18-MAR-10', 'DD-MON-YY'));
    INSERT INTO VENDORS VALUES(2004,'AMOL SHENDE', 'SATARA', 23674776,18,TO_DATE('17-APR-15','DD-MON-YY'));
    INSERT INTO VENDORS VALUES(2005,'KARAN SINTRE', 'BULDHANA', 257656,30,TO_DATE('22-APR-09','DD-MON-YY'));
    INSERT INTO VENDORS VALUES(2006,'RAM KULKARNI', 'OSMANABAD', 20367454,21,TO_DATE('09-JUL-10','DD-MON-YY'));

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    --EMPLOYEE TABLE--
    
CREATE TABLE EMPLOYEES
        (   EID                 NUMBER PRIMARY KEY,
            ENAME            VARCHAR2(20),
            EJOB               VARCHAR2(10),
            EADD              VARCHAR2(10),
            ECONTACT        NUMBER,
            ESAL               NUMBER,
            EDOJ               DATE,
            EDOL              DATE
        );
        
SELECT * FROM EMPLOYEES;
    
TRUNCATE TABLE EMPLOYEES;
    
    INSERT INTO EMPLOYEES VALUES(3001,'STEVEN KING','PAINTER','NEW YORK',10367454,1200,'09-Jul-10', NULL);
    INSERT INTO EMPLOYEES VALUES(3002,'DAVID AUSTIN','FITTER','MAN HATON',10367434,1100,'19-Aug-10',NULL);
    INSERT INTO EMPLOYEES VALUES(3003,'BRUCE ERNST','MECHANIC','NEW JERCY',10367264,2200,'08-Sep-10',NULL);
    INSERT INTO EMPLOYEES VALUES(3004,'LUIS POPP','MECHANIC','NEW JERCY',10367264,1700,'19-Oct-09','06-Sep-10');
    INSERT INTO EMPLOYEES VALUES(3005,'SHERI GOMES','FITTER','PARIS',10327264,1000,'19-Oct-09','01-Aug-10');
    INSERT INTO EMPLOYEES VALUES (3000, 'JAMES PHILLIP', 'FITTER', 'PARIS', 10322264, NULL, '01-Jan-08', NULL);
    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    --Sparepart Table--
    
CREATE TABLE SPAREPART
    (   SPID                    NUMBER PRIMARY KEY,
        SPNAME               VARCHAR2(50),
        SPRATE                NUMBER,
        SPUNIT                VARCHAR(20)
        
    );
    
  SELECT * FROM SPAREPART;
  
  truncate table SPAREPART;

    
    INSERT INTO SPAREPART VALUES(4001,'TWO WHEELER TUBE',250,'NOS');
    INSERT INTO SPAREPART VALUES(4002,'TWO WHEELER ENGINE OIL',400,'LTRS');
    INSERT INTO SPAREPART VALUES(4003,'FOUR WHEELER ENGINE OIL',5000,'LTRS');
    INSERT INTO SPAREPART VALUES(4004,'TWO WHEELER CARBORATOR',680,'NOS');
    INSERT INTO SPAREPART VALUES(4005,'TWO WHEELER CLUTCH WIRE',129,'MTRS');
    INSERT INTO SPAREPART VALUES(4006,'TWO WHEELER TAIL LIGHT',100,'NOS');
    INSERT INTO SPAREPART VALUES(4007,'TWO WHEELER INDICATORS',150,'NOS');
    INSERT INTO SPAREPART VALUES(4008,'FOUR WHEELER GASKIT',1340,'NOS');
    INSERT INTO SPAREPART VALUES(4009,'WHITE COLOUR',340,'LTRS');
    INSERT INTO SPAREPART VALUES(4010,'BLACK COLOUR',240,'LTRS');
    INSERT INTO SPAREPART VALUES(4011,'TWO WHEELER SIDE MIRROR',250,'NOS');
    INSERT INTO SPAREPART VALUES(4012,'FOUR WHEELER SIDE MIRROR',450,'NOS');
    INSERT INTO SPAREPART VALUES(4013,'TWO WHEELER SHOCKUP',1320,'PAIR');
    INSERT INTO SPAREPART VALUES(4014,'FOUR WHEELER BUMPER',6000,'NOS');
    INSERT INTO SPAREPART VALUES(4015,'FOUR WHEELER FRONT GLASS',7000,'PCS');
    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --Purchase Table--
    
    CREATE TABLE PURCHASE
    (   PID                NUMBER PRIMARY KEY,
        VID               NUMBER REFERENCES VENDORS (VID),
        SPID              NUMBER REFERENCES SPAREPART (SPID),
        PQTY             NUMBER,
        SPRATE          NUMBER,
        SPGST            NUMBER,
        PDATE           DATE,
        TRANCOST      NUMBER,
        TOTAL           NUMBER,
        RCV_EID         NUMBER REFERENCES EMPLOYEES (EID)
        );

SELECT * FROM PURCHASE;

truncate table PURCHASE;

    INSERT INTO PURCHASE VALUES (5001, 2001, 4001, 10, 250, 350, '01-Jan-11', 1300, 4150, 3001);    
    INSERT INTO PURCHASE VALUES (5002, 2002, 4002, 4, 400, 288, '02-Mar-11', 100, 1988, 3001);
    INSERT INTO PURCHASE VALUES (5003, 2003, 4004, 8, 680, 761.6, '12-Jun-11', 50, 6251.6, 3003);
    INSERT INTO PURCHASE VALUES (5004, 2004, 4005, 10, 129, 154.8, '22-Aug-11',125, 1569.8, 3004);
    INSERT INTO PURCHASE VALUES (5005, 2005, 4006, 20, 100, 300, '07-Sep-11', 20, 2320, 3003);
    INSERT INTO PURCHASE VALUES (5006, 2006, 4007, 30, 150, 630, '12-Oct-11', 60, 5190, 3000);
    INSERT INTO PURCHASE VALUES (5007, 2001, 4003, 20, 5000, 14000, '07-Sep-11', 1000, 115000, 3000);
    INSERT INTO PURCHASE VALUES (5008, 2006, 4005, 1, 129, 15.48, '12-Oct-11', 50, 194.48, 3005);
    INSERT INTO PURCHASE VALUES (5009, 2006, 4005, 1, 129, 15.48, '15-Oct-11', 50, 194.48, 3005);
    INSERT INTO PURCHASE VALUES (5010, 2006, 4009, 5, 340, 238, '20-Oct-11', 0, 2938, 3005);
    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------    
   
   --SER_DET Table--
   
   CREATE TABLE SER_DET
   (    SID             NUMBER PRIMARY KEY,
        CID             NUMBER REFERENCES CUSTOMER (CID),
        EID             NUMBER REFERENCES EMPLOYEES (EID),
        SPID            NUMBER REFERENCES SPAREPART (SPID),
        TYP_VEH       VARCHAR2(20),
        VEH_NO        VARCHAR2(10),
        TYP_SER        VARCHAR2(30),
        SER_DATE      DATE,
        QTY             NUMBER,
        SP_RATE        NUMBER,
        SP_AMT         NUMBER,
        SP_G             NUMBER,
        SER_AMT        NUMBER,
        COMM           NUMBER,
        TOTAL           NUMBER
        );
   
   SELECT * FROM SER_DET;
   
   INSERT INTO SER_DET VALUES (6001, 1001, 3001, 4001, 'TWO WHEELER', 'MH15CA3228', 'TUBE DAMAGED', '02-Jan-11', 1, 250, 250, 35, 50, 0, 335);HY
   INSERT INTO SER_DET VALUES (6002, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING', '04-Mar-11', 1, 400, 400, 52, 300, 50, 752);
   INSERT INTO SER_DET VALUES (6003, 1003, 3004, 4005, 'TWO WHEELER' ,'MH12PQ1313', 'CLUCH WIRE', '22-Aug-11', 1, 129, 129, 0, 10, 0, 139);
   INSERT INTO SER_DET VALUES (6004, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING', ' 05-May-11', 1, 400, 400, 52, 300, 50, 752);
   INSERT INTO SER_DET VALUES (6005, 1004, 3001, 4009, 'TWO WHEELER', 'MH-14PA335', 'COLOR', '21-Oct-11', 2.5, 340, 850, 119, 500, 150, 1469);
   INSERT INTO SER_DET VALUES (6006, 1006, 3001, 4009, 'TWO WHEELER', 'MH-12WE334', 'COLOR', '01-Dec-11', 2.5, 340, 850, 119, 500, 150, 1469);
   INSERT INTO SER_DET VALUES (6007, 1007, 3001, 4001, 'FOUR WHEELER', 'MH17BB1345', 'TUBE DAMAGED', '01-Jan-12', 1, 250, 250, 35, 150, 0, 435);
   
________________________________________________________________________________________________________________________________________________________________________________________________________________________________

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   