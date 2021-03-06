CREATE TABLE #Codesets (
  codeset_id int NOT NULL,
  concept_id bigint NOT NULL
)
;

-- DM type II
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 0 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (201826) and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (201826)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (201826) and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (201826)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;

-- DM type I
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 1 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (201254)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (201254)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (201254)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (201254)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;

-- MI
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 2 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM -- MI
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (4329847)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4329847)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (4329847)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4329847)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;

-- smoking
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 3 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (4044778,4246415,4276526,40766945,44802867,915747,2101895,42742405,4038739,4036562,4036563,
4041511,4052947,4209006,44784248,4042037,4052029,4044776,4052030,4209585,4044775,37395605,
4184633,4218917,4058138,4298794,46270550,4028286,4126918,4263877,4204653,4141787,21494888,
4144273,4044777,4058136)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4044778,4246415,4276526,40766945,44802867,915747,2101895,42742405,4038739,4036562,4036563,
4041511,4052947,4209006,44784248,4042037,4052029,4044776,4052030,4209585,4044775,37395605,
4184633,4218917,4058138,4298794,46270550,4028286,4126918,4263877,4204653,4141787,21494888,
4144273,4044777,4058136)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (
4044778,4246415,4276526,40766945,44802867,915747,2101895,42742405,4038739,4036562,4036563,
4041511,4052947,4209006,44784248,4042037,4052029,4044776,4052030,4209585,4044775,37395605,
4184633,4218917,4058138,4298794,46270550,4028286,4126918,4263877,4204653,4141787,21494888,
4144273,4044777,4058136)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4044778,4246415,4276526,40766945,44802867,915747,2101895,42742405,4038739,4036562,4036563,
4041511,4052947,4209006,44784248,4042037,4052029,4044776,4052030,4209585,4044775,37395605,
4184633,4218917,4058138,4298794,46270550,4028286,4126918,4263877,4204653,4141787,21494888,
4144273,4044777,4058136)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;

-- BMI
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 4 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (414916001,4215968,44783982,3038553)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (414916001,4215968,44783982,3038553)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (414916001,4215968,44783982,3038553)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (414916001,4215968,44783982,3038553)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;

-- hypertension + antihypertensive drugs
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 5 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in
(316866,1319998,1317967,991382,1332418,1314002,40235485,1335471,1322081,1338005,
932745,1351557,1340128,1346823,1395058,1398937,1328165,1363053,1341927,
1309799,1346686,1353776,1363749,956874,1344965,974166,978555,1347384,
1326012,1386957,1308216,1367500,1305447,907013,1307046,1309068,1310756,
1313200,1314577,1318137,1318853,1319880,40226742,1327978,1373225,1345858,
1350489,1353766,1331235,1334456,970250,1317640,1341238,942350,
1342439,904542,1308842,1307863)
                                                               and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (316866,1319998,1317967,991382,1332418,1314002,40235485,1335471,1322081,1338005,
932745,1351557,1340128,1346823,1395058,1398937,1328165,1363053,1341927,
1309799,1346686,1353776,1363749,956874,1344965,974166,978555,1347384,
1326012,1386957,1308216,1367500,1305447,907013,1307046,1309068,1310756,
1313200,1314577,1318137,1318853,1319880,40226742,1327978,1373225,1345858,
1350489,1353766,1331235,1334456,970250,1317640,1341238,942350,
1342439,904542,1308842,1307863)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in
(316866,1319998,1317967,991382,1332418,1314002,40235485,1335471,1322081,1338005,
932745,1351557,1340128,1346823,1395058,1398937,1328165,1363053,1341927,
1309799,1346686,1353776,1363749,956874,1344965,974166,978555,1347384,
1326012,1386957,1308216,1367500,1305447,907013,1307046,1309068,1310756,
1313200,1314577,1318137,1318853,1319880,40226742,1327978,1373225,1345858,
1350489,1353766,1331235,1334456,970250,1317640,1341238,942350,
1342439,904542,1308842,1307863)
                                                               and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (316866,1319998,1317967,991382,1332418,1314002,40235485,1335471,1322081,1338005,
932745,1351557,1340128,1346823,1395058,1398937,1328165,1363053,1341927,
1309799,1346686,1353776,1363749,956874,1344965,974166,978555,1347384,
1326012,1386957,1308216,1367500,1305447,907013,1307046,1309068,1310756,
1313200,1314577,1318137,1318853,1319880,40226742,1327978,1373225,1345858,
1350489,1353766,1331235,1334456,970250,1317640,1341238,942350,
1342439,904542,1308842,1307863)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;

