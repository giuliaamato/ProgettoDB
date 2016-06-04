SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE VisitaMedica;
INSERT INTO VisitaMedica(CodiceVisita, Data, Ambulatorio, TipoVisita, TipoPrenotazione, Priorita, CFdottore, CFinfermiere, CFpaziente, CodiceReferto) VALUES
(1, '2016-03-10 14:45:00', 'Pronto Soccorso', 'Visita', 'Effettuata','M','MTRMTT63D19D118Q', 'NVNGLI87R41C383T', 'NGRALB80D24B578M', 1),
(2, '2016-03-11 09:45:00', 'Ortopedia', 'Visita', 'Effettuata', 'L', 'OTTGSP69E21H220D', 'MTRQNT77H05B154Y', 'DMCRGN75H70L026P', 2),
(3, '2016-04-10 10:55:00', 'Dermatologia', 'Controllo', 'Effettuata', 'L', 'ANGORZ44D30D107M', NULL, 'ORLGVN83E03D506A', 3),
(4, '2016-05-01 12:30:00', 'Dermatologia', 'Controllo', 'Effettuata', 'L', 'ANGORZ44D30D107M', 'MTRQNT77H05B154Y', 'ORLGVN83E03D506A', 4),
(5, '2016-05-01 10:30:00', 'Ortopedia', 'Visita', 'Effettuata', 'L', 'OTTGSP69E21H220D', 'LZZFLR65B43H594B', 'PGNSTF01L60F116W', 5),
(6, '2016-05-04 11:20:00', 'Ortopedia', 'Controllo', 'Effettuata', 'L', 'OTTGSP69E21H220D', 'RNDRGG88S29D794J', 'DMCRGN75H70L026P', 6),
(7, '2016-05-05 14:30:00', 'Cardiologia', 'Visita', 'Effettuata', 'L', 'BGLLRA73T50L736L', 'ACTALS43M12C146S', 'MLNDLT24M60F465M', 7),
(8, '2016-05-05 14:08:00', 'Radiologia', 'Visita', 'Effettuata', 'L', 'MCRFLR84A49B582A', 'SNTBND66D47L402S', 'CSTORN50T65A236L', 8),
(9, '2016-05-06 13:40:00', 'Allergologia', 'Visita', 'Effettuata', 'L', 'ADMGVN76A28I347L', 'CRLDLT57M60D741R', 'NRERML88B11B563R',9),
(10, '2016-05-06 10:10:00', 'Ortopedia', 'Visita', 'Effettuata', 'L', 'FLSNCC75C22H117L', 'CCCRCH71E42I425F', 'SRTRBC47T67H606W', 10),
(11, '2016-05-06 14:15:00', 'Pronto Soccorso', 'Visita', 'Effettuata', 'L', 'VNTRMN55A25I938C', 'VNDANG52B57B835Z', 'BTTRMN45P08F922U', 11),
(12, '2016-05-06 09:40:00', 'Chirurgia', 'Visita', 'Effettuata', 'M', 'OPPMTT55M03G981I', 'FTTELN77H58E358Q', 'VTLSLV68T24E092N', 12),
(13, '2016-05-06 14:30:00', 'Pronto Soccorso', 'Visita', 'Effettuata', 'L', 'MTRMTT63D19D118Q', 'SRNGSP45T12I418X', 'PRSRBC66C69H843L', 13),
(14, '2016-05-07 10:05:00', 'Psichiatria', 'Visita', 'Effettuata', 'L', 'VLLSBR73E55F092X', 'BLDTTN74M44B433G', 'DNTOLV68H60E762W', 14),
(15, '2016-05-07 09:45:00', 'Radiologia', 'Visita', 'Effettuata', 'L', 'BDLQNT53L28H655N', 'VRTALB72D16C815T', 'RVIIGN83R27A444Z', 15),
(16, '2016-05-07 10:05:00', 'Radiologia', 'Visita', 'Effettuata', 'L', 'BDLQNT53L28H655N', 'VRTALB72D16C815T', 'BSLBTR55M45B143P', 16),
(17, '2016-05-07 10:30:00', 'Radiologia', 'Visita', 'Effettuata', 'L', 'BDLQNT53L28H655N', 'VRTALB72D16C815T', 'BLLRSR26R29A982H', 17),
(18, '2016-05-07 14:05:00', 'Chirurgia', 'Visita', 'Effettuata', 'M', 'FGNRCH40L63G673Z', 'VNTLRA83L66L892R', 'FRRRME55P22I242X', 18),
(19, '2016-05-07 14:10:00', 'Chirurgia', 'Visita', 'Effettuata', 'L', 'VCCPRM76D25F962I', 'NPLRBR86C15G943H', 'DRSSBR79M64I107Z', 19),
(20, '2016-05-10 15:10:00', 'Chirurgia', 'Controllo', 'Effettuata', 'L', 'VCCPRM76D25F962I', 'SNTIRN64R69L396Z', 'DRSSBR79M64I107Z', 20),
(21, '2016-05-10 14:10:00', 'Pronto Soccorso', 'Visita', 'Effettuata', 'L', 'VNTRMN55A25I938C', 'NGRORN50C56E588V', 'FRIRCH25R48C812Q', 21),
(22, '2016-05-11 09:45:00', 'Pediatria', 'Visita', 'Effettuata', 'L', 'ALTCHR76C62H280W', 'VNTTRS68M12C461Q', 'RZZSLV11M61A627C', 22),
(23, '2016-05-11 10:15:00', 'Radiologia', 'Visita', 'Effettuata', 'L', 'BDLQNT53L28H655N', 'GLMANG41T65C577W', 'CRBRBR83E14D686I', 23),
(24, '2016-06-10 10:00:00', 'Urologia', 'Visita', 'Prenotata', 'L', 'OPPGSP37D03H220B', NULL, 'CRBRBR83E14D686I', NULL);

SET FOREIGN_KEY_CHECKS = 1;
