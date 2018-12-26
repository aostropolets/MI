select count(*) from ohdsi_cumc_deid_pending.results.events_gender --
where gender=1 ;

select stdev(age) , gender from
                              ohdsi_cumc_deid_pending.results.events_gender --
group by gender;

select avg(age) , gender from
                              ohdsi_cumc_deid_pending.results.events_gender --
group by gender;


select count(*), gender, MI from ohdsi_cumc_deid_pending.results.events_gender --
group by gender, MI;
select count(*), gender, H from ohdsi_cumc_deid_pending.results.events_gender --
group by gender, H;
select count(*), gender, SM from ohdsi_cumc_deid_pending.results.events_gender --
group by gender, SM;
select count(*), gender, BMI from ohdsi_cumc_deid_pending.results.events_gender --
group by gender, BMI;
select count(*), gender, DM2 from ohdsi_cumc_deid_pending.results.events_gender --
group by gender, DM2;
select count(*), gender, AF from ohdsi_cumc_deid_pending.results.events_gender --
group by gender, AF;
select count(*), gender, LL from ohdsi_cumc_deid_pending.results.events_gender --
group by gender, LL;

select count(*),gender, ethnicity_concept_id   from ohdsi_cumc_deid_pending.results.events_gender e
                                join ohdsi_cumc_deid_pending.dbo.person p
on e.person_id = p.person_id
group by gender,ethnicity_concept_id
