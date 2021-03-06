/*  
    CSCI 585  HOMEWORK-3
    
    NAME  : AVINASH AKKA
    USC ID: 3874-5774-01

*/


CREATE TABLE BUILDING(
BUILDINGID VARCHAR(32),
BUILDINGNAME VARCHAR(32),
VERTICES NUMBER,
SHAPE SDO_GEOMETRY);

INSERT INTO user_sdo_geom_metadata
    (TABLE_NAME,COLUMN_NAME,DIMINFO,SRID)
  VALUES 
    ('BUILDING','SHAPE',
  SDO_DIM_ARRAY(   
    SDO_DIM_ELEMENT('X', 0, 800, 1),
    SDO_DIM_ELEMENT('Y', 0, 800, 1)
               ),NULL);

CREATE INDEX BUILDING_IDX
   ON BUILDING(SHAPE)
   INDEXTYPE IS MDSYS.SPATIAL_INDEX;

SET DEFINE OFF; 

INSERT INTO BUILDING VALUES(
'b0','PSA',12,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(79, 68, 184, 125, 179, 133, 189, 138, 139,  
    229, 131, 225, 127, 233, 21, 175, 26, 168, 18, 163, 67, 73,  
    74, 76,79,68)));

INSERT INTO BUILDING VALUES(
'b1','OHE',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(226, 150, 254, 164, 240, 191, 212, 
    176,226,150)));

INSERT INTO BUILDING VALUES(
'b2','BHE',12,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(337, 209, 389, 236, 385, 242, 390, 244, 385, 253, 381, 251, 378, 255, 327, 228, 330, 223, 324, 219, 328, 212, 334, 214,337,209)));

INSERT INTO BUILDING VALUES(
'b3','VHE',12,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(405, 239, 440, 257, 426, 283, 421, 280, 394, 329, 401, 332, 386, 357, 351, 339, 365, 313, 369, 315, 396, 266, 391, 263,405,239)));

INSERT INTO BUILDING VALUES(
'b4','HED & PCE',14,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(267, 265, 291, 278, 284, 290, 290, 294, 296, 283, 354, 314, 348, 327, 340, 322, 335, 330, 290, 305, 291, 301, 281, 295, 277, 301, 258, 289,267,265)));

INSERT INTO BUILDING VALUES(
'b5','small building 1',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(207, 193, 219, 199, 191, 251, 179, 
    245,207,193)));

INSERT INTO BUILDING VALUES(
'b6','small building 2',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(264, 174, 273, 179, 247, 228, 237, 
    222,264,174)));

INSERT INTO BUILDING VALUES(
'b7','small building 3',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(216, 228, 241, 241, 225, 271, 199, 
    257,216,228)));

INSERT INTO BUILDING VALUES(
'b8','NBA',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(182, 284, 207, 298, 202, 306, 177, 293,182,284)));

INSERT INTO BUILDING VALUES(
'b9','ABT',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(157, 282, 169, 288, 158, 308, 147, 301,157,282)));

INSERT INTO BUILDING VALUES(
'b10','SBA',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(172, 304, 197, 317, 191, 327, 166, 313,172,304)));

INSERT INTO BUILDING VALUES(
'b11','GER',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(65, 226, 122, 258, 77, 341, 20, 310,65,226)));

INSERT INTO BUILDING VALUES(
'b12','EEB',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(127, 346, 184, 375, 171, 400, 115, 370,127,346)));

INSERT INTO BUILDING VALUES(
'b13','SAL',8,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(216, 370, 266, 397, 255, 417, 261, 420, 247, 445, 187, 412, 201, 388, 206, 391,216,370)));

INSERT INTO BUILDING VALUES(
'b14','SSC',12,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(232, 324, 241, 329, 238, 333, 245, 338, 247, 334, 293, 358, 277, 386, 233, 360, 234, 356, 228, 352, 224, 359, 217, 354,232,324)));

INSERT INTO BUILDING VALUES(
'b15','SSL',12,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(309, 371, 325, 379, 333, 365, 349, 374, 342, 388, 357, 396, 346, 416, 331, 409, 324, 422, 307, 413, 313, 399, 298, 391,309,371)));

INSERT INTO BUILDING VALUES(
'b16','PHE',6,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(300, 432, 338, 452, 322, 482, 296, 469, 302, 459, 289, 452,300,432)));

