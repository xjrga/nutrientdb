SELECT c.ndb_no,
--       c.long_desc,
       c.shrt_desc,
       a.nutr_no,
       a.tagname,
       a.nutrdesc,
       b.nutr_val,
       a.units
FROM (SELECT nutr_no,
             tagname,
             nutrdesc,
             units
      FROM nutr_def
      --WHERE (nutr_no = 621 OR nutr_no = 629 OR nutr_no = 631 OR nutr_no = 646 OR nutr_no = 851 OR nutr_no = 852 or nutr_no = 672 or nutr_no = 675 or nutr_no = 685 or nutr_no = 853 or nutr_no = 855)) a,
      WHERE (nutr_no = 621 or nutr_no = 629 or nutr_no = 646 or nutr_no = 675 or nutr_no = 851)) a,
     (SELECT ndb_no,
             nutr_no,
             nutr_val
      FROM nut_data
      WHERE ndb_no = '08120'
      OR    ndb_no = '08122'
      OR    ndb_no = '08123'
      OR    ndb_no = '20033'
      OR    ndb_no = '20038'
      OR    ndb_no = '11251'
      OR    ndb_no = '11143'
      OR    ndb_no = '01171'
      OR    ndb_no = '01124'
      OR    ndb_no = '15261'
      OR    ndb_no = '15262'
      OR    ndb_no = '20040'
      OR    ndb_no = '20041'
      OR    ndb_no = '19296'
      OR    ndb_no = '15121'
      OR    ndb_no = '16043'
      OR    ndb_no = '01085'
      OR    ndb_no = '11603'
      OR    ndb_no = '21228'
      OR    ndb_no = '21138'
      OR    ndb_no = '14148'
      OR    ndb_no = '19868'
      OR    ndb_no = '19335'
      OR    ndb_no = '08402'
      OR    ndb_no = '11507'
      OR    ndb_no = '09200'
      OR    ndb_no = '09003'
      OR    ndb_no = '09040'
      OR    ndb_no = '16056'
      OR    ndb_no = '16358'
      OR    ndb_no = '18070'
      OR    ndb_no = '11352'
      OR    ndb_no = '16015'
      OR    ndb_no = '04053'
      OR    ndb_no = '04582'
      OR    ndb_no = '16390'
      OR    ndb_no = '12063'
      OR    ndb_no = '11091'
      OR    ndb_no = '15237'
      OR    ndb_no = '20045'
      OR    ndb_no = '11090'
      OR    ndb_no = '11457'
      OR    ndb_no = '09148'
      OR    ndb_no = '09176'
      OR    ndb_no = '09140'
      OR    ndb_no = '09252'
      OR    ndb_no = '09236'
      OR    ndb_no = '09279'
      OR    ndb_no = '09266'
      OR    ndb_no = '20124'
      OR    ndb_no = '20125'
      OR    ndb_no = '18042'
      OR    ndb_no = '09193'
      OR    ndb_no = '11011'
      OR    ndb_no = '11260'
      OR    ndb_no = '11265'
      OR    ndb_no = '10060'
      OR    ndb_no = '23441'
      OR    ndb_no = '05662'
      OR    ndb_no = '05219'
      OR    ndb_no = '05000'
      OR    ndb_no = '16108'
      OR    ndb_no = '16069'
      OR    ndb_no = '11304'
      OR    ndb_no = '11168'
      OR    ndb_no = '11124'
      OR    ndb_no = '11529'
      OR    ndb_no = '11282'
      OR    ndb_no = '11953'
      OR    ndb_no = '12220'
      OR    ndb_no = '09037'
      OR    ndb_no = '43312'
      OR    ndb_no = '11583'
      OR    ndb_no = '11278'
      OR    ndb_no = '08001'
      OR    ndb_no = '02047'
      OR    ndb_no = '43158'
      OR    ndb_no = '11109'
      OR    ndb_no = '01097'
      OR    ndb_no = '15119'
      OR    ndb_no = '11353'
      OR    ndb_no = '20420'
      OR    ndb_no = '11366'
      OR    ndb_no = '09298'
      OR    ndb_no = '11205'
      OR    ndb_no = '05062'
      OR    ndb_no = '05065'
      OR    ndb_no = '01265'
      OR    ndb_no = '01256'
      OR    ndb_no = '01287'
      OR    ndb_no = '01014'
      OR    ndb_no = '12155'
      OR    ndb_no = '12142'
      OR    ndb_no = '16036'
      OR    ndb_no = '16109'
      OR    ndb_no = '16048'
      OR    ndb_no = '16046'
      OR    ndb_no = '16070'
      OR    ndb_no = '16057'
      OR    ndb_no = '09111'
      OR    ndb_no = '31013'
      OR    ndb_no = '16121'
      OR    ndb_no = '16122'
      OR    ndb_no = '01115'
      OR    ndb_no = '14066'
      OR    ndb_no = '01092'
      OR    ndb_no = '01090'
      OR    ndb_no = '01173'
      OR    ndb_no = '20015'
      OR    ndb_no = '08244'
      OR    ndb_no = '20077'
      OR    ndb_no = '19165'
      OR    ndb_no = '09302'
      OR    ndb_no = '09518'
      OR    ndb_no = '09042'
      OR    ndb_no = '35029'
      OR    ndb_no = '11264'
      OR    ndb_no = '11113'
      OR    ndb_no = '09287'
      OR    ndb_no = '11804'
      OR    ndb_no = '11734'
      OR    ndb_no = '09089'
      OR    ndb_no = '09095'
      OR    ndb_no = '19806'
      OR    ndb_no = '09191'
      OR    ndb_no = '31008'
      OR    ndb_no = '19034'
      OR    ndb_no = '09110'
      OR    ndb_no = '16040'
      OR    ndb_no = '09218'
      OR    ndb_no = '09070'
      OR    ndb_no = '20138'
      OR    ndb_no = '11905'
      OR    ndb_no = '09194'
      OR    ndb_no = '20141'
      OR    ndb_no = '11901'
      OR    ndb_no = '11167'
      OR    ndb_no = '20137'
      OR    ndb_no = '18042'
      OR    ndb_no = '20031'
      OR    ndb_no = '09184'
      OR    ndb_no = '12061'
      OR    ndb_no = '20067'
      OR    ndb_no = '20035'
      OR    ndb_no = '12063'
      OR    ndb_no = '20001'
      OR    ndb_no = '12142'
      OR    ndb_no = '20028'
      OR    ndb_no = '09326'
      OR    ndb_no = '09297'
      OR    ndb_no = '09132'
      OR    ndb_no = '19902'
      OR    ndb_no = '12131'
      OR    ndb_no = '20032'
      OR    ndb_no = '19108'
      OR    ndb_no = '19116') b,
food_des c
WHERE a.nutr_no = b.nutr_no
AND   b.ndb_no = c.ndb_no
ORDER BY shrt_desc,
         nutr_no