-- lipid-lowering drugs
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 6 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (21601853)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (21601853)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (21601853)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (21601853)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;

-- AF
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 7 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (4329847)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (313217)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (313217)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (313217)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;


-- cardiovascular events
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 8 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (4164092,319844,321318,443454,4043731,4329847,373503)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4164092,319844,321318,443454,4043731,4329847,373503)
  and c.invalid_reason is null
UNION
select distinct cr.concept_id_1 as concept_id
FROM
(
  select concept_id from ohdsi_cumc_deid_pending.dbo.CONCEPT where concept_id in (4164092,319844,321318,443454,4043731,4329847,373503)and invalid_reason is null
UNION  select c.concept_id
  from ohdsi_cumc_deid_pending.dbo.CONCEPT c
  join ohdsi_cumc_deid_pending.dbo.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (4164092,319844,321318,443454,4043731,4329847,373503)
  and c.invalid_reason is null

) C
join ohdsi_cumc_deid_pending.dbo.concept_relationship cr on C.concept_id = cr.concept_id_2 and cr.relationship_id = 'Maps to' and cr.invalid_reason IS NULL

) I
) C;
-- set all risk factors to occur earlier than 2012

SELECT person_id, start_date,event_type
INTO #events
FROM
(
  select person_id, condition_start_date as start_date, 'DM2' as event_type
  from ohdsi_cumc_deid_pending.dbo.condition_occurrence c
join #codesets cd on  cd.concept_id = c.condition_concept_id
where cd.codeset_id = 0 -- DM
    and year(condition_start_date) >= '2012'
union all
  select person_id, condition_start_date, 'DM1'
  from ohdsi_cumc_deid_pending.dbo.condition_occurrence c
join #codesets cd on  cd.concept_id = c.condition_concept_id
where cd.codeset_id = 1 -- DM
    and year(condition_start_date) >= '2012'
union all
    select person_id,condition_start_date,'MI'
  from ohdsi_cumc_deid_pending.dbo.condition_occurrence c
join #codesets cd on  cd.concept_id = c.condition_concept_id
where cd.codeset_id = 2 -- MI
    and year(condition_start_date) >= '2012'
union all
    select person_id,condition_start_date,'SM'
  from ohdsi_cumc_deid_pending.dbo.condition_occurrence c
join #codesets cd on  cd.concept_id = c.condition_concept_id
where cd.codeset_id = 3 -- smoking
    and year(condition_start_date) >= '2012'
union all
    select person_id,measurement_date,'SM'
  from ohdsi_cumc_deid_pending.dbo.measurement c
join #codesets cd on  cd.concept_id = c.measurement_concept_id
where cd.codeset_id = 3 -- smoking
    and year(measurement_date) >= '2012'
union all
    select person_id,observation_date,'SM'
  from ohdsi_cumc_deid_pending.dbo.observation c
join #codesets cd on  cd.concept_id = c.observation_concept_id
where cd.codeset_id = 3 -- smoking
    and year(observation_date) >= '2012'
union all
    select person_id,measurement_date,'BMI'
  from ohdsi_cumc_deid_pending.dbo.measurement c
join #codesets cd on  cd.concept_id = c.measurement_concept_id
where cd.codeset_id = 4 -- BMI measured
    and year(measurement_date) >= '2012'
    and value_as_number>30
union all
    select person_id,observation_date,'BMI'
  from ohdsi_cumc_deid_pending.dbo.observation c
join #codesets cd on  cd.concept_id = c.observation_concept_id
where cd.codeset_id = 4 -- obesity
    and year(observation_date) >= '2012'
union all
    select person_id,condition_start_date,'BMI'
  from ohdsi_cumc_deid_pending.dbo.condition_occurrence c
join #codesets cd on  cd.concept_id = c.condition_concept_id
where cd.codeset_id = 4 --obesity
    and year(condition_start_date) >= '2012'
union all
    select person_id,condition_start_date,'H'
  from ohdsi_cumc_deid_pending.dbo.condition_occurrence c
join #codesets cd on  cd.concept_id = c.condition_concept_id
where cd.codeset_id = 5 -- hypertension
    and year(condition_start_date) >= '2012'
union all
    select person_id,drug_exposure_start_date,'H'
  from ohdsi_cumc_deid_pending.dbo.drug_exposure c
join #codesets cd on  cd.concept_id = c.drug_concept_id
where cd.codeset_id = 5 -- antihypertensive_drugs
    and year(drug_exposure_start_date) >= '2012'
union all
    select person_id,drug_exposure_start_date,'LL'
  from ohdsi_cumc_deid_pending.dbo.drug_exposure c
join #codesets cd on  cd.concept_id = c.drug_concept_id
where cd.codeset_id = 6 -- lipid-lowering drugs
    and year(drug_exposure_start_date) >= '2012'
union all
    select person_id,condition_start_date,'AF'
  from ohdsi_cumc_deid_pending.dbo.condition_occurrence c
join #codesets cd on  cd.concept_id = c.condition_concept_id
where cd.codeset_id = 7 -- AF
    and year(condition_start_date) >= '2012'
) E
;


