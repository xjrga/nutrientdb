SELECT c.ndb_no,
       c.long_desc,
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
      WHERE (nutr_no = 203 OR nutr_no = 204 OR nutr_no = 205 OR nutr_no = 208 OR nutr_no = 221 OR nutr_no = 255 OR nutr_no = 291 OR nutr_no = 301 OR nutr_no = 303 OR nutr_no = 304 OR nutr_no = 305 OR nutr_no = 306 OR nutr_no = 307 OR nutr_no = 309 OR nutr_no = 312 OR nutr_no = 313 OR nutr_no = 315 OR nutr_no = 317 OR nutr_no = 320 OR nutr_no = 323 OR nutr_no = 328 OR nutr_no = 401 OR nutr_no = 404 OR nutr_no = 405 OR nutr_no = 406 OR nutr_no = 410 OR nutr_no = 415 OR nutr_no = 418 OR nutr_no = 421 OR nutr_no = 430 OR nutr_no = 435 OR nutr_no = 601 OR nutr_no = 606 OR nutr_no = 621 OR nutr_no = 629 OR nutr_no = 645 OR nutr_no = 646 OR nutr_no = 675 OR nutr_no = 851)) a,
     (SELECT ndb_no,
             nutr_no,
             nutr_val
      FROM nut_data
      WHERE ndb_no = '11424 ') b,
     food_des c
WHERE a.nutr_no = b.nutr_no
AND   b.ndb_no = c.ndb_no
