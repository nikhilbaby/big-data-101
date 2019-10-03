create table battles ( name string, battle_number string, attacker_king string, defender_king string) row format delimited fields terminated by ',';
load data inpath '/tmp/demo/data/got_battles.csv' into table battles;
select * from battles;