-- fix gender


create table ohdsi_cumc_deid_pending.results.DM2
(person_id int,
DM2 int,
age int,
year_of_birth int,
time int);

insert into ohdsi_cumc_deid_pending.results.DM2
select p.person_id,
       case when e.person_id is not null then 1 else 0 end  as DM2,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'DM2'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982;

create table ohdsi_cumc_deid_pending.results.DM1
(person_id int,
DM1 int,
age int,
year_of_birth int,
time int);

insert into ohdsi_cumc_deid_pending.results.DM1
select p.person_id,
       case when e.person_id is not null then 1 else 0 end  as DM1,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'DM1'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982;

create table ohdsi_cumc_deid_pending.results.MI
(person_id int,
MI int,
age int,
year_of_birth int,
time int);

insert into ohdsi_cumc_deid_pending.results.MI
select p.person_id,
       case when e.person_id is not null then 1 else 0 end  as MI,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'MI'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982;

create table ohdsi_cumc_deid_pending.results.SM
(person_id int,
SM int,
age int,
year_of_birth int,
time int);

insert into ohdsi_cumc_deid_pending.results.SM
select p.person_id,
       case when e.person_id is not null then 1 else 0 end  as SM,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'SM'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982;

create table ohdsi_cumc_deid_pending.results.BMI
(person_id int,
BMI int,
age int,
year_of_birth int,
time int);

insert into ohdsi_cumc_deid_pending.results.BMI
select p.person_id,
       case when e.person_id is not null then 1 else 0 end  as BMI,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'BMI'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982;

create table ohdsi_cumc_deid_pending.results.AF
(person_id int,
AF int,
age int,
year_of_birth int,
time int);

insert into ohdsi_cumc_deid_pending.results.AF
select p.person_id,
       case when e.person_id is not null then 1 else 0 end  as AF,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'AF'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982;

create table ohdsi_cumc_deid_pending.results.H
(person_id int,
H int,
age int,
year_of_birth int,
time int);