INSERT INTO BUILDING VALUES(
'b17','LHI & SLH',6,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(446, 339, 478, 357, 460, 390, 491, 408, 488, 417, 424, 382,446,339)));

INSERT INTO BUILDING VALUES(
'b18','HLAG',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(420, 426, 464, 449, 435, 503, 392, 480,420,426)));

INSERT INTO BUILDING VALUES(
'b19','RRB & LIS & OCW & CEM & SCI',16,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(474, 285, 529, 315, 533, 310, 695, 397, 644, 494, 601, 471, 644, 390, 627, 380, 623, 387, 633, 393, 609, 434, 586, 422, 610, 371, 524, 325, 508, 353, 454, 323,474,285)));

INSERT INTO BUILDING VALUES(
'b20','SHS',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(565, 357, 596, 374, 582, 399, 551, 383,565,357)));

INSERT INTO BUILDING VALUES(
'b21','ACP',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(564, 425, 585, 436, 573, 458, 552, 447,564,425)));

INSERT INTO BUILDING VALUES(
'b22','HAR',8,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(498, 459, 574, 503, 537, 569, 465, 530, 458, 541, 439, 530, 445, 517, 462, 525,498,459)));

INSERT INTO BUILDING VALUES(
'b23','MPH',6,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(586, 500, 629, 523, 596, 578, 569, 563, 559, 579, 549, 574,586,500)));

INSERT INTO BUILDING VALUES(
'b24','ACC',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(748, 427, 791, 450, 768, 494, 725, 471,748,427)));

INSERT INTO BUILDING VALUES(
'b25','BRI',8,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(722, 483, 735, 490, 729, 505, 757, 518, 746, 538, 719, 525, 710, 535, 698, 528,722,483)));

INSERT INTO BUILDING VALUES(
'b26','SGM',16,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(297, 13, 357, 45, 334, 87, 312, 75, 291, 114, 310, 125, 295, 151, 239, 121, 253, 95, 275, 106, 280, 98, 259, 86, 270, 62, 293, 73, 297, 66, 275, 54,297,13)));

INSERT INTO BUILDING VALUES(
'b27','GFS',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(380, 66, 493, 126, 475, 157, 363, 97,380,66)));

INSERT INTO BUILDING VALUES(
'b28','BKS',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(607, 199, 641, 217, 617, 257, 584, 239,607,199)));

INSERT INTO BUILDING VALUES(
'b29','HSH',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(552, 231, 565, 238, 540, 284, 527, 278,552,231)));

INSERT INTO BUILDING VALUES(
'b30','YWC',8,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(514, 215, 537, 224, 530, 237, 521, 232, 513, 248, 530, 258, 527, 264, 497, 247,514,215)));

INSERT INTO BUILDING VALUES(
'b31','commons & STU',12,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(659, 228, 700, 249, 692, 263, 708, 272, 718, 255, 766, 280, 740, 329, 646, 278, 640, 290, 619, 278, 640, 236, 652, 241,659,228)));

INSERT INTO BUILDING VALUES(
'b32','TSC',4,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(677, 320, 708, 337, 690, 368, 661, 351,677,320)));

INSERT INTO BUILDING VALUES(
'b33','HNB',16,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(431, 163, 440, 160, 443, 171, 472, 186, 482, 183, 485, 195, 474, 198, 458, 227, 462, 236, 452, 239, 449, 230, 421, 214, 410, 216, 408, 207, 417, 205, 434, 175,431,163)));

INSERT INTO BUILDING VALUES(
'b34','PKS',12,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(94, 402, 110, 412, 105, 420, 115, 426, 118, 422, 176, 454, 165, 472, 108, 441, 110, 435, 100, 430, 74, 480, 57, 470,94,402)));

INSERT INTO BUILDING VALUES(
'b35','STO',12,
SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,1), 
    SDO_ORDINATE_ARRAY(574, 247, 586, 254, 577, 270, 589, 277, 599, 259, 610, 265, 587, 309, 575, 302, 581, 290, 570, 283, 562, 296, 552, 289,574,247)));


CREATE TABLE TRAMSTOP(
   TRAMSTOPID VARCHAR(32),
   COVERAGE SDO_GEOMETRY);

INSERT INTO user_sdo_geom_metadata
    (TABLE_NAME,COLUMN_NAME,DIMINFO,SRID)
  VALUES 
    ('TRAMSTOP','COVERAGE',
  SDO_DIM_ARRAY(   
    SDO_DIM_ELEMENT('X', 0, 600, 1),
    SDO_DIM_ELEMENT('Y', 0, 600, 1)
               ),NULL);