insert into ohdsi_cumc_deid_pending.results.H
select p.person_id,
       case when e.person_id is not null then 1 else 0 end  as H,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'H'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982;


create table ohdsi_cumc_deid_pending.results.LL
(person_id int,
LL int,
age int,
year_of_birth int,
time int);

insert into ohdsi_cumc_deid_pending.results.LL
select p.person_id,
       case when e.person_id is not null then 1 else 0 end  as LL,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'LL'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982;

drop table --ohdsi_cumc_deid_pending.results.event;
create table ohdsi_cumc_deid_pending.results.event
(person_id int,
gender int,
DM2 int,
DM1 int,
MI int,
SM int,
BMI int,
AF int,
H int,
LL int,
age int,
year_of_birth int,
time int);

drop table ohdsi_cumc_deid_pending.results.event;
/*
insert into ohdsi_cumc_deid_pending.results.event
select p.person_id,
       case when gender_concept_id = 8532 then 2 else 1 end  as gender, -- 2 = FEMALE
       case when e.person_id is not null then 1 else 0 end  as DM2,
       case when e2.person_id is not null then 1 else 0 end as DM1,
       case when e3.person_id is not null then 1 else 0 end  as MI,
       case when e4.person_id is not null then 1 else 0 end  as SM,
       case when e5.person_id is not null then 1 else 0 end  as BMI,
       case when e6.person_id is not null then 1 else 0 end  as AF,
       case when e7.person_id is not null then 1 else 0 end  as H,
       case when e8.person_id is not null then 1 else 0 end  as LL,
       case when year_of_birth = 1776 then null else 2012 - year_of_birth end as age,
       case when year_of_birth = 1776 then null else year_of_birth end as year_of_birth,
       cast(ABS(DATEDIFF(day, o.observation_period_end_date, '2012-01-01')) as int) as time
from ohdsi_cumc_deid_pending.dbo.person p
       join ohdsi_cumc_deid_pending.dbo.observation_period o on o.person_id = p.person_id
       left join #events e on e.person_id = p.person_id
                                and e.event_type = 'DM2'
       left join #events e2 on e2.person_id = p.person_id
                                 and e2.event_type = 'DM1'
       left join #events e3 on e3.person_id = p.person_id
                                 and e3.event_type = 'MI'
       left join #events e4 on e4.person_id = p.person_id
                                 and e4.event_type = 'SM'
       left join #events e5 on e5.person_id = p.person_id
                                 and e5.event_type = 'BMI'
       left join #events e6 on e6.person_id = p.person_id
                                 and e6.event_type = 'AF'
       left join #events e7 on e7.person_id = p.person_id
                                 and e7.event_type = 'H'
       left join #events e8 on e8.person_id = p.person_id
                                 and e8.event_type = 'LL'
where gender_concept_id in (8532, 8507)
and year_of_birth<1982
;
*/
/*

insert into ohdsi_cumc_deid_pending.results.event
select d.person_id,case when p.gender_concept_id = 8532 then 2 else 1 end  as gender, -- 2 = FEMALE
       DM2,DM1,MI,SM,BMI,AF,H,LL,d.age,d.year_of_birth,d.time
from DM2 d
        inner LOOP join ohdsi_cumc_deid_pending.dbo.person p on p.person_id = d.person_id
        inner LOOP join DM1 e WITH (INDEX ( idx_DM1_person_id)) on e.person_id = d.person_id
        inner LOOP join MI e2 WITH (INDEX ( idx_MI_person_id)) on e2.person_id = d.person_id
        inner LOOP join SM e3 WITH (INDEX ( idx_SM_person_id)) on e3.person_id = d.person_id
        inner LOOP join BMI e4 WITH (INDEX ( idx_BMI_person_id)) on e4.person_id = d.person_id
        inner LOOP join AF e5 WITH (INDEX ( idx_AF_person_id)) on e5.person_id = d.person_id
        inner LOOP join H e6 WITH (INDEX ( idx_H_person_id)) on e6.person_id = d.person_id
        inner LOOP join LL e7 WITH (INDEX ( idx_LL_person_id)) on e7.person_id = d.person_id
;

*/

-- Create indexes on all join tables for "person_id" field

DROP INDEX idx_DM1_person_id ON DM1;

CREATE INDEX idx_DM1_person_id ON DM1 (person_id);
CREATE INDEX idx_MI_person_id ON MI (person_id);
CREATE INDEX idx_SM_person_id ON SM (person_id);
CREATE INDEX idx_BMI_person_id ON BMI (person_id);
CREATE INDEX idx_AF_person_id ON AF (person_id);
CREATE INDEX idx_H_person_id ON H (person_id);
CREATE INDEX idx_LL_person_id ON LL (person_id);


create table ohdsi_cumc_deid_pending.results.DM1_2
(
 person_id int,
  DM2 int,
  DM1 int,
  age int,
  year_of_birth int,
  time int
);

insert into ohdsi_cumc_deid_pending.results.DM1_2
select p.person_id, DM2, DM1, coalesce(d.age,d2.age),coalesce(d.year_of_birth,d2.year_of_birth),coalesce (d.time,d2.time)
from ohdsi_cumc_deid_pending.dbo.person p
left join DM2 d on p.person_id = d.person_id
left join DM1 d2 on p.person_id = d2.person_id;



create table ohdsi_cumc_deid_pending.results.MI_SM

( person_id int,
  MI int,
  SM int,
  age int,
  year_of_birth int,
  time int

);

insert into ohdsi_cumc_deid_pending.results.MI_SM
select p.person_id, MI, SM, coalesce(d.age,d2.age),coalesce(d.year_of_birth,d2.year_of_birth),coalesce (d.time,d2.time)
from ohdsi_cumc_deid_pending.dbo.person p
left join MI d on p.person_id = d.person_id
left join SM d2 on p.person_id = d2.person_id;


create table ohdsi_cumc_deid_pending.results.DM12_MI_SM

( person_id int,
  DM2 int,
  DM1 int,
  MI int,
  SM int,
  age int,
  year_of_birth int,
  time int

);

insert into ohdsi_cumc_deid_pending.results.DM12_MI_SM
select coalesce(d.person_id,d2.person_id), DM2,DM1,MI, SM, coalesce(d.age,d2.age),coalesce(d.year_of_birth,d2.year_of_birth),coalesce (d.time,d2.time)
from ohdsi_cumc_deid_pending.results.DM1_2 d
full outer join ohdsi_cumc_deid_pending.results.MI_SM d2 on d.person_id = d2.person_id;

delete from ohdsi_cumc_deid_pending.results.DM12_MI_SM
where time is null;

create table ohdsi_cumc_deid_pending.results.BMI_AF

( person_id int,
  BMI int,
  AF int,
  age int,
  year_of_birth int,
  time int

);

insert into ohdsi_cumc_deid_pending.results.BMI_AF
select p.person_id, BMI, AF, coalesce(d.age,d2.age),coalesce(d.year_of_birth,d2.year_of_birth),coalesce (d.time,d2.time)
from ohdsi_cumc_deid_pending.dbo.person p
left join BMI d on p.person_id = d.person_id
left join AF d2 on p.person_id = d2.person_id;

delete from ohdsi_cumc_deid_pending.results.BMI_AF
where time is null;

create table ohdsi_cumc_deid_pending.results.DM12_MI_SM_BMI_AF

( person_id int,
  DM1 int,
  DM2 int,
  MI int,
  SM int,
  BMI int,
  AF int,
  age int,
  year_of_birth int,
  time int

);