CREATE INDEX TRAMSTOP_IDX
   ON TRAMSTOP(COVERAGE)
   INDEXTYPE IS MDSYS.SPATIAL_INDEX;


insert into TramStop values
('t1psa',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,4), 
    SDO_ORDINATE_ARRAY(80,120,180,220,280,120)));

insert into TramStop values
('t2ohe',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,4), 
    SDO_ORDINATE_ARRAY(134,177,204,247,274,177)));

insert into TramStop values
('t3sgm',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,4), 
    SDO_ORDINATE_ARRAY(178,81,253,156,328,81)));

insert into TramStop values
('t4hnb',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,4), 
    SDO_ORDINATE_ARRAY(426,229,476,279,526,229)));

insert into TramStop values
('t5vhe',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,4), 
    SDO_ORDINATE_ARRAY(397,299,447,349,497,299)));

insert into TramStop values
('t6ssl',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,4), 
    SDO_ORDINATE_ARRAY(163,432,213,482,263,432)));

insert into TramStop values
('t7helen',
  SDO_GEOMETRY(
    2003,
    NULL,
    NULL,
    SDO_ELEM_INFO_ARRAY(1,2003,4), 
    SDO_ORDINATE_ARRAY(278,460,378,560,478,460)));

CREATE TABLE STUDENT(STUDENTID VARCHAR(32),LOCATION SDO_GEOMETRY);

INSERT INTO user_sdo_geom_metadata
    (TABLE_NAME,COLUMN_NAME,DIMINFO,SRID)
  VALUES 
    ('STUDENT','LOCATION',
  SDO_DIM_ARRAY(   
    SDO_DIM_ELEMENT('X', 0, 800, 1),
    SDO_DIM_ELEMENT('Y', 0, 800, 1)
               ),NULL);

CREATE INDEX STUDENT_IDX
   ON STUDENT(LOCATION)
   INDEXTYPE IS MDSYS.SPATIAL_INDEX;

insert into STUDENT values
('p0',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(228,102,NULL),NULL,NULL));

insert into STUDENT values 
('p1',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(220,112,NULL),NULL,NULL));

insert into STUDENT values
('p2',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(213,135,NULL),NULL,NULL));

insert into STUDENT values
('p3',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(189,177,NULL),NULL,NULL));

insert into STUDENT values
('p4',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(180,202,NULL),NULL,NULL));

insert into STUDENT values
('p5',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(166,231,NULL),NULL,NULL));

insert into STUDENT values
('p6',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(153,257,NULL),NULL,NULL));

insert into STUDENT values
('p7',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(138,278,NULL),NULL,NULL));

insert into STUDENT values
('p8',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(125,300,NULL),NULL,NULL));

insert into STUDENT values
('p9',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(116,320,NULL),NULL,NULL));

insert into STUDENT values
('p10',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(94,369,NULL),NULL,NULL));

insert into STUDENT values
('p11',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(104,394,NULL),NULL,NULL));

insert into STUDENT values
('p12',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(136,409,NULL),NULL,NULL));

insert into STUDENT values
('p13',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(171,430,NULL),NULL,NULL));

insert into STUDENT values
('p14',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(195,438,NULL),NULL,NULL));

insert into STUDENT values
('p15',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(221,453,NULL),NULL,NULL));

insert into STUDENT values
('p16',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(250,462,NULL),NULL,NULL));

insert into STUDENT values
('p17',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(283,485,NULL),NULL,NULL));

insert into STUDENT values
('p18',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(320,505,NULL),NULL,NULL));

insert into STUDENT values
('p19',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(342,502,NULL),NULL,NULL));

insert into STUDENT values
('p20',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(365,475,NULL),NULL,NULL));

insert into STUDENT values
('p21',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(320,531,NULL),NULL,NULL));

insert into STUDENT values
('p22',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(318,561,NULL),NULL,NULL));

insert into STUDENT values
('p23',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(439,318,NULL),NULL,NULL));

insert into STUDENT values
('p24',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(422,344,NULL),NULL,NULL));

insert into STUDENT values
('p25',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(412,378,NULL),NULL,NULL));

insert into STUDENT values
('p26',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(484,233,NULL),NULL,NULL));

insert into STUDENT values
('p27',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(504,208,NULL),NULL,NULL));