insert into ohdsi_cumc_deid_pending.results.DM12_MI_SM_BMI_AF
select p.person_id, DM2, DM2, MI, SM, BMI,AF, coalesce(d.age,d2.age),coalesce(d.year_of_birth,d2.year_of_birth),coalesce (d.time,d2.time)
from ohdsi_cumc_deid_pending.dbo.person p
    left join ohdsi_cumc_deid_pending.results.DM12_MI_SM d on p.person_id = d.person_id
    left join ohdsi_cumc_deid_pending.results.BMI_AF d2 on p.person_id = d2.person_id;
;

create table ohdsi_cumc_deid_pending.results.event_1

( person_id int,
  DM1 int,
  DM2 int,
  MI int,
  SM int,
  BMI int,
  AF int,
  age int,
  year_of_birth int,
  time int

);

insert into ohdsi_cumc_deid_pending.results.event_1
select distinct * from  ohdsi_cumc_deid_pending.results.DM12_MI_SM_BMI_AF;


create table ohdsi_cumc_deid_pending.results.H_LL

( person_id int,
  H int,
  LL int,
  age int,
  year_of_birth int,
  time int

);

insert into ohdsi_cumc_deid_pending.results.H_LL
select p.person_id, H, LL, coalesce(d.age,d2.age),coalesce(d.year_of_birth,d2.year_of_birth),coalesce (d.time,d2.time)
from ohdsi_cumc_deid_pending.dbo.person p
left join H d on p.person_id = d.person_id
left join LL d2 on p.person_id = d2.person_id;


create table ohdsi_cumc_deid_pending.results.event

( person_id int,
  DM1 int,
  DM2 int,
  MI int,
  SM int,
  BMI int,
  AF int,
  LL int,
  H int,
  age int,
  year_of_birth int,
  time int

);

insert into ohdsi_cumc_deid_pending.results.event
select p.person_id,DM2, DM2, MI, SM, BMI,AF, LL, H, p.age,p.year_of_birth, p.time
from ohdsi_cumc_deid_pending.results.event_1 p
left join  ohdsi_cumc_deid_pending.results.H_LL d on p.person_id = d.person_id;

create table ohdsi_cumc_deid_pending.results.events

( person_id int,
  DM1 int,
  DM2 int,
  MI int,
  SM int,
  BMI int,
  AF int,
  LL int,
  H int,
  age int,
  year_of_birth int,
  time int

);

insert into ohdsi_cumc_deid_pending.results.events
select distinct * from ohdsi_cumc_deid_pending.results.event;

-- prior cardiovscular events
delete from ohdsi_cumc_deid_pending.results.events
where person_id in
      (select person_id from ohdsi_cumc_deid_pending.dbo.condition_occurrence c
      join #codesets on concept_id = condition_concept_id and codeset_id = 8
      and year(condition_start_date)<='2012');
      
delete from ohdsi_cumc_deid_pending.results.events
where time is null and year_of_birth is null;

drop  table ohdsi_cumc_deid_pending.results.events_gender;
create table ohdsi_cumc_deid_pending.results.events_gender
(
	person_id int,
	DM1 int,
	DM2 int,
	MI int,
	SM int,
	BMI int,
	AF int,
	LL int,
	H int,
	age int,
	year_of_birth int,
	time int,
  gender int
)
;


insert into ohdsi_cumc_deid_pending.results.events_gender
 select distinct e.*, case when p.gender_concept_id = 8532  then 2
when p.gender_concept_id=8507 then 1
 else null end as gender
                                from ohdsi_cumc_deid_pending.results.events e
                                join ohdsi_cumc_deid_pending.dbo.person p on e.person_id = p.person_id;      
      

drop table DM2;
drop table DM1;
drop table MI;
drop table SM;
drop table BMI;
drop table AF;
drop table H;
drop table LL;
drop table event;
drop table results.BMI_AF;
drop table results.BMI_AF_H_LL;
drop table results.DM12_MI_SM;
drop table results.DM12_MI_SM_BMI_AF;
drop table results.DM1_2;
drop table results.event;
drop table results.event_1;
drop table results.H_LL;
drop table results.MI_SM;