insert into STUDENT values
('p28',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(518,175,NULL),NULL,NULL));

insert into STUDENT values
('p29',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(516,290,NULL),NULL,NULL));

insert into STUDENT values
('p30',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(531,299,NULL),NULL,NULL));

insert into STUDENT values
('p31',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(588,328,NULL),NULL,NULL));

insert into STUDENT values
('p32',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(637,352,NULL),NULL,NULL));

insert into STUDENT values
('p33',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(657,363,NULL),NULL,NULL));

insert into STUDENT values
('p34',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(448,409,NULL),NULL,NULL));

insert into STUDENT values
('p35',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(464,420,NULL),NULL,NULL));

insert into STUDENT values
('p36',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(484,428,NULL),NULL,NULL));

insert into STUDENT values
('p37',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(491,432,NULL),NULL,NULL));

insert into STUDENT values
('p38',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(507,438,NULL),NULL,NULL));

insert into STUDENT values
('p39',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(548,462,NULL),NULL,NULL));

insert into STUDENT values
('p40',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(583,480,NULL),NULL,NULL));

insert into STUDENT values
('p41',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(302,197,NULL),NULL,NULL));

insert into STUDENT values
('p42',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(290,188,NULL),NULL,NULL));

insert into STUDENT values
('p43',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(297,202,NULL),NULL,NULL));

insert into STUDENT values
('p44',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(358,199,NULL),NULL,NULL));

insert into STUDENT values
('p45',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(384,214,NULL),NULL,NULL));

insert into STUDENT values
('p46',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(281,162,NULL),NULL,NULL));

insert into STUDENT values
('p47',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(264,314,NULL),NULL,NULL));

insert into STUDENT values
('p48',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(256,302,NULL),NULL,NULL));

insert into STUDENT values
('p49',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(221,285,NULL),NULL,NULL));

insert into STUDENT values
('p50',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(197,295,NULL),NULL,NULL));


insert into STUDENT values
('p51',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(179,338,NULL),NULL,NULL));

insert into STUDENT values
('p52',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(161,325,NULL),NULL,NULL));

insert into STUDENT values
('p53',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(378,280,NULL),NULL,NULL));

insert into STUDENT values
('p54',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(362,267,NULL),NULL,NULL));

insert into STUDENT values
('p55',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(530,364,NULL),NULL,NULL));

insert into STUDENT values
('p56',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(535,353,NULL),NULL,NULL));

insert into STUDENT values
('p57',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(589,448,NULL),NULL,NULL));

insert into STUDENT values
('p58',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(691,456,NULL),NULL,NULL));

insert into STUDENT values
('p59',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(698,427,NULL),NULL,NULL));

insert into STUDENT values
('p60',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(716,430,NULL),NULL,NULL));

insert into STUDENT values
('p61',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(723,446,NULL),NULL,NULL));

insert into STUDENT values
('p62',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(687,503,NULL),NULL,NULL));

insert into STUDENT values
('p63',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(674,525,NULL),NULL,NULL));

insert into STUDENT values
('p64',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(652,523,NULL),NULL,NULL));

insert into STUDENT values
('p65',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(645,539,NULL),NULL,NULL));

insert into STUDENT values
('p66',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(659,309,NULL),NULL,NULL));

insert into STUDENT values
('p67',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(716,340,NULL),NULL,NULL));

insert into STUDENT values
('p68',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(524,150,NULL),NULL,NULL));

insert into STUDENT values
('p69',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(476,258,NULL),NULL,NULL));

insert into STUDENT values
('p70',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(241,269,NULL),NULL,NULL));

insert into STUDENT values
('p71',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(284,409,NULL),NULL,NULL));

insert into STUDENT values
('p72',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(272,409,NULL),NULL,NULL));

insert into STUDENT values
('p73',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(204,367,NULL),NULL,NULL));

insert into STUDENT values
('p74',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(231,371,NULL),NULL,NULL));

insert into STUDENT values
('p75',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(381,424,NULL),NULL,NULL));

insert into STUDENT values
('p76',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(466,471,NULL),NULL,NULL));

insert into STUDENT values
('p77',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(338,96,NULL),NULL,NULL));

insert into STUDENT values
('p78',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(349,78,NULL),NULL,NULL));

insert into STUDENT values
('p79',SDO_GEOMETRY(2001,NULL,SDO_POINT_TYPE(409,132,NULL),NULL,NULL));

COMMIT;
