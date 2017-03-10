
-- START Robert B. Aderholt
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Robert B. Aderholt', 'R', 'RobertAderholt', 'Robert_Aderholt',
'Robert Aderholt', 'https://aderholt.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Robert B. Aderholt' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AL' AND d.name = '04';
-- END Robert B. Aderholt


-- START Justin Amash
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Justin Amash', 'R', 'repjustinamash', '',
'Justin Amash', 'http://amash.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Justin Amash' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '03';
-- END Justin Amash


-- START Lou Barletta
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lou Barletta', 'R', 'CongressmanLouBarletta', 'RepLouBarletta',
'Lou Barletta', 'http://barletta.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lou Barletta' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '11';
-- END Lou Barletta


-- START Joe Barton
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Joe Barton', 'R', 'RepJoeBarton', 'RepJoeBarton',
'Joe Barton', 'https://joebarton.house.gov', '17', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Joe Barton' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '06';
-- END Joe Barton


-- START Karen Bass
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Karen Bass', 'D', 'RepKarenBass', 'RepKarenBass',
'Karen Bass', 'https://bass.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Karen Bass' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '37';
-- END Karen Bass


-- START Gus M. Bilirakis
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Gus M. Bilirakis', 'R', 'GusBilirakis', 'RepGusBilirakis',
'Gus Bilirakis', 'https://bilirakis.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Gus M. Bilirakis' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '12';
-- END Gus M. Bilirakis


-- START Rob Bishop
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Rob Bishop', 'R', 'RepRobBishop', 'RepRobBishop',
'Rob Bishop', 'http://robbishop.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Rob Bishop' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'UT' AND d.name = '01';
-- END Rob Bishop


-- START Sanford D. Bishop, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Sanford D. Bishop, Jr.', 'D', 'sanfordbishop', 'SanfordBishop',
'Sanford Bishop', 'http://bishop.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Sanford D. Bishop, Jr.' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '02';
-- END Sanford D. Bishop, Jr.


-- START Diane Black
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Diane Black', 'R', 'DianeBlackTN06', 'RepDianeBlack',
'Diane Black', 'http://black.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Diane Black' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '06';
-- END Diane Black


-- START Marsha Blackburn
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Marsha Blackburn', 'R', 'marshablackburn', 'MarshaBlackburn',
'Marsha Blackburn', 'http://blackburn.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Marsha Blackburn' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '07';
-- END Marsha Blackburn


-- START Earl Blumenauer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Earl Blumenauer', 'D', '', 'BlumenauerMedia',
'Earl Blumenauer', 'https://blumenauer.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Earl Blumenauer' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OR' AND d.name = '03';
-- END Earl Blumenauer


-- START Madeleine Z. Bordallo
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Madeleine Z. Bordallo', 'D', 'madeleine.bordallo', '',
'Madeleine Bordallo', 'https://bordallo.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Madeleine Z. Bordallo' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GU' AND d.name = '00';
-- END Madeleine Z. Bordallo


-- START Kevin Brady
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kevin Brady', 'R', 'kevinbrady', 'RepKevinBrady',
'Kevin Brady', 'http://kevinbrady.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kevin Brady' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '08';
-- END Kevin Brady


-- START Robert A. Brady
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Robert A. Brady', 'D', 'RepRobertBrady', 'RepBrady',
'Bob Brady', 'http://brady.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Robert A. Brady' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '01';
-- END Robert A. Brady


-- START Mo Brooks
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mo Brooks', 'R', 'RepMoBrooks', 'RepMoBrooks',
'Mo Brooks', 'https://brooks.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mo Brooks' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AL' AND d.name = '05';
-- END Mo Brooks


-- START Vern Buchanan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Vern Buchanan', 'R', 'CongressmanBuchanan', 'VernBuchanan',
'Vern Buchanan', 'https://buchanan.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Vern Buchanan' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '16';
-- END Vern Buchanan


-- START Larry Bucshon
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Larry Bucshon', 'R', 'RepLarryBucshon', 'RepLarryBucshon',
'Larry Bucshon', 'https://bucshon.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Larry Bucshon' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '08';
-- END Larry Bucshon


-- START Michael C. Burgess
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Michael C. Burgess', 'R', 'michaelcburgess', 'MichaelCBurgess',
'Michael C. Burgess', 'http://burgess.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Michael C. Burgess' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '26';
-- END Michael C. Burgess


-- START G. K. Butterfield
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'G. K. Butterfield', 'D', 'congressmangkbutterfield', 'GKButterfield',
'G. K. Butterfield', 'http://butterfield.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'G. K. Butterfield' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '01';
-- END G. K. Butterfield


-- START Ken Calvert
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ken Calvert', 'R', '70063393423', 'KenCalvert',
'Ken Calvert', 'http://calvert.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ken Calvert' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '42';
-- END Ken Calvert


-- START Michael E. Capuano
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Michael E. Capuano', 'D', 'RepMichaelCapuano', 'RepMikeCapuano',
'Mike Capuano', 'http://capuano.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Michael E. Capuano' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '07';
-- END Michael E. Capuano


-- START André Carson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'André Carson', 'D', 'CongressmanAndreCarson', 'RepAndreCarson',
'André Carson', 'http://carson.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'André Carson' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '07';
-- END André Carson


-- START John R. Carter
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John R. Carter', 'R', 'judgecarter', 'JudgeCarter',
'John Carter (Texas politician)', 'https://carter.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John R. Carter' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '31';
-- END John R. Carter


-- START Kathy Castor
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kathy Castor', 'D', 'USRepKathyCastor', 'USRepKCastor',
'Kathy Castor', 'http://castor.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kathy Castor' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '14';
-- END Kathy Castor


-- START Steve Chabot
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steve Chabot', 'R', 'RepSteveChabot', 'RepSteveChabot',
'Steve Chabot', 'http://chabot.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steve Chabot' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '01';
-- END Steve Chabot


-- START Jason Chaffetz
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jason Chaffetz', 'R', 'CongressmanJasonChaffetz', 'JasonInTheHouse',
'Jason Chaffetz', 'https://chaffetz.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jason Chaffetz' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'UT' AND d.name = '03';
-- END Jason Chaffetz


-- START Judy Chu
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Judy Chu', 'D', 'RepJudyChu', 'RepJudyChu',
'Judy Chu', 'https://chu.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Judy Chu' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '27';
-- END Judy Chu


-- START David N. Cicilline
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David N. Cicilline', 'D', 'CongressmanDavidCicilline', 'RepCicilline',
'David Cicilline', 'http://cicilline.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David N. Cicilline' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'RI' AND d.name = '01';
-- END David N. Cicilline


-- START Yvette D. Clarke
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Yvette D. Clarke', 'D', 'repyvettedclarke', 'RepYvetteClarke',
'Yvette Clarke', 'https://clarke.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Yvette D. Clarke' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '09';
-- END Yvette D. Clarke


-- START Wm. Lacy Clay
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Wm. Lacy Clay', 'D', '109135405838588', '',
'Lacy Clay', 'https://lacyclay.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Wm. Lacy Clay' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MO' AND d.name = '01';
-- END Wm. Lacy Clay


-- START Emanuel Cleaver
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Emanuel Cleaver', 'D', 'emanuelcleaverii', 'RepCleaver',
'Emanuel Cleaver', 'http://cleaver.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Emanuel Cleaver' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MO' AND d.name = '05';
-- END Emanuel Cleaver


-- START James E. Clyburn
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'James E. Clyburn', 'D', 'jameseclyburn', 'Clyburn',
'Jim Clyburn', 'http://clyburn.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'James E. Clyburn' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'SC' AND d.name = '06';
-- END James E. Clyburn


-- START Mike Coffman
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Coffman', 'R', 'repmikecoffman', 'RepMikeCoffman',
'Mike Coffman', 'http://coffman.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Coffman' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CO' AND d.name = '06';
-- END Mike Coffman


-- START Steve Cohen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steve Cohen', 'D', 'CongressmanSteveCohen', 'RepCohen',
'Steve Cohen', 'https://cohen.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steve Cohen' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '09';
-- END Steve Cohen


-- START Tom Cole
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tom Cole', 'R', 'TomColeOK04', 'TomColeOK04',
'Tom Cole', 'https://cole.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tom Cole' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OK' AND d.name = '04';
-- END Tom Cole


-- START K. Michael Conaway
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'K. Michael Conaway', 'R', 'mike.conaway', 'ConawayTX11',
'Mike Conaway', 'http://conaway.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'K. Michael Conaway' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '11';
-- END K. Michael Conaway


-- START Gerald E. Connolly
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Gerald E. Connolly', 'D', 'CongressmanGerryConnolly', 'GerryConnolly',
'Gerry Connolly', 'https://connolly.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Gerald E. Connolly' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '11';
-- END Gerald E. Connolly


-- START John Conyers, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John Conyers, Jr.', 'D', 'CongressmanConyers', 'RepJohnConyers',
'John Conyers', 'https://conyers.house.gov', '27', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John Conyers, Jr.' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '13';
-- END John Conyers, Jr.


-- START Jim Cooper
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jim Cooper', 'D', 'JimCooper', 'RepJimCooper',
'Jim Cooper', 'http://cooper.house.gov', '14', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jim Cooper' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '05';
-- END Jim Cooper


-- START Jim Costa
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jim Costa', 'D', 'RepJimCosta', 'RepJimCosta',
'Jim Costa', 'https://costa.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jim Costa' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '16';
-- END Jim Costa


-- START Joe Courtney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Joe Courtney', 'D', 'joecourtney', 'RepJoeCourtney',
'Joe Courtney (politician)', 'https://courtney.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Joe Courtney' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CT' AND d.name = '02';
-- END Joe Courtney


-- START Eric A. "Rick" Crawford
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Eric A. "Rick" Crawford', 'R', 'RepRickCrawford', 'RepRickCrawford',
'Rick Crawford (politician)', 'http://crawford.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Eric A. "Rick" Crawford' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AR' AND d.name = '01';
-- END Eric A. "Rick" Crawford


-- START Joseph Crowley
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Joseph Crowley', 'D', 'repjoecrowley', 'RepJoeCrowley',
'Joseph Crowley', 'http://crowley.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Joseph Crowley' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '14';
-- END Joseph Crowley


-- START Henry Cuellar
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Henry Cuellar', 'D', '152569121550', 'RepCuellar',
'Henry Cuellar', 'http://cuellar.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Henry Cuellar' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '28';
-- END Henry Cuellar


-- START John Abney Culberson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John Abney Culberson', 'R', 'CongressmanCulberson', 'CongCulberson',
'John Culberson', 'http://culberson.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John Abney Culberson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '07';
-- END John Abney Culberson


-- START Elijah E. Cummings
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Elijah E. Cummings', 'D', 'elijahcummings', 'RepCummings',
'Elijah Cummings', 'https://cummings.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Elijah E. Cummings' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MD' AND d.name = '07';
-- END Elijah E. Cummings


-- START Danny K. Davis
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Danny K. Davis', 'D', 'CongressmanDKDavis', 'RepDannyDavis',
'Danny K. Davis', 'https://davis.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Danny K. Davis' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '07';
-- END Danny K. Davis


-- START Susan A. Davis
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Susan A. Davis', 'D', 'RepSusanDavis', 'RepSusanDavis',
'Susan Davis (politician)', 'https://susandavis.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Susan A. Davis' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '53';
-- END Susan A. Davis


-- START Peter A. DeFazio
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Peter A. DeFazio', 'D', 'RepPeterDeFazio', 'RepPeterDeFazio',
'Peter DeFazio', 'http://defazio.house.gov', '16', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Peter A. DeFazio' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OR' AND d.name = '04';
-- END Peter A. DeFazio


-- START Diana DeGette
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Diana DeGette', 'D', 'DianaDeGette', 'RepDianaDeGette',
'Diana DeGette', 'http://degette.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Diana DeGette' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CO' AND d.name = '01';
-- END Diana DeGette


-- START Rosa L. DeLauro
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Rosa L. DeLauro', 'D', 'CongresswomanRosaDeLauro', 'RosaDeLauro',
'Rosa DeLauro', 'https://delauro.house.gov', '14', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Rosa L. DeLauro' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CT' AND d.name = '03';
-- END Rosa L. DeLauro


-- START Jeff Denham
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jeff Denham', 'R', 'RepJeffDenham', 'RepJeffDenham',
'Jeff Denham', 'http://denham.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jeff Denham' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '10';
-- END Jeff Denham


-- START Charles W. Dent
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Charles W. Dent', 'R', 'CongressmanDent', 'RepCharlieDent',
'Charlie Dent', 'https://dent.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Charles W. Dent' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '15';
-- END Charles W. Dent


-- START Scott DesJarlais
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Scott DesJarlais', 'R', 'ScottDesJarlaisTN04', 'DesJarlaisTN04',
'Scott DesJarlais', 'https://desjarlais.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Scott DesJarlais' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '04';
-- END Scott DesJarlais


-- START Theodore E. Deutch
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Theodore E. Deutch', 'D', 'CongressmanTedDeutch', 'RepTedDeutch',
'Ted Deutch', 'http://teddeutch.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Theodore E. Deutch' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '22';
-- END Theodore E. Deutch


-- START Mario Diaz-Balart
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mario Diaz-Balart', 'R', 'mdiazbalart', 'MarioDB',
'Mario Díaz-Balart', 'http://mariodiazbalart.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mario Diaz-Balart' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '25';
-- END Mario Diaz-Balart


-- START Lloyd Doggett
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lloyd Doggett', 'D', 'lloyddoggett', 'RepLloydDoggett',
'Lloyd Doggett', 'https://doggett.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lloyd Doggett' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '35';
-- END Lloyd Doggett


-- START Michael F. Doyle
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Michael F. Doyle', 'D', 'usrepmikedoyle', 'USRepMikeDoyle',
'Michael F. Doyle', 'http://doyle.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Michael F. Doyle' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '14';
-- END Michael F. Doyle


-- START Sean P. Duffy
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Sean P. Duffy', 'R', 'RepSeanDuffy', 'RepSeanDuffy',
'Sean Duffy', 'https://duffy.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Sean P. Duffy' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WI' AND d.name = '07';
-- END Sean P. Duffy


-- START Jeff Duncan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jeff Duncan', 'R', 'RepJeffDuncan', 'RepJeffDuncan',
'Jeff Duncan (politician)', 'http://jeffduncan.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jeff Duncan' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'SC' AND d.name = '03';
-- END Jeff Duncan


-- START John J. Duncan, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John J. Duncan, Jr.', 'R', 'CongressmanDuncan', 'RepJohnDuncanJr',
'Jimmy Duncan (U.S. politician)', 'http://duncan.house.gov', '16', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John J. Duncan, Jr.' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '02';
-- END John J. Duncan, Jr.


-- START Keith Ellison
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Keith Ellison', 'D', 'Keith.Ellison', 'KeithEllison',
'Keith Ellison', 'https://ellison.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Keith Ellison' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MN' AND d.name = '05';
-- END Keith Ellison


-- START Eliot L. Engel
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Eliot L. Engel', 'D', 'RepEliotLEngel', 'RepEliotEngel',
'Eliot Engel', 'https://engel.house.gov', '15', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Eliot L. Engel' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '16';
-- END Eliot L. Engel


-- START Anna G. Eshoo
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Anna G. Eshoo', 'D', 'RepAnnaEshoo', 'RepAnnaEshoo',
'Anna Eshoo', 'http://eshoo.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Anna G. Eshoo' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '18';
-- END Anna G. Eshoo


-- START Blake Farenthold
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Blake Farenthold', 'R', 'BlakeFarenthold', 'Farenthold',
'Blake Farenthold', 'http://farenthold.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Blake Farenthold' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '27';
-- END Blake Farenthold


-- START Charles J. "Chuck" Fleischmann
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Charles J. "Chuck" Fleischmann', 'R', 'repchuck', 'RepChuck',
'Chuck Fleischmann', 'http://fleischmann.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Charles J. "Chuck" Fleischmann' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '03';
-- END Charles J. "Chuck" Fleischmann


-- START Bill Flores
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bill Flores', 'R', 'RepBillFlores', 'RepBillFlores',
'Bill Flores', 'http://flores.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bill Flores' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '17';
-- END Bill Flores


-- START Jeff Fortenberry
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jeff Fortenberry', 'R', 'jefffortenberry', 'JeffFortenberry',
'Jeff Fortenberry', 'https://fortenberry.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jeff Fortenberry' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NE' AND d.name = '01';
-- END Jeff Fortenberry


-- START Virginia Foxx
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Virginia Foxx', 'R', 'RepVirginiaFoxx', 'VirginiaFoxx',
'Virginia Foxx', 'http://foxx.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Virginia Foxx' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '05';
-- END Virginia Foxx


-- START Trent Franks
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Trent Franks', 'R', 'TrentFranks', 'RepTrentFranks',
'Trent Franks', 'https://franks.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Trent Franks' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '08';
-- END Trent Franks


-- START Rodney P. Frelinghuysen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Rodney P. Frelinghuysen', 'R', 'rfrelinghuysen', 'USRepRodney',
'Rodney Frelinghuysen', 'https://frelinghuysen.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Rodney P. Frelinghuysen' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '11';
-- END Rodney P. Frelinghuysen


-- START Marcia L. Fudge
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Marcia L. Fudge', 'D', 'RepMarciaLFudge', 'RepMarciaFudge',
'Marcia Fudge', 'https://fudge.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Marcia L. Fudge' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '11';
-- END Marcia L. Fudge


-- START John Garamendi
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John Garamendi', 'D', 'repgaramendi', 'RepGaramendi',
'John Garamendi', 'http://garamendi.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John Garamendi' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '03';
-- END John Garamendi


-- START Bob Gibbs
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bob Gibbs', 'R', 'RepBobGibbs', 'RepBobGibbs',
'Bob Gibbs', 'https://gibbs.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bob Gibbs' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '07';
-- END Bob Gibbs


-- START Louie Gohmert
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Louie Gohmert', 'R', '50375006903', 'RepLouieGohmert',
'Louie Gohmert', 'https://gohmert.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Louie Gohmert' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '01';
-- END Louie Gohmert


-- START Bob Goodlatte
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bob Goodlatte', 'R', 'BobGoodlatte', 'RepGoodlatte',
'Bob Goodlatte', 'https://goodlatte.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bob Goodlatte' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '06';
-- END Bob Goodlatte


-- START Paul A. Gosar
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Paul A. Gosar', 'R', 'repgosar', 'RepGosar',
'Paul Gosar', 'http://gosar.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Paul A. Gosar' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '04';
-- END Paul A. Gosar


-- START Trey Gowdy
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Trey Gowdy', 'R', 'RepTreyGowdy', 'TGowdySC',
'Trey Gowdy', 'https://gowdy.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Trey Gowdy' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'SC' AND d.name = '04';
-- END Trey Gowdy


-- START Kay Granger
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kay Granger', 'R', 'RepKayGranger', 'RepKayGranger',
'Kay Granger', 'http://kaygranger.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kay Granger' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '12';
-- END Kay Granger


-- START Sam Graves
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Sam Graves', 'R', '118514606128', 'RepSamGraves',
'Sam Graves', 'https://graves.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Sam Graves' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MO' AND d.name = '06';
-- END Sam Graves


-- START Tom Graves
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tom Graves', 'R', 'reptomgraves', 'RepTomGraves',
'Tom Graves', 'http://tomgraves.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tom Graves' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '14';
-- END Tom Graves


-- START Al Green
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Al Green', 'D', 'repalgreen', 'RepAlGreen',
'Al Green (politician)', 'http://algreen.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Al Green' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '09';
-- END Al Green


-- START Gene Green
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Gene Green', 'D', 'RepGeneGreen', 'RepGeneGreen',
'Gene Green', 'https://green.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Gene Green' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '29';
-- END Gene Green


-- START H. Morgan Griffith
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'H. Morgan Griffith', 'R', 'RepMorganGriffith', 'RepMGriffith',
'Morgan Griffith', 'http://morgangriffith.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'H. Morgan Griffith' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '09';
-- END H. Morgan Griffith


-- START Raúl M. Grijalva
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Raúl M. Grijalva', 'D', 'Rep.Grijalva', 'RepraulGrijalva',
'Raúl Grijalva', 'https://grijalva.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Raúl M. Grijalva' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '03';
-- END Raúl M. Grijalva


-- START Brett Guthrie
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brett Guthrie', 'R', '', 'RepGuthrie',
'Brett Guthrie', 'https://guthrie.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brett Guthrie' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KY' AND d.name = '02';
-- END Brett Guthrie


-- START Luis V. Gutiérrez
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Luis V. Gutiérrez', 'D', 'RepGutierrez', 'RepGutierrez',
'Luis Gutiérrez', 'https://gutierrez.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Luis V. Gutiérrez' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '04';
-- END Luis V. Gutiérrez


-- START Gregg Harper
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Gregg Harper', 'R', 'GreggHarper', 'GreggHarper',
'Gregg Harper', 'http://harper.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Gregg Harper' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MS' AND d.name = '03';
-- END Gregg Harper


-- START Andy Harris
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Andy Harris', 'R', 'AndyHarrisMD', 'RepAndyHarrisMD',
'Andy Harris (politician)', 'http://harris.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Andy Harris' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MD' AND d.name = '01';
-- END Andy Harris


-- START Vicky Hartzler
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Vicky Hartzler', 'R', 'Congresswoman.Hartzler', 'RepHartzler',
'Vicky Hartzler', 'https://hartzler.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Vicky Hartzler' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MO' AND d.name = '04';
-- END Vicky Hartzler


-- START Alcee L. Hastings
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Alcee L. Hastings', 'D', '95696782238', 'RepHastingsFL',
'Alcee Hastings', 'http://alceehastings.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Alcee L. Hastings' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '20';
-- END Alcee L. Hastings


-- START Jeb Hensarling
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jeb Hensarling', 'R', 'RepHensarling', 'RepHensarling',
'Jeb Hensarling', 'http://hensarling.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jeb Hensarling' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '05';
-- END Jeb Hensarling


-- START Jaime Herrera Beutler
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jaime Herrera Beutler', 'R', 'herrerabeutler', 'HerreraBeutler',
'Jaime Herrera Beutler', 'http://herrerabeutler.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jaime Herrera Beutler' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '03';
-- END Jaime Herrera Beutler


-- START Brian Higgins
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brian Higgins', 'D', 'RepBrianHiggins', 'RepBrianHiggins',
'Brian Higgins', 'http://higgins.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brian Higgins' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '26';
-- END Brian Higgins


-- START James A. Himes
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'James A. Himes', 'D', 'CongressmanJimHimes', 'JAHimes',
'Jim Himes', 'https://himes.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'James A. Himes' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CT' AND d.name = '04';
-- END James A. Himes


-- START Steny H. Hoyer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steny H. Hoyer', 'D', 'WhipHoyer', 'WhipHoyer',
'Steny Hoyer', 'https://hoyer.house.gov', '19', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steny H. Hoyer' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MD' AND d.name = '05';
-- END Steny H. Hoyer


-- START Bill Huizenga
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bill Huizenga', 'R', 'RepHuizenga', 'RepHuizenga',
'Bill Huizenga', 'http://huizenga.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bill Huizenga' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '02';
-- END Bill Huizenga


-- START Randy Hultgren
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Randy Hultgren', 'R', 'RepHultgren', 'RepHultgren',
'Randy Hultgren', 'http://hultgren.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Randy Hultgren' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '14';
-- END Randy Hultgren


-- START Duncan Hunter
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Duncan Hunter', 'R', 'DuncanHunter', 'Rep_Hunter',
'Duncan D. Hunter', 'https://hunter.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Duncan Hunter' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '50';
-- END Duncan Hunter


-- START Darrell E. Issa
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Darrell E. Issa', 'R', 'darrellissa', 'DarrellIssa',
'Darrell Issa', 'https://issa.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Darrell E. Issa' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '49';
-- END Darrell E. Issa


-- START Sheila Jackson Lee
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Sheila Jackson Lee', 'D', 'CongresswomanSheilaJacksonLee', 'JacksonLeeTX18',
'Sheila Jackson Lee', 'http://jacksonlee.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Sheila Jackson Lee' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '18';
-- END Sheila Jackson Lee


-- START Lynn Jenkins
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lynn Jenkins', 'R', 'replynnjenkins', 'RepLynnJenkins',
'Lynn Jenkins', 'https://lynnjenkins.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lynn Jenkins' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KS' AND d.name = '02';
-- END Lynn Jenkins


-- START Bill Johnson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bill Johnson', 'R', 'RepBillJohnson', 'RepBillJohnson',
'Bill Johnson (Ohio politician)', 'http://billjohnson.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bill Johnson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '06';
-- END Bill Johnson


-- START Eddie Bernice Johnson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Eddie Bernice Johnson', 'D', 'CongresswomanEBJtx30', 'RepEBJ',
'Eddie Bernice Johnson', 'http://ebjohnson.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Eddie Bernice Johnson' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '30';
-- END Eddie Bernice Johnson


-- START Henry C. "Hank" Johnson, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Henry C. "Hank" Johnson, Jr.', 'D', '115356957005', 'RepHankJohnson',
'Hank Johnson', 'https://hankjohnson.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Henry C. "Hank" Johnson, Jr.' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '04';
-- END Henry C. "Hank" Johnson, Jr.


-- START Sam Johnson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Sam Johnson', 'R', 'RepSamJohnson', 'SamsPressShop',
'Sam Johnson', 'http://samjohnson.house.gov', '14', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Sam Johnson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '03';
-- END Sam Johnson


-- START Walter B. Jones
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Walter B. Jones', 'R', '15083070102', 'RepWalterJones',
'Walter B. Jones Jr.', 'http://jones.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Walter B. Jones' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '03';
-- END Walter B. Jones


-- START Jim Jordan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jim Jordan', 'R', 'repjimjordan', 'Jim_Jordan',
'Jim Jordan (U.S. politician)', 'http://jordan.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jim Jordan' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '04';
-- END Jim Jordan


-- START Marcy Kaptur
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Marcy Kaptur', 'D', 'RepresentativeMarcyKaptur', 'RepMarcyKaptur',
'Marcy Kaptur', 'https://kaptur.house.gov', '18', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Marcy Kaptur' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '09';
-- END Marcy Kaptur


-- START William R. Keating
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'William R. Keating', 'D', 'Congressman.Keating', 'USRepKeating',
'Bill Keating (politician)', 'https://keating.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'William R. Keating' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '09';
-- END William R. Keating


-- START Mike Kelly
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Kelly', 'R', '191056827594903', 'MikeKellyPA',
'Mike Kelly (Pennsylvania politician)', 'http://kelly.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Kelly' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '03';
-- END Mike Kelly


-- START Ron Kind
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ron Kind', 'D', 'repronkind', 'RepRonKind',
'Ron Kind', 'https://kind.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ron Kind' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WI' AND d.name = '03';
-- END Ron Kind


-- START Peter T. King
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Peter T. King', 'R', '', 'RepPeteKing',
'Peter T. King', 'http://peteking.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Peter T. King' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '02';
-- END Peter T. King


-- START Steve King
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steve King', 'R', 'stevekingia', 'SteveKingIA',
'Steve King', 'https://steveking.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steve King' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IA' AND d.name = '04';
-- END Steve King


-- START Adam Kinzinger
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Adam Kinzinger', 'R', 'RepKinzinger', 'RepKinzinger',
'Adam Kinzinger', 'http://kinzinger.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Adam Kinzinger' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '16';
-- END Adam Kinzinger


-- START Raúl R. Labrador
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Raúl R. Labrador', 'R', 'raul.r.labrador', 'Raul_Labrador',
'Raúl Labrador', 'https://labrador.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Raúl R. Labrador' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'ID' AND d.name = '01';
-- END Raúl R. Labrador


-- START Doug Lamborn
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Doug Lamborn', 'R', 'CongressmanDougLamborn', 'RepDLamborn',
'Doug Lamborn', 'http://lamborn.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Doug Lamborn' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CO' AND d.name = '05';
-- END Doug Lamborn


-- START Leonard Lance
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Leonard Lance', 'R', 'CongressmanLance', 'RepLanceNJ7',
'Leonard Lance', 'http://lance.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Leonard Lance' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '07';
-- END Leonard Lance


-- START James R. Langevin
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'James R. Langevin', 'D', 'CongressmanJimLangevin', 'JimLangevin',
'James Langevin', 'http://langevin.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'James R. Langevin' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'RI' AND d.name = '02';
-- END James R. Langevin


-- START Rick Larsen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Rick Larsen', 'D', 'RepRickLarsen', 'RepRickLarsen',
'Rick Larsen', 'http://larsen.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Rick Larsen' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '02';
-- END Rick Larsen


-- START John B. Larson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John B. Larson', 'D', 'RepJohnLarson', 'RepJohnLarson',
'John B. Larson', 'https://larson.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John B. Larson' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CT' AND d.name = '01';
-- END John B. Larson


-- START Robert E. Latta
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Robert E. Latta', 'R', 'boblatta', 'BobLatta',
'Bob Latta', 'http://latta.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Robert E. Latta' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '05';
-- END Robert E. Latta


-- START Barbara Lee
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Barbara Lee', 'D', 'RepBarbaraLee', 'RepBarbaraLee',
'Barbara Lee', 'https://lee.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Barbara Lee' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '13';
-- END Barbara Lee


-- START Sander M. Levin
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Sander M. Levin', 'D', 'RepSandyLevin', 'RepSandyLevin',
'Sander Levin', 'http://levin.house.gov', '18', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Sander M. Levin' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '09';
-- END Sander M. Levin


-- START John Lewis
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John Lewis', 'D', 'RepJohnLewis', 'RepJohnLewis',
'John Lewis (Georgia politician)', 'https://johnlewis.house.gov', '16', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John Lewis' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '05';
-- END John Lewis


-- START Daniel Lipinski
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Daniel Lipinski', 'D', 'repdanlipinski', 'RepLipinski',
'Dan Lipinski', 'https://lipinski.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Daniel Lipinski' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '03';
-- END Daniel Lipinski


-- START Frank A. LoBiondo
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Frank A. LoBiondo', 'R', 'FrankLoBiondo', 'RepLoBiondo',
'Frank LoBiondo', 'http://lobiondo.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Frank A. LoBiondo' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '02';
-- END Frank A. LoBiondo


-- START David Loebsack
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David Loebsack', 'D', 'DaveLoebsack', 'DaveLoebsack',
'Dave Loebsack', 'http://loebsack.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David Loebsack' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IA' AND d.name = '02';
-- END David Loebsack


-- START Zoe Lofgren
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Zoe Lofgren', 'D', 'zoelofgren', 'RepZoeLofgren',
'Zoe Lofgren', 'https://lofgren.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Zoe Lofgren' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '19';
-- END Zoe Lofgren


-- START Billy Long
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Billy Long', 'R', 'Rep.Billy.Long', 'USRepLong',
'Billy Long', 'https://long.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Billy Long' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MO' AND d.name = '07';
-- END Billy Long


-- START Nita M. Lowey
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Nita M. Lowey', 'D', 'RepLowey', 'NitaLowey',
'Nita Lowey', 'https://lowey.house.gov', '15', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Nita M. Lowey' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '17';
-- END Nita M. Lowey


-- START Frank D. Lucas
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Frank D. Lucas', 'R', 'RepFrankLucas', 'RepFrankLucas',
'Frank Lucas (Oklahoma politician)', 'http://lucas.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Frank D. Lucas' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OK' AND d.name = '03';
-- END Frank D. Lucas


-- START Blaine Luetkemeyer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Blaine Luetkemeyer', 'R', 'BlaineLuetkemeyer', 'RepBlainePress',
'Blaine Luetkemeyer', 'http://luetkemeyer.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Blaine Luetkemeyer' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MO' AND d.name = '03';
-- END Blaine Luetkemeyer


-- START Ben Ray Luján
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ben Ray Luján', 'D', 'RepBenRayLujan', 'RepBenRayLujan',
'Ben Ray Luján', 'https://lujan.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ben Ray Luján' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NM' AND d.name = '03';
-- END Ben Ray Luján


-- START Stephen F. Lynch
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Stephen F. Lynch', 'D', 'repstephenlynch', 'RepStephenLynch',
'Stephen F. Lynch', 'http://lynch.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Stephen F. Lynch' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '08';
-- END Stephen F. Lynch


-- START Carolyn B. Maloney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Carolyn B. Maloney', 'D', '', 'RepMaloney',
'Carolyn Maloney', 'http://maloney.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Carolyn B. Maloney' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '12';
-- END Carolyn B. Maloney


-- START Kenny Marchant
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kenny Marchant', 'R', 'RepKennyMarchant', 'RepKenMarchant',
'Kenny Marchant', 'https://marchant.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kenny Marchant' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '24';
-- END Kenny Marchant


-- START Tom Marino
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tom Marino', 'R', 'CongressmanMarino', 'RepTomMarino',
'Tom Marino', 'https://marino.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tom Marino' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '10';
-- END Tom Marino


-- START Doris O. Matsui
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Doris O. Matsui', 'D', 'doris.matsui', 'DorisMatsui',
'Doris Matsui', 'https://matsui.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Doris O. Matsui' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '06';
-- END Doris O. Matsui


-- START Kevin McCarthy
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kevin McCarthy', 'R', 'CongressmanKevinMcCarthy', 'GOPLeader',
'Kevin McCarthy (California politician)', 'http://kevinmccarthy.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kevin McCarthy' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '23';
-- END Kevin McCarthy


-- START Michael T. McCaul
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Michael T. McCaul', 'R', 'michaeltmccaul', 'RepMcCaul',
'Michael McCaul', 'http://mccaul.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Michael T. McCaul' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '10';
-- END Michael T. McCaul


-- START Tom McClintock
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tom McClintock', 'R', '81125319109', 'RepMcClintock',
'Tom McClintock', 'http://mcclintock.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tom McClintock' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '04';
-- END Tom McClintock


-- START Betty McCollum
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Betty McCollum', 'D', 'repbettymccollum', 'BettyMcCollum04',
'Betty McCollum', 'http://mccollum.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Betty McCollum' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MN' AND d.name = '04';
-- END Betty McCollum


-- START James P. McGovern
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'James P. McGovern', 'D', 'RepJimMcGovern', 'RepMcGovern',
'Jim McGovern (U.S. politician)', 'http://mcgovern.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'James P. McGovern' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '02';
-- END James P. McGovern


-- START Patrick T. McHenry
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Patrick T. McHenry', 'R', 'CongressmanMcHenry', 'PatrickMcHenry',
'Patrick McHenry', 'http://mchenry.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Patrick T. McHenry' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '10';
-- END Patrick T. McHenry


-- START David B. McKinley
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David B. McKinley', 'R', 'RepMcKinley', 'RepMcKinley',
'David McKinley', 'https://mckinley.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David B. McKinley' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WV' AND d.name = '01';
-- END David B. McKinley


-- START Cathy McMorris Rodgers
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Cathy McMorris Rodgers', 'R', 'mcmorrisrodgers', 'CathyMcMorris',
'Cathy McMorris Rodgers', 'http://mcmorris.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Cathy McMorris Rodgers' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '05';
-- END Cathy McMorris Rodgers


-- START Jerry McNerney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jerry McNerney', 'D', 'jerrymcnerney', 'RepMcNerney',
'Jerry McNerney', 'http://mcnerney.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jerry McNerney' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '09';
-- END Jerry McNerney


-- START Patrick Meehan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Patrick Meehan', 'R', 'CongressmanPatrickMeehan', 'RepMeehan',
'Pat Meehan', 'https://meehan.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Patrick Meehan' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '07';
-- END Patrick Meehan


-- START Gregory W. Meeks
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Gregory W. Meeks', 'D', 'gregorymeeksny05', 'GregoryMeeks',
'Gregory Meeks', 'http://meeks.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Gregory W. Meeks' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '05';
-- END Gregory W. Meeks


-- START Gwen Moore
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Gwen Moore', 'D', 'GwenSMoore', 'RepGwenMoore',
'Gwen Moore', 'https://gwenmoore.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Gwen Moore' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WI' AND d.name = '04';
-- END Gwen Moore


-- START Tim Murphy
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tim Murphy', 'R', 'reptimmurphy', 'RepTimMurphy',
'Timothy F. Murphy', 'https://murphy.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tim Murphy' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '18';
-- END Tim Murphy


-- START Jerrold Nadler
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jerrold Nadler', 'D', 'CongressmanNadler', 'RepJerryNadler',
'Jerrold Nadler', 'http://nadler.house.gov', '14', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jerrold Nadler' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '10';
-- END Jerrold Nadler


-- START Grace F. Napolitano
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Grace F. Napolitano', 'D', 'RepGraceNapolitano', 'GraceNapolitano',
'Grace Napolitano', 'http://napolitano.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Grace F. Napolitano' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '32';
-- END Grace F. Napolitano


-- START Richard E. Neal
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Richard E. Neal', 'D', 'reprichardneal', 'RepRichardNeal',
'Richard Neal', 'https://neal.house.gov', '15', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Richard E. Neal' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '01';
-- END Richard E. Neal


-- START Kristi L. Noem
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kristi L. Noem', 'R', '', 'RepKristiNoem',
'Kristi Noem', 'https://noem.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kristi L. Noem' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'SD' AND d.name = '00';
-- END Kristi L. Noem


-- START Eleanor Holmes Norton
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Eleanor Holmes Norton', 'D', 'CongresswomanNorton', 'EleanorNorton',
'Eleanor Holmes Norton', 'https://norton.house.gov', '14', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Eleanor Holmes Norton' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'DC' AND d.name = '00';
-- END Eleanor Holmes Norton


-- START Devin Nunes
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Devin Nunes', 'R', '', 'Rep_DevinNunes',
'Devin Nunes', 'http://nunes.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Devin Nunes' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '22';
-- END Devin Nunes


-- START Pete Olson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Pete Olson', 'R', 'Rep.PeteOlson', 'RepPeteOlson',
'Pete Olson', 'https://olson.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Pete Olson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '22';
-- END Pete Olson


-- START Steven M. Palazzo
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steven M. Palazzo', 'R', 'stevenpalazzo', 'CongPalazzo',
'Steven Palazzo', 'http://palazzo.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steven M. Palazzo' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MS' AND d.name = '04';
-- END Steven M. Palazzo


-- START Frank Pallone, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Frank Pallone, Jr.', 'D', 'repfrankpallone', 'FrankPallone',
'Frank Pallone', 'https://pallone.house.gov', '16', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Frank Pallone, Jr.' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '06';
-- END Frank Pallone, Jr.


-- START Bill Pascrell, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bill Pascrell, Jr.', 'D', 'pascrell', 'BillPascrell',
'Bill Pascrell', 'http://pascrell.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bill Pascrell, Jr.' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '09';
-- END Bill Pascrell, Jr.


-- START Erik Paulsen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Erik Paulsen', 'R', 'CongressmanErikPaulsen', 'RepErikPaulsen',
'Erik Paulsen', 'https://paulsen.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Erik Paulsen' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MN' AND d.name = '03';
-- END Erik Paulsen


-- START Stevan Pearce
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Stevan Pearce', 'R', 'RepStevePearce', 'RepStevePearce',
'Steve Pearce (politician)', 'http://pearce.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Stevan Pearce' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NM' AND d.name = '02';
-- END Stevan Pearce


-- START Nancy Pelosi
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Nancy Pelosi', 'D', 'NancyPelosi', 'NancyPelosi',
'Nancy Pelosi', 'http://pelosi.house.gov', '16', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Nancy Pelosi' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '12';
-- END Nancy Pelosi


-- START Ed Perlmutter
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ed Perlmutter', 'D', 'RepPerlmutter', 'RepPerlmutter',
'Ed Perlmutter', 'https://perlmutter.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ed Perlmutter' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CO' AND d.name = '07';
-- END Ed Perlmutter


-- START Collin C. Peterson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Collin C. Peterson', 'D', '', '',
'Collin Peterson', 'http://collinpeterson.house.gov', '14', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Collin C. Peterson' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MN' AND d.name = '07';
-- END Collin C. Peterson


-- START Chellie Pingree
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Chellie Pingree', 'D', 'ChelliePingree', 'ChelliePingree',
'Chellie Pingree', 'https://pingree.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Chellie Pingree' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'ME' AND d.name = '01';
-- END Chellie Pingree


-- START Ted Poe
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ted Poe', 'R', '106631626049851', 'JudgeTedPoe',
'Ted Poe', 'https://poe.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ted Poe' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '02';
-- END Ted Poe


-- START Jared Polis
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jared Polis', 'D', 'jaredpolis', 'RepJaredPolis',
'Jared Polis', 'http://polis.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jared Polis' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CO' AND d.name = '02';
-- END Jared Polis


-- START Bill Posey
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bill Posey', 'R', 'bill.posey15', 'CongBillPosey',
'Bill Posey', 'http://posey.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bill Posey' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '08';
-- END Bill Posey


-- START David E. Price
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David E. Price', 'D', 'RepDavidEPrice', 'RepDavidEPrice',
'David Price (U.S. politician)', 'https://price.house.gov', '15', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David E. Price' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '04';
-- END David E. Price


-- START Mike Quigley
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Quigley', 'D', 'repmikequigley', 'RepMikeQuigley',
'Mike Quigley (politician)', 'https://quigley.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Quigley' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '05';
-- END Mike Quigley


-- START Tom Reed
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tom Reed', 'R', 'RepTomReed', 'RepTomReed',
'Tom Reed (politician)', 'https://reed.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tom Reed' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '23';
-- END Tom Reed


-- START David G. Reichert
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David G. Reichert', 'R', 'repdavereichert', 'DaveReichert',
'Dave Reichert', 'http://reichert.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David G. Reichert' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '08';
-- END David G. Reichert


-- START James B. Renacci
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'James B. Renacci', 'R', 'repjimrenacci', 'RepJimRenacci',
'Jim Renacci', 'https://renacci.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'James B. Renacci' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '16';
-- END James B. Renacci


-- START Cedric L. Richmond
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Cedric L. Richmond', 'D', 'RepRichmond', 'RepRichmond',
'Cedric Richmond', 'https://richmond.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Cedric L. Richmond' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'LA' AND d.name = '02';
-- END Cedric L. Richmond


-- START Martha Roby
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Martha Roby', 'R', 'Representative.Martha.Roby', 'RepMarthaRoby',
'Martha Roby', 'http://roby.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Martha Roby' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AL' AND d.name = '02';
-- END Martha Roby


-- START David P. Roe
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David P. Roe', 'R', 'DrPhilRoe', 'DrPhilRoe',
'Phil Roe (politician)', 'http://roe.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David P. Roe' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '01';
-- END David P. Roe


-- START Harold Rogers
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Harold Rogers', 'R', 'CongressmanHalRogers', 'RepHalRogers',
'Hal Rogers', 'http://halrogers.house.gov', '19', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Harold Rogers' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KY' AND d.name = '05';
-- END Harold Rogers


-- START Mike Rogers
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Rogers', 'R', 'CongressmanMikeDRogers', 'RepMikeRogersAL',
'Mike Rogers (Alabama politician)', 'https://mikerogers.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Rogers' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AL' AND d.name = '03';
-- END Mike Rogers


-- START Dana Rohrabacher
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Dana Rohrabacher', 'R', 'RepRohrabacher', 'reprohrabacher',
'Dana Rohrabacher', 'https://rohrabacher.house.gov', '15', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Dana Rohrabacher' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '48';
-- END Dana Rohrabacher


-- START Todd Rokita
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Todd Rokita', 'R', 'RepToddRokita', 'ToddRokita',
'Todd Rokita', 'http://rokita.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Todd Rokita' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '04';
-- END Todd Rokita


-- START Thomas J. Rooney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Thomas J. Rooney', 'R', 'reptomrooney', 'TomRooney',
'Tom Rooney (politician)', 'https://rooney.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Thomas J. Rooney' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '17';
-- END Thomas J. Rooney


-- START Ileana Ros-Lehtinen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ileana Ros-Lehtinen', 'R', 'iroslehtinen', 'RosLehtinen',
'Ileana Ros-Lehtinen', 'http://ros-lehtinen.house.gov', '15', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ileana Ros-Lehtinen' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '27';
-- END Ileana Ros-Lehtinen


-- START Peter J. Roskam
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Peter J. Roskam', 'R', 'PeterRoskam', 'PeterRoskam',
'Peter Roskam', 'https://roskam.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Peter J. Roskam' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '06';
-- END Peter J. Roskam


-- START Dennis A. Ross
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Dennis A. Ross', 'R', 'dennis.ross.376', 'RepDennisRoss',
'Dennis A. Ross', 'http://dennisross.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Dennis A. Ross' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '15';
-- END Dennis A. Ross


-- START Lucille Roybal-Allard
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lucille Roybal-Allard', 'D', 'RepRoybalAllard', 'RepRoybalAllard',
'Lucille Roybal-Allard', 'http://roybal-allard.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lucille Roybal-Allard' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '40';
-- END Lucille Roybal-Allard


-- START Edward R. Royce
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Edward R. Royce', 'R', 'EdRoyce', 'RepEdRoyce',
'Ed Royce', 'http://royce.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Edward R. Royce' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '39';
-- END Edward R. Royce


-- START C. A. Dutch Ruppersberger
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'C. A. Dutch Ruppersberger', 'D', 'DutchRupp', 'Call_Me_Dutch',
'Dutch Ruppersberger', 'http://ruppersberger.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'C. A. Dutch Ruppersberger' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MD' AND d.name = '02';
-- END C. A. Dutch Ruppersberger


-- START Bobby L. Rush
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bobby L. Rush', 'D', 'congressmanbobbyrush', 'RepBobbyRush',
'Bobby Rush', 'http://rush.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bobby L. Rush' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '01';
-- END Bobby L. Rush


-- START Paul D. Ryan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Paul D. Ryan', 'R', 'speakerryan', 'SpeakerRyan',
'Paul Ryan', 'http://paulryan.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Paul D. Ryan' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WI' AND d.name = '01';
-- END Paul D. Ryan


-- START Tim Ryan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tim Ryan', 'D', 'timryan', 'RepTimRyan',
'Tim Ryan (politician)', 'http://timryan.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tim Ryan' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '13';
-- END Tim Ryan


-- START Gregorio Kilili Camacho Sablan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Gregorio Kilili Camacho Sablan', 'D', '153423912663', '',
'Gregorio Sablan', 'http://sablan.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Gregorio Kilili Camacho Sablan' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MP' AND d.name = '00';
-- END Gregorio Kilili Camacho Sablan


-- START John P. Sarbanes
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John P. Sarbanes', 'D', 'RepSarbanes', 'RepSarbanes',
'John Sarbanes', 'https://sarbanes.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John P. Sarbanes' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MD' AND d.name = '03';
-- END John P. Sarbanes


-- START Steve Scalise
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steve Scalise', 'R', 'RepSteveScalise', 'SteveScalise',
'Steve Scalise', 'http://scalise.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steve Scalise' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'LA' AND d.name = '01';
-- END Steve Scalise


-- START Janice D. Schakowsky
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Janice D. Schakowsky', 'D', 'janschakowsky', 'JanSchakowsky',
'Jan Schakowsky', 'https://schakowsky.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Janice D. Schakowsky' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '09';
-- END Janice D. Schakowsky


-- START Adam B. Schiff
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Adam B. Schiff', 'D', 'RepAdamSchiff', 'RepAdamSchiff',
'Adam Schiff', 'http://schiff.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Adam B. Schiff' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '28';
-- END Adam B. Schiff


-- START Kurt Schrader
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kurt Schrader', 'D', 'repschrader', 'RepSchrader',
'Kurt Schrader', 'http://schrader.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kurt Schrader' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OR' AND d.name = '05';
-- END Kurt Schrader


-- START David Schweikert
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David Schweikert', 'R', 'repdavidschweikert', 'RepDavid',
'David Schweikert', 'https://schweikert.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David Schweikert' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '06';
-- END David Schweikert


-- START Austin Scott
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Austin Scott', 'R', 'RepAustinScott', 'AustinScottGA08',
'Austin Scott (politician)', 'https://austinscott.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Austin Scott' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '08';
-- END Austin Scott


-- START David Scott
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David Scott', 'D', '113303673339', 'RepDavidScott',
'David Scott (Georgia politician)', 'http://davidscott.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David Scott' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '13';
-- END David Scott


-- START Robert C. "Bobby" Scott
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Robert C. "Bobby" Scott', 'D', 'RepBobbyScott', 'BobbyScott',
'Bobby Scott (politician)', 'http://bobbyscott.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Robert C. "Bobby" Scott' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '03';
-- END Robert C. "Bobby" Scott


-- START F. James Sensenbrenner, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'F. James Sensenbrenner, Jr.', 'R', 'RepSensenbrenner', 'JimPressOffice',
'Jim Sensenbrenner', 'http://sensenbrenner.house.gov', '20', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'F. James Sensenbrenner, Jr.' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WI' AND d.name = '05';
-- END F. James Sensenbrenner, Jr.


-- START José E. Serrano
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'José E. Serrano', 'D', 'RepJoseSerrano', 'RepJoseSerrano',
'José E. Serrano', 'https://serrano.house.gov', '15', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'José E. Serrano' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '15';
-- END José E. Serrano


-- START Pete Sessions
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Pete Sessions', 'R', 'petesessions', 'PeteSessions',
'Pete Sessions', 'https://sessions.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Pete Sessions' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '32';
-- END Pete Sessions


-- START Terri A. Sewell
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Terri A. Sewell', 'D', 'RepSewell', 'RepTerriSewell',
'Terri Sewell', 'https://sewell.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Terri A. Sewell' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AL' AND d.name = '07';
-- END Terri A. Sewell


-- START Brad Sherman
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brad Sherman', 'D', '63158229861', 'BradSherman',
'Brad Sherman', 'http://sherman.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brad Sherman' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '30';
-- END Brad Sherman


-- START John Shimkus
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John Shimkus', 'R', 'repshimkus', 'RepShimkus',
'John Shimkus', 'https://shimkus.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John Shimkus' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '15';
-- END John Shimkus


-- START Bill Shuster
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bill Shuster', 'R', 'Rep.Shuster', 'RepBillShuster',
'Bill Shuster', 'https://shuster.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bill Shuster' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '09';
-- END Bill Shuster


-- START Michael K. Simpson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Michael K. Simpson', 'R', '96007744606', 'CongMikeSimpson',
'Mike Simpson', 'http://simpson.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Michael K. Simpson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'ID' AND d.name = '02';
-- END Michael K. Simpson


-- START Albio Sires
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Albio Sires', 'D', '81058818750', 'RepSires',
'Albio Sires', 'https://sires.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Albio Sires' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '08';
-- END Albio Sires


-- START Louise McIntosh Slaughter
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Louise McIntosh Slaughter', 'D', 'RepLouiseSlaughter', 'LouiseSlaughter',
'Louise Slaughter', 'https://louise.house.gov', '16', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Louise McIntosh Slaughter' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '25';
-- END Louise McIntosh Slaughter


-- START Adam Smith
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Adam Smith', 'D', 'RepAdamSmith', 'RepAdamSmith',
'Adam Smith (politician)', 'https://adamsmith.house.gov', '11', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Adam Smith' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '09';
-- END Adam Smith


-- START Adrian Smith
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Adrian Smith', 'R', '', 'RepAdrianSmith',
'Adrian Smith (politician)', 'http://adriansmith.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Adrian Smith' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NE' AND d.name = '03';
-- END Adrian Smith


-- START Christopher H. Smith
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Christopher H. Smith', 'R', 'RepChrisSmith', 'RepChrisSmith',
'Chris Smith (New Jersey politician)', 'http://chrissmith.house.gov', '19', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Christopher H. Smith' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '04';
-- END Christopher H. Smith


-- START Lamar Smith
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lamar Smith', 'R', 'LamarSmithTX21', 'LamarSmithTX21',
'Lamar S. Smith', 'http://lamarsmith.house.gov', '16', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lamar Smith' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '21';
-- END Lamar Smith


-- START Jackie Speier
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jackie Speier', 'D', 'JackieSpeier', 'RepSpeier',
'Jackie Speier', 'https://speier.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jackie Speier' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '14';
-- END Jackie Speier


-- START Steve Stivers
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steve Stivers', 'R', '116058275133542', 'RepSteveStivers',
'Steve Stivers', 'http://stivers.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steve Stivers' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '15';
-- END Steve Stivers


-- START Linda T. Sánchez
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Linda T. Sánchez', 'D', 'CongresswomanLindaSanchez', 'RepLindaSanchez',
'Linda Sánchez', 'https://lindasanchez.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Linda T. Sánchez' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '38';
-- END Linda T. Sánchez


-- START Bennie G. Thompson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bennie G. Thompson', 'D', 'CongressmanBennieGThompson', 'BennieGThompson',
'Bennie Thompson', 'https://benniethompson.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bennie G. Thompson' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MS' AND d.name = '02';
-- END Bennie G. Thompson


-- START Mike Thompson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Thompson', 'D', 'RepMikeThompson', 'RepThompson',
'Mike Thompson (California politician)', 'http://mikethompson.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Thompson' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '05';
-- END Mike Thompson


-- START Glenn Thompson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Glenn Thompson', 'R', 'CongressmanGT', 'CongressmanGT',
'Glenn Thompson (politician)', 'http://thompson.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Glenn Thompson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '05';
-- END Glenn Thompson


-- START Mac Thornberry
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mac Thornberry', 'R', 'repmacthornberry', 'MacTXPress',
'Mac Thornberry', 'http://thornberry.house.gov', '12', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mac Thornberry' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '13';
-- END Mac Thornberry


-- START Patrick J. Tiberi
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Patrick J. Tiberi', 'R', 'RepPatTiberi', 'pattiberi',
'Pat Tiberi', 'http://tiberi.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Patrick J. Tiberi' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '12';
-- END Patrick J. Tiberi


-- START Scott R. Tipton
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Scott R. Tipton', 'R', 'CongressmanScottTipton', 'RepTipton',
'Scott Tipton', 'http://tipton.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Scott R. Tipton' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CO' AND d.name = '03';
-- END Scott R. Tipton


-- START Paul Tonko
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Paul Tonko', 'D', 'reppaultonko', 'RepPaulTonko',
'Paul Tonko', 'https://tonko.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Paul Tonko' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '20';
-- END Paul Tonko


-- START Niki Tsongas
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Niki Tsongas', 'D', 'RepTsongas', 'NikiInTheHouse',
'Niki Tsongas', 'https://tsongas.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Niki Tsongas' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '03';
-- END Niki Tsongas


-- START Michael R. Turner
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Michael R. Turner', 'R', 'RepMikeTurner', 'RepMikeTurner',
'Mike Turner', 'https://turner.house.gov', '8', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Michael R. Turner' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '10';
-- END Michael R. Turner


-- START Fred Upton
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Fred Upton', 'R', 'RepFredUpton', 'RepFredUpton',
'Fred Upton', 'http://upton.house.gov', '16', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Fred Upton' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '06';
-- END Fred Upton


-- START Nydia M. Velázquez
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Nydia M. Velázquez', 'D', '8037068318', 'NydiaVelazquez',
'Nydia Velázquez', 'https://velazquez.house.gov', '13', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Nydia M. Velázquez' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '07';
-- END Nydia M. Velázquez


-- START Peter J. Visclosky
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Peter J. Visclosky', 'D', 'repvisclosky', 'RepVisclosky',
'Pete Visclosky', 'https://visclosky.house.gov', '17', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Peter J. Visclosky' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '01';
-- END Peter J. Visclosky


-- START Tim Walberg
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tim Walberg', 'R', 'RepWalberg', 'RepWalberg',
'Tim Walberg', 'http://walberg.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tim Walberg' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '07';
-- END Tim Walberg


-- START Greg Walden
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Greg Walden', 'R', 'repgregwalden', 'RepGregWalden',
'Greg Walden', 'https://walden.house.gov', '10', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Greg Walden' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OR' AND d.name = '02';
-- END Greg Walden


-- START Timothy J. Walz
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Timothy J. Walz', 'D', '', 'RepTimWalz',
'Tim Walz', 'https://walz.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Timothy J. Walz' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MN' AND d.name = '01';
-- END Timothy J. Walz


-- START Debbie Wasserman Schultz
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Debbie Wasserman Schultz', 'D', 'RepDWS', 'RepDWStweets',
'Debbie Wasserman Schultz', 'https://wassermanschultz.house.gov', '7', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Debbie Wasserman Schultz' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '23';
-- END Debbie Wasserman Schultz


-- START Maxine Waters
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Maxine Waters', 'D', 'MaxineWaters', 'MaxineWaters',
'Maxine Waters', 'https://waters.house.gov', '14', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Maxine Waters' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '43';
-- END Maxine Waters


-- START Daniel Webster
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Daniel Webster', 'R', 'RepWebster', 'RepWebster',
'Daniel Webster (Florida politician)', 'http://webster.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Daniel Webster' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '11';
-- END Daniel Webster


-- START Peter Welch
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Peter Welch', 'D', 'PeterWelch', 'PeterWelch',
'Peter Welch', 'https://welch.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Peter Welch' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VT' AND d.name = '00';
-- END Peter Welch


-- START Joe Wilson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Joe Wilson', 'R', 'JoeWilson', 'RepJoeWilson',
'Joe Wilson (U.S. politician)', 'http://joewilson.house.gov', '9', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Joe Wilson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'SC' AND d.name = '02';
-- END Joe Wilson


-- START Frederica S. Wilson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Frederica S. Wilson', 'D', 'RepWilson', 'RepWilson',
'Frederica Wilson', 'https://wilson.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Frederica S. Wilson' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '24';
-- END Frederica S. Wilson


-- START Robert J. Wittman
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Robert J. Wittman', 'R', 'RepRobWittman', 'RobWittman',
'Rob Wittman', 'http://wittman.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Robert J. Wittman' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '01';
-- END Robert J. Wittman


-- START Steve Womack
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steve Womack', 'R', 'RepSteveWomack', 'Rep_SteveWomack',
'Steve Womack', 'http://womack.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steve Womack' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AR' AND d.name = '03';
-- END Steve Womack


-- START Rob Woodall
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Rob Woodall', 'R', 'RepRobWoodall', 'RepRobWoodall',
'Rob Woodall', 'https://woodall.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Rob Woodall' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '07';
-- END Rob Woodall


-- START John A. Yarmuth
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John A. Yarmuth', 'D', '214258646163', 'RepJohnYarmuth',
'John Yarmuth', 'https://yarmuth.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John A. Yarmuth' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KY' AND d.name = '03';
-- END John A. Yarmuth


-- START Kevin Yoder
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kevin Yoder', 'R', 'CongressmanKevinYoder', 'RepKevinYoder',
'Kevin Yoder', 'http://yoder.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kevin Yoder' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KS' AND d.name = '03';
-- END Kevin Yoder


-- START Don Young
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Don Young', 'R', 'RepDonYoung', 'RepDonYoung',
'Don Young', 'http://donyoung.house.gov', '23', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Don Young' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AK' AND d.name = '00';
-- END Don Young


-- START Mark E. Amodei
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mark E. Amodei', 'R', 'MarkAmodeiNV2', 'MarkAmodeiNV2',
'Mark Amodei', 'https://amodei.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mark E. Amodei' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NV' AND d.name = '02';
-- END Mark E. Amodei


-- START Suzanne Bonamici
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Suzanne Bonamici', 'D', 'congresswomanbonamici', 'RepBonamici',
'Suzanne Bonamici', 'http://bonamici.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Suzanne Bonamici' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OR' AND d.name = '01';
-- END Suzanne Bonamici


-- START Suzan K. DelBene
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Suzan K. DelBene', 'D', 'RepDelBene', 'RepDelBene',
'Suzan DelBene', 'https://delbene.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Suzan K. DelBene' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '01';
-- END Suzan K. DelBene


-- START Thomas Massie
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Thomas Massie', 'R', 'RepThomasMassie', 'RepThomasMassie',
'Thomas Massie', 'https://massie.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Thomas Massie' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KY' AND d.name = '04';
-- END Thomas Massie


-- START Donald M. Payne, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Donald M. Payne, Jr.', 'D', 'DonaldPayneJr', 'RepDonaldPayne',
'Donald Payne Jr.', 'http://payne.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Donald M. Payne, Jr.' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '10';
-- END Donald M. Payne, Jr.


-- START Bill Foster
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bill Foster', 'D', 'CongressmanBillFoster', 'RepBillFoster',
'Bill Foster (politician)', 'http://foster.house.gov', '5', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bill Foster' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '11';
-- END Bill Foster


-- START Dina Titus
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Dina Titus', 'D', 'CongresswomanTitus', 'RepDinaTitus',
'Dina Titus', 'https://titus.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Dina Titus' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NV' AND d.name = '01';
-- END Dina Titus


-- START Kyrsten Sinema
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kyrsten Sinema', 'D', 'CongresswomanSinema', 'RepSinema',
'Kyrsten Sinema', 'https://sinema.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kyrsten Sinema' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '09';
-- END Kyrsten Sinema


-- START Doug LaMalfa
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Doug LaMalfa', 'R', 'RepLaMalfa', 'RepLaMalfa',
'Doug LaMalfa', 'http://lamalfa.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Doug LaMalfa' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '01';
-- END Doug LaMalfa


-- START Jared Huffman
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jared Huffman', 'D', 'RepHuffman', 'RepHuffman',
'Jared Huffman', 'http://huffman.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jared Huffman' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '02';
-- END Jared Huffman


-- START Ami Bera
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ami Bera', 'D', 'RepAmiBera', 'RepBera',
'Ami Bera', 'http://bera.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ami Bera' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '07';
-- END Ami Bera


-- START Paul Cook
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Paul Cook', 'R', 'RepPaulCook', 'RepPaulCook',
'Paul Cook (politician)', 'http://cook.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Paul Cook' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '08';
-- END Paul Cook


-- START Eric Swalwell
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Eric Swalwell', 'D', 'CongressmanEricSwalwell', 'RepSwalwell',
'Eric Swalwell', 'https://swalwell.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Eric Swalwell' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '15';
-- END Eric Swalwell


-- START David G. Valadao
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David G. Valadao', 'R', 'CongressmanDavidValadao', 'RepDavidValadao',
'David Valadao', 'http://valadao.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David G. Valadao' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '21';
-- END David G. Valadao


-- START Julia Brownley
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Julia Brownley', 'D', 'RepJuliaBrownley', 'JuliaBrownley26',
'Julia Brownley', 'http://juliabrownley.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Julia Brownley' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '26';
-- END Julia Brownley


-- START Tony Cárdenas
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tony Cárdenas', 'D', 'repcardenas', 'RepCardenas',
'Tony Cárdenas', 'https://cardenas.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tony Cárdenas' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '29';
-- END Tony Cárdenas


-- START Raul Ruiz
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Raul Ruiz', 'D', 'CongressmanRaulRuizMD', 'CongressmanRuiz',
'Raul Ruiz (politician)', 'https://ruiz.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Raul Ruiz' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '36';
-- END Raul Ruiz


-- START Mark Takano
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mark Takano', 'D', 'RepMarkTakano', 'RepMarkTakano',
'Mark Takano', 'https://takano.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mark Takano' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '41';
-- END Mark Takano


-- START Alan S. Lowenthal
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Alan S. Lowenthal', 'D', 'RepLowenthal', 'RepLowenthal',
'Alan Lowenthal', 'http://lowenthal.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Alan S. Lowenthal' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '47';
-- END Alan S. Lowenthal


-- START Juan Vargas
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Juan Vargas', 'D', 'RepJuanVargas', 'RepJuanVargas',
'Juan Vargas', 'http://vargas.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Juan Vargas' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '51';
-- END Juan Vargas


-- START Scott H. Peters
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Scott H. Peters', 'D', 'RepScottPeters', 'RepScottPeters',
'Scott Peters (politician)', 'http://scottpeters.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Scott H. Peters' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '52';
-- END Scott H. Peters


-- START Elizabeth H. Esty
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Elizabeth H. Esty', 'D', 'RepEsty', 'RepEsty',
'Elizabeth Esty', 'https://esty.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Elizabeth H. Esty' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CT' AND d.name = '05';
-- END Elizabeth H. Esty


-- START Ted S. Yoho
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ted S. Yoho', 'R', 'CongressmanTedYoho', 'RepTedYoho',
'Ted Yoho', 'http://yoho.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ted S. Yoho' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '03';
-- END Ted S. Yoho


-- START Ron DeSantis
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ron DeSantis', 'R', 'RepDeSantis', 'RepDeSantis',
'Ron DeSantis', 'http://desantis.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ron DeSantis' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '06';
-- END Ron DeSantis


-- START Lois Frankel
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lois Frankel', 'D', 'RepLoisFrankel', 'RepLoisFrankel',
'Lois Frankel', 'http://frankel.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lois Frankel' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '21';
-- END Lois Frankel


-- START Doug Collins
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Doug Collins', 'R', 'RepresentativeDougCollins', 'RepDougCollins',
'Doug Collins (politician)', 'https://dougcollins.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Doug Collins' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '09';
-- END Doug Collins


-- START Tulsi Gabbard
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tulsi Gabbard', 'D', 'RepTulsiGabbard', 'TulsiPress',
'Tulsi Gabbard', 'https://gabbard.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tulsi Gabbard' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'HI' AND d.name = '02';
-- END Tulsi Gabbard


-- START Rodney Davis
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Rodney Davis', 'R', 'RepRodneyDavis', 'RodneyDavis',
'Rodney Davis (politician)', 'http://rodneydavis.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Rodney Davis' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '13';
-- END Rodney Davis


-- START Cheri Bustos
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Cheri Bustos', 'D', 'RepCheri', 'RepCheri',
'Cheri Bustos', 'https://bustos.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Cheri Bustos' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '17';
-- END Cheri Bustos


-- START Jackie Walorski
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jackie Walorski', 'R', 'RepJackieWalorski', 'RepWalorski',
'Jackie Walorski', 'http://walorski.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jackie Walorski' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '02';
-- END Jackie Walorski


-- START Susan W. Brooks
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Susan W. Brooks', 'R', 'congresswomansusanwbrooks', 'SusanWBrooks',
'Susan Brooks', 'http://susanwbrooks.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Susan W. Brooks' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '05';
-- END Susan W. Brooks


-- START Luke Messer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Luke Messer', 'R', 'RepLukeMesser', 'RepLukeMesser',
'Luke Messer', 'https://messer.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Luke Messer' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '06';
-- END Luke Messer


-- START Andy Barr
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Andy Barr', 'R', 'RepAndyBarr', 'RepAndyBarr',
'Andy Barr (U.S. politician)', 'https://barr.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Andy Barr' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KY' AND d.name = '06';
-- END Andy Barr


-- START Joseph P. Kennedy III
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Joseph P. Kennedy III', 'D', '301936109927957', 'RepJoeKennedy',
'Joseph P. Kennedy III', 'https://kennedy.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Joseph P. Kennedy III' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '04';
-- END Joseph P. Kennedy III


-- START John K. Delaney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John K. Delaney', 'D', 'congressmanjohndelaney', 'RepJohnDelaney',
'John Delaney (Maryland politician)', 'http://delaney.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John K. Delaney' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MD' AND d.name = '06';
-- END John K. Delaney


-- START Daniel T. Kildee
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Daniel T. Kildee', 'D', 'RepDanKildee', 'RepDanKildee',
'Dan Kildee', 'http://dankildee.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Daniel T. Kildee' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '05';
-- END Daniel T. Kildee


-- START Richard M. Nolan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Richard M. Nolan', 'D', 'UsRepRickNolan', 'USRepRickNolan',
'Rick Nolan', 'http://nolan.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Richard M. Nolan' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MN' AND d.name = '08';
-- END Richard M. Nolan


-- START Ann Wagner
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ann Wagner', 'R', 'RepAnnWagner', 'RepAnnWagner',
'Ann Wagner', 'http://wagner.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ann Wagner' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MO' AND d.name = '02';
-- END Ann Wagner


-- START Richard Hudson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Richard Hudson', 'R', 'RepRichHudson', 'RepRichHudson',
'Richard Hudson (U.S. politician)', 'https://hudson.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Richard Hudson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '08';
-- END Richard Hudson


-- START Robert Pittenger
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Robert Pittenger', 'R', 'congressmanpittenger', 'RepPittenger',
'Robert Pittenger', 'https://pittenger.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Robert Pittenger' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '09';
-- END Robert Pittenger


-- START Mark Meadows
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mark Meadows', 'R', 'Repmarkmeadows', 'RepMarkMeadows',
'Mark Meadows (North Carolina politician)', 'https://meadows.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mark Meadows' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '11';
-- END Mark Meadows


-- START George Holding
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'George Holding', 'R', 'CongressmanGeorgeHolding', 'RepHolding',
'George Holding', 'http://holding.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'George Holding' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '02';
-- END George Holding


-- START Kevin Cramer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kevin Cramer', 'R', 'CongressmanKevinCramer', 'RepKevinCramer',
'Kevin Cramer', 'http://cramer.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kevin Cramer' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'ND' AND d.name = '00';
-- END Kevin Cramer


-- START Ann M. Kuster
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ann M. Kuster', 'D', 'CongresswomanAnnieKuster', 'RepAnnieKuster',
'Ann McLane Kuster', 'http://kuster.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ann M. Kuster' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NH' AND d.name = '02';
-- END Ann M. Kuster


-- START Michelle Lujan Grisham
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Michelle Lujan Grisham', 'D', 'RepLujanGrisham', 'RepLujanGrisham',
'Michelle Lujan Grisham', 'https://lujangrisham.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Michelle Lujan Grisham' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NM' AND d.name = '01';
-- END Michelle Lujan Grisham


-- START Grace Meng
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Grace Meng', 'D', 'repgracemeng', 'RepGraceMeng',
'Grace Meng', 'http://meng.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Grace Meng' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '06';
-- END Grace Meng


-- START Hakeem S. Jeffries
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Hakeem S. Jeffries', 'D', 'RepHakeemJeffries', 'RepJeffries',
'Hakeem Jeffries', 'http://jeffries.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Hakeem S. Jeffries' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '08';
-- END Hakeem S. Jeffries


-- START Sean Patrick Maloney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Sean Patrick Maloney', 'D', 'RepSeanMaloney', 'RepSeanMaloney',
'Sean Patrick Maloney', 'http://seanmaloney.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Sean Patrick Maloney' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '18';
-- END Sean Patrick Maloney


-- START Chris Collins
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Chris Collins', 'R', 'RepChrisCollins', 'RepChrisCollins',
'Chris Collins (U.S. politician)', 'https://chriscollins.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Chris Collins' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '27';
-- END Chris Collins


-- START Brad R. Wenstrup
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brad R. Wenstrup', 'R', 'RepBradWenstrup', 'RepBradWenstrup',
'Brad Wenstrup', 'http://wenstrup.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brad R. Wenstrup' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '02';
-- END Brad R. Wenstrup


-- START Joyce Beatty
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Joyce Beatty', 'D', 'RepJoyceBeatty', 'RepBeatty',
'Joyce Beatty', 'http://beatty.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Joyce Beatty' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '03';
-- END Joyce Beatty


-- START David P. Joyce
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David P. Joyce', 'R', 'RepDaveJoyce', 'RepDaveJoyce',
'David Joyce (politician)', 'https://joyce.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David P. Joyce' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '14';
-- END David P. Joyce


-- START Jim Bridenstine
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jim Bridenstine', 'R', 'CongressmanJimBridenstine', 'RepJBridenstine',
'Jim Bridenstine', 'http://bridenstine.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jim Bridenstine' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OK' AND d.name = '01';
-- END Jim Bridenstine


-- START Markwayne Mullin
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Markwayne Mullin', 'R', 'RepMullin', 'RepMullin',
'Markwayne Mullin', 'https://mullin.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Markwayne Mullin' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OK' AND d.name = '02';
-- END Markwayne Mullin


-- START Scott Perry
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Scott Perry', 'R', 'repscottperry', 'RepScottPerry',
'Scott Perry (politician)', 'http://perry.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Scott Perry' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '04';
-- END Scott Perry


-- START Keith J. Rothfus
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Keith J. Rothfus', 'R', 'keithrothfus', 'KeithRothfus',
'Keith Rothfus', 'https://rothfus.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Keith J. Rothfus' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '12';
-- END Keith J. Rothfus


-- START Matt Cartwright
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Matt Cartwright', 'D', 'CongressmanMattCartwright', 'RepCartwright',
'Matt Cartwright', 'http://cartwright.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Matt Cartwright' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '17';
-- END Matt Cartwright


-- START Tom Rice
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tom Rice', 'R', 'reptomrice', 'RepTomRice',
'Tom Rice', 'http://rice.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tom Rice' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'SC' AND d.name = '07';
-- END Tom Rice


-- START Randy K. Weber, Sr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Randy K. Weber, Sr.', 'R', 'TXRandy14', 'TXRandy14',
'Randy Weber', 'http://weber.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Randy K. Weber, Sr.' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '14';
-- END Randy K. Weber, Sr.


-- START Beto O''Rourke
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Beto O''Rourke', 'D', 'betoorourketx16', 'RepBetoORourke',
'Beto O''Rourke', 'http://orourke.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Beto O''Rourke' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '16';
-- END Beto O''Rourke


-- START Joaquin Castro
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Joaquin Castro', 'D', '326420614138023', 'JoaquinCastrotx',
'Joaquín Castro', 'https://castro.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Joaquin Castro' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '20';
-- END Joaquin Castro


-- START Roger Williams
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Roger Williams', 'R', 'RepRogerWilliams', 'RepRWilliams',
'Roger Williams (U.S. politician)', 'http://williams.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Roger Williams' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '25';
-- END Roger Williams


-- START Marc A. Veasey
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Marc A. Veasey', 'D', 'CongressmanMarcVeasey', 'RepVeasey',
'Marc Veasey', 'http://veasey.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Marc A. Veasey' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '33';
-- END Marc A. Veasey


-- START Filemon Vela
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Filemon Vela', 'D', 'USCongressmanFilemonVela', 'RepFilemonVela',
'Filemon Vela Jr.', 'https://vela.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Filemon Vela' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '34';
-- END Filemon Vela


-- START Chris Stewart
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Chris Stewart', 'R', 'RepChrisStewart', 'RepChrisStewart',
'Chris Stewart (politician)', 'http://stewart.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Chris Stewart' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'UT' AND d.name = '02';
-- END Chris Stewart


-- START Derek Kilmer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Derek Kilmer', 'D', 'derek.kilmer', 'RepDerekKilmer',
'Derek Kilmer', 'https://kilmer.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Derek Kilmer' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '06';
-- END Derek Kilmer


-- START Denny Heck
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Denny Heck', 'D', 'CongressmanDennyHeck', 'RepDennyHeck',
'Dennis Heck', 'http://dennyheck.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Denny Heck' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '10';
-- END Denny Heck


-- START Mark Pocan
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mark Pocan', 'D', 'repmarkpocan', 'RepMarkPocan',
'Mark Pocan', 'http://pocan.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mark Pocan' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WI' AND d.name = '02';
-- END Mark Pocan


-- START Robin L. Kelly
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Robin L. Kelly', 'D', 'reprobinkelly', 'RepRobinKelly',
'Robin Kelly', 'https://robinkelly.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Robin L. Kelly' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '02';
-- END Robin L. Kelly


-- START Mark Sanford
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mark Sanford', 'R', 'RepSanfordSC', 'RepSanfordSC',
'Mark Sanford', 'https://sanford.house.gov', '6', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mark Sanford' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'SC' AND d.name = '01';
-- END Mark Sanford


-- START Jason Smith
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jason Smith', 'R', 'repjasonsmith', 'RepJasonSmith',
'Jason T. Smith', 'https://jasonsmith.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jason Smith' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MO' AND d.name = '08';
-- END Jason Smith


-- START Katherine M. Clark
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Katherine M. Clark', 'D', 'CongresswomanClark', 'RepKClark',
'Katherine Clark', 'https://katherineclark.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Katherine M. Clark' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '05';
-- END Katherine M. Clark


-- START Bradley Byrne
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bradley Byrne', 'R', 'RepByrne', 'RepByrne',
'Bradley Byrne', 'https://byrne.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bradley Byrne' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AL' AND d.name = '01';
-- END Bradley Byrne


-- START Dave Brat
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Dave Brat', 'R', 'RepDaveBrat', 'RepDaveBrat',
'Dave Brat', 'http://brat.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Dave Brat' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '07';
-- END Dave Brat


-- START Donald Norcross
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Donald Norcross', 'D', 'DonaldNorcrossNJ', 'DonaldNorcross',
'Donald Norcross', 'https://norcross.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Donald Norcross' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '01';
-- END Donald Norcross


-- START Alma S. Adams
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Alma S. Adams', 'D', 'CongresswomanAdams', 'RepAdams',
'Alma Adams', 'http://adams.house.gov', '3', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Alma S. Adams' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '12';
-- END Alma S. Adams


-- START Gary J. Palmer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Gary J. Palmer', 'R', 'CongressmanGaryPalmer', 'USRepGaryPalmer',
'Gary Palmer (politician)', 'https://palmer.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Gary J. Palmer' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AL' AND d.name = '06';
-- END Gary J. Palmer


-- START J. French Hill
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'J. French Hill', 'R', 'RepFrenchHill', 'RepFrenchHill',
'French Hill (politician)', 'https://hill.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'J. French Hill' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AR' AND d.name = '02';
-- END J. French Hill


-- START Bruce Westerman
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bruce Westerman', 'R', 'RepWesterman', 'RepWesterman',
'Bruce Westerman', 'https://westerman.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bruce Westerman' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AR' AND d.name = '04';
-- END Bruce Westerman


-- START Martha McSally
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Martha McSally', 'R', 'RepMcSally', 'RepMcSally',
'Martha McSally', 'https://mcsally.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Martha McSally' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '02';
-- END Martha McSally


-- START Ruben Gallego
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ruben Gallego', 'D', 'RepRubenGallego', 'RepRubenGallego',
'Ruben Gallego', 'https://rubengallego.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ruben Gallego' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '07';
-- END Ruben Gallego


-- START Mark DeSaulnier
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mark DeSaulnier', 'D', 'RepMarkDeSaulnier', 'RepDeSaulnier',
'Mark DeSaulnier', 'https://desaulnier.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mark DeSaulnier' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '11';
-- END Mark DeSaulnier


-- START Stephen Knight
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Stephen Knight', 'R', 'RepresentativeSteveKnight', 'SteveKnight25',
'Steve Knight (politician)', 'https://knight.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Stephen Knight' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '25';
-- END Stephen Knight


-- START Pete Aguilar
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Pete Aguilar', 'D', 'reppeteaguilar', 'reppeteaguilar',
'Pete Aguilar', 'https://aguilar.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Pete Aguilar' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '31';
-- END Pete Aguilar


-- START Ted Lieu
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ted Lieu', 'D', 'RepTedLieu', 'RepTedLieu',
'Ted Lieu', 'https://lieu.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ted Lieu' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '33';
-- END Ted Lieu


-- START Norma J. Torres
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Norma J. Torres', 'D', 'RepNormaTorres', 'NormaJTorres',
'Norma Torres', 'https://torres.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Norma J. Torres' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '35';
-- END Norma J. Torres


-- START Mimi Walters
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mimi Walters', 'R', 'RepMimiWalters', 'RepMimiWalters',
'Mimi Walters', 'https://walters.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mimi Walters' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '45';
-- END Mimi Walters


-- START Ken Buck
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ken Buck', 'R', 'repkenbuck', 'RepKenBuck',
'Ken Buck', 'https://buck.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ken Buck' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CO' AND d.name = '04';
-- END Ken Buck


-- START Carlos Curbelo
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Carlos Curbelo', 'R', 'repcurbelo', 'RepCurbelo',
'Carlos Curbelo (politician)', 'http://curbelo.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Carlos Curbelo' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '26';
-- END Carlos Curbelo


-- START Earl L. "Buddy" Carter
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Earl L. "Buddy" Carter', 'R', 'congressmanbuddycarter', 'RepBuddyCarter',
'Buddy Carter', 'http://buddycarter.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Earl L. "Buddy" Carter' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '01';
-- END Earl L. "Buddy" Carter


-- START Jody B. Hice
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jody B. Hice', 'R', 'CongressmanJodyHice', 'congressmanhice',
'Jody Hice', 'https://hice.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jody B. Hice' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '10';
-- END Jody B. Hice


-- START Barry Loudermilk
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Barry Loudermilk', 'R', 'reploudermilk', 'RepLoudermilk',
'Barry Loudermilk', 'http://loudermilk.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Barry Loudermilk' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '11';
-- END Barry Loudermilk


-- START Rick W. Allen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Rick W. Allen', 'R', 'CongressmanRickAllen', 'reprickallen',
'Rick W. Allen', 'http://allen.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Rick W. Allen' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '12';
-- END Rick W. Allen


-- START Rod Blum
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Rod Blum', 'R', 'congressmanrodblum', 'RepRodBlum',
'Rod Blum', 'https://blum.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Rod Blum' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IA' AND d.name = '01';
-- END Rod Blum


-- START David Young
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David Young', 'R', 'RepDavidYoung', 'RepDavidYoung',
'David Young (Iowa politician)', 'https://davidyoung.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David Young' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IA' AND d.name = '03';
-- END David Young


-- START Mike Bost
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Bost', 'R', 'RepBost', 'RepBost',
'Mike Bost', 'https://bost.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Bost' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '12';
-- END Mike Bost


-- START Ralph Lee Abraham
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ralph Lee Abraham', 'R', 'CongressmanRalphAbraham', 'RepAbraham',
'Ralph Abraham (politician)', 'https://abraham.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ralph Lee Abraham' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'LA' AND d.name = '05';
-- END Ralph Lee Abraham


-- START Garret Graves
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Garret Graves', 'R', 'CongressmanGarretGraves', 'RepGarretGraves',
'Garret Graves', 'https://garretgraves.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Garret Graves' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'LA' AND d.name = '06';
-- END Garret Graves


-- START Seth Moulton
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Seth Moulton', 'D', 'CongressmanSethMoulton', 'teammoulton',
'Seth Moulton', 'http://moulton.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Seth Moulton' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MA' AND d.name = '06';
-- END Seth Moulton


-- START Bruce Poliquin
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bruce Poliquin', 'R', 'RepPoliquin', 'RepPoliquin',
'Bruce Poliquin', 'https://poliquin.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bruce Poliquin' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'ME' AND d.name = '02';
-- END Bruce Poliquin


-- START John R. Moolenaar
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John R. Moolenaar', 'R', 'RepMoolenaar', 'RepMoolenaar',
'John Moolenaar', 'https://moolenaar.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John R. Moolenaar' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '04';
-- END John R. Moolenaar


-- START Mike Bishop
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Bishop', 'R', 'RepMikeBishop', 'RepMikeBishop',
'Mike Bishop (politician)', 'https://mikebishop.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Bishop' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '08';
-- END Mike Bishop


-- START David A. Trott
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David A. Trott', 'R', 'RepDaveTrott', 'repdavetrott',
'Dave Trott (politician)', 'https://trott.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David A. Trott' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '11';
-- END David A. Trott


-- START Debbie Dingell
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Debbie Dingell', 'D', 'RepDebbieDingell', 'RepDebDingell',
'Debbie Dingell', 'https://debbiedingell.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Debbie Dingell' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '12';
-- END Debbie Dingell


-- START Brenda L. Lawrence
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brenda L. Lawrence', 'D', '395759603917487', 'RepLawrence',
'Brenda Lawrence', 'https://lawrence.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brenda L. Lawrence' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '14';
-- END Brenda L. Lawrence


-- START Tom Emmer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tom Emmer', 'R', 'reptomemmer', 'RepTomEmmer',
'Tom Emmer', 'https://emmer.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tom Emmer' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MN' AND d.name = '06';
-- END Tom Emmer


-- START David Rouzer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David Rouzer', 'R', 'RepRouzer', 'RepDavidRouzer',
'David Rouzer', 'https://rouzer.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David Rouzer' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '07';
-- END David Rouzer


-- START Thomas MacArthur
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Thomas MacArthur', 'R', 'CongressmanTomMacArthur', 'RepTomMacArthur',
'Tom MacArthur', 'https://macarthur.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Thomas MacArthur' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '03';
-- END Thomas MacArthur


-- START Bonnie Watson Coleman
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bonnie Watson Coleman', 'D', 'RepBonnie', 'RepBonnie',
'Bonnie Watson Coleman', 'https://watsoncoleman.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bonnie Watson Coleman' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '12';
-- END Bonnie Watson Coleman


-- START Lee M. Zeldin
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lee M. Zeldin', 'R', 'RepLeeZeldin', 'RepLeeZeldin',
'Lee Zeldin', 'https://zeldin.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lee M. Zeldin' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '01';
-- END Lee M. Zeldin


-- START Kathleen M. Rice
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Kathleen M. Rice', 'D', 'RepKathleenRice', 'RepKathleenRice',
'Kathleen Rice', 'http://kathleenrice.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Kathleen M. Rice' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '04';
-- END Kathleen M. Rice


-- START Elise M. Stefanik
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Elise M. Stefanik', 'R', 'RepEliseStefanik', 'RepStefanik',
'Elise Stefanik', 'https://stefanik.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Elise M. Stefanik' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '21';
-- END Elise M. Stefanik


-- START John Katko
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John Katko', 'R', 'RepJohnKatko', 'RepJohnKatko',
'John Katko', 'https://katko.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John Katko' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '24';
-- END John Katko


-- START Steve Russell
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Steve Russell', 'R', 'reprussell', 'RepRussell',
'Steve Russell (politician)', 'https://russell.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Steve Russell' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OK' AND d.name = '05';
-- END Steve Russell


-- START Ryan A. Costello
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ryan A. Costello', 'R', 'CongressmanRyanCostello', 'RepRyanCostello',
'Ryan Costello', 'https://costello.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ryan A. Costello' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '06';
-- END Ryan A. Costello


-- START Brendan F. Boyle
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brendan F. Boyle', 'D', 'CongressmanBoyle', 'CongBoyle',
'Brendan Boyle', 'https://boyle.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brendan F. Boyle' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '13';
-- END Brendan F. Boyle


-- START John Ratcliffe
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John Ratcliffe', 'R', 'RepRatcliffe', 'RepRatcliffe',
'John Ratcliffe (American politician)', 'https://ratcliffe.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John Ratcliffe' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '04';
-- END John Ratcliffe


-- START Will Hurd
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Will Hurd', 'R', 'HurdOnTheHill', 'hurdonthehill',
'Will Hurd', 'https://hurd.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Will Hurd' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '23';
-- END Will Hurd


-- START Brian Babin
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brian Babin', 'R', 'RepBrianBabin', 'RepBrianBabin',
'Brian Babin', 'http://babin.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brian Babin' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '36';
-- END Brian Babin


-- START Mia B. Love
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mia B. Love', 'R', 'repmialove', 'repmialove',
'Mia Love', 'https://love.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mia B. Love' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'UT' AND d.name = '04';
-- END Mia B. Love


-- START Donald S. Beyer, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Donald S. Beyer, Jr.', 'D', 'repdonbeyer', 'repdonbeyer',
'Don Beyer', 'http://beyer.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Donald S. Beyer, Jr.' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '08';
-- END Donald S. Beyer, Jr.


-- START Barbara Comstock
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Barbara Comstock', 'R', 'RepBarbaraComstock', 'RepComstock',
'Barbara Comstock', 'https://comstock.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Barbara Comstock' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '10';
-- END Barbara Comstock


-- START Stacey E. Plaskett
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Stacey E. Plaskett', 'D', 'repstaceyplaskett', 'staceyplaskett',
'Stacey Plaskett', 'https://plaskett.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Stacey E. Plaskett' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VI' AND d.name = '00';
-- END Stacey E. Plaskett


-- START Dan Newhouse
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Dan Newhouse', 'R', 'RepNewhouse', 'RepNewhouse',
'Dan Newhouse', 'https://newhouse.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Dan Newhouse' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '04';
-- END Dan Newhouse


-- START Glenn Grothman
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Glenn Grothman', 'R', 'RepGrothman', 'RepGrothman',
'Glenn Grothman', 'http://grothman.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Glenn Grothman' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WI' AND d.name = '06';
-- END Glenn Grothman


-- START Alexander X. Mooney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Alexander X. Mooney', 'R', 'CongressmanAlexMooney', 'RepAlexMooney',
'Alex Mooney', 'https://mooney.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Alexander X. Mooney' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WV' AND d.name = '02';
-- END Alexander X. Mooney


-- START Evan H. Jenkins
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Evan H. Jenkins', 'R', 'RepEvanJenkins', 'RepEvanJenkins',
'Evan Jenkins (politician)', 'https://evanjenkins.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Evan H. Jenkins' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WV' AND d.name = '03';
-- END Evan H. Jenkins


-- START Aumua Amata Coleman Radewagen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Aumua Amata Coleman Radewagen', 'R', 'aumuaamata', 'RepAmata',
'Amata Coleman Radewagen', 'https://radewagen.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Aumua Amata Coleman Radewagen' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AS' AND d.name = '00';
-- END Aumua Amata Coleman Radewagen


-- START Mark Walker
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mark Walker', 'R', 'RepMarkWalker', 'RepMarkWalker',
'Mark Walker (North Carolina politician)', 'https://walker.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mark Walker' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '06';
-- END Mark Walker


-- START Daniel M. Donovan, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Daniel M. Donovan, Jr.', 'R', 'RepDanDonovan', 'RepDanDonovan',
'Dan Donovan (politician)', 'https://donovan.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Daniel M. Donovan, Jr.' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '11';
-- END Daniel M. Donovan, Jr.


-- START Trent Kelly
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Trent Kelly', 'R', 'reptrentkelly', 'reptrentkelly',
'Trent Kelly', 'https://trentkelly.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Trent Kelly' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MS' AND d.name = '01';
-- END Trent Kelly


-- START Darin LaHood
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Darin LaHood', 'R', 'replahood', 'RepLaHood',
'Darin LaHood', 'https://lahood.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Darin LaHood' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '18';
-- END Darin LaHood


-- START Warren Davidson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Warren Davidson', 'R', 'CongressmanWarrenDavidson', 'WarrenDavidson',
'Warren Davidson', 'https://davidson.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Warren Davidson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'OH' AND d.name = '08';
-- END Warren Davidson


-- START Colleen Hanabusa
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Colleen Hanabusa', 'D', '', 'RepHanabusa',
'Colleen Hanabusa', 'https://hanabusa.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Colleen Hanabusa' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'HI' AND d.name = '01';
-- END Colleen Hanabusa


-- START James Comer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'James Comer', 'R', 'congressmancomer', '',
'James Comer (politician)', 'https://comer.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'James Comer' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KY' AND d.name = '01';
-- END James Comer


-- START Dwight Evans
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Dwight Evans', 'D', 'RepDwightEvans', 'RepDwightEvans',
'Dwight Evans (politician)', 'https://evans.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Dwight Evans' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '02';
-- END Dwight Evans


-- START Bradley Scott Schneider
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Bradley Scott Schneider', 'D', 'CongressmanBradSchneider', 'repschneider',
'Brad Schneider', 'https://schneider.house.gov', '2', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Bradley Scott Schneider' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '10';
-- END Bradley Scott Schneider


-- START Carol Shea-Porter
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Carol Shea-Porter', 'D', 'repsheaporter', 'repsheaporter',
'Carol Shea-Porter', 'https://shea-porter.house.gov', '4', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Carol Shea-Porter' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NH' AND d.name = '01';
-- END Carol Shea-Porter


-- START Tom O''Halleran
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Tom O''Halleran', 'D', 'repohalleran', 'repohalleran',
'Tom O''Halleran', 'https://ohalleran.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Tom O''Halleran' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '01';
-- END Tom O''Halleran


-- START Andy Biggs
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Andy Biggs', 'R', 'RepAndyBiggs', 'RepAndyBiggsAZ',
'Andy Biggs (politician)', 'https://biggs.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Andy Biggs' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'AZ' AND d.name = '05';
-- END Andy Biggs


-- START Ro Khanna
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ro Khanna', 'D', 'RepRoKhanna', 'RepRoKhanna',
'Ro Khanna', 'https://khanna.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ro Khanna' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '17';
-- END Ro Khanna


-- START Jimmy Panetta
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jimmy Panetta', 'D', 'RepJimmyPanetta', 'RepJimmyPanetta',
'Jimmy Panetta', 'https://panetta.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jimmy Panetta' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '20';
-- END Jimmy Panetta


-- START Salud O. Carbajal
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Salud O. Carbajal', 'D', 'repsaludcarbajal', 'RepCarbajal',
'Salud Carbajal', 'https://carbajal.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Salud O. Carbajal' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '24';
-- END Salud O. Carbajal


-- START Nanette Diaz Barragán
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Nanette Diaz Barragán', 'D', 'CongresswomanBarragan', 'RepBarragan',
'Nanette Barragán', 'https://barragan.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Nanette Diaz Barragán' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '44';
-- END Nanette Diaz Barragán


-- START J. Luis Correa
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'J. Luis Correa', 'D', '', 'reploucorrea',
'Lou Correa', 'https://correa.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'J. Luis Correa' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'CA' AND d.name = '46';
-- END J. Luis Correa


-- START Lisa Blunt Rochester
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lisa Blunt Rochester', 'D', 'Rep.BluntRochester', 'RepBRochester',
'Lisa Blunt Rochester', 'https://bluntrochester.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lisa Blunt Rochester' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'DE' AND d.name = '00';
-- END Lisa Blunt Rochester


-- START Matt Gaetz
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Matt Gaetz', 'R', 'CongressmanMattGaetz', 'Rep_Matt_Gaetz',
'Matt Gaetz', 'https://gaetz.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Matt Gaetz' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '01';
-- END Matt Gaetz


-- START Neal P. Dunn
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Neal P. Dunn', 'R', 'drnealdunnfl2', 'drnealdunnfl2',
'Neal Dunn', 'https://dunn.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Neal P. Dunn' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '02';
-- END Neal P. Dunn


-- START John H. Rutherford
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John H. Rutherford', 'R', 'RepRutherfordFL', 'RepRutherfordFL',
'John Rutherford (Florida politician)', 'https://rutherford.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John H. Rutherford' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '04';
-- END John H. Rutherford


-- START Al Lawson, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Al Lawson, Jr.', 'D', 'RepAlLawsonJr', 'RepAlLawsonJr',
'Al Lawson', 'https://lawson.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Al Lawson, Jr.' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '05';
-- END Al Lawson, Jr.


-- START Stephanie N. Murphy
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Stephanie N. Murphy', 'D', 'RepStephMurphy', 'RepStephMurphy',
'Stephanie Murphy', 'https://stephaniemurphy.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Stephanie N. Murphy' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '07';
-- END Stephanie N. Murphy


-- START Darren Soto
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Darren Soto', 'D', 'CongressmanDarrenSoto', 'RepDarrenSoto',
'Darren Soto', 'https://soto.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Darren Soto' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '09';
-- END Darren Soto


-- START Val Butler Demings
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Val Butler Demings', 'D', 'RepresentativeValDemings', 'RepValDemings',
'Val Demings', 'https://demings.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Val Butler Demings' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '10';
-- END Val Butler Demings


-- START Charlie Crist
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Charlie Crist', 'D', 'RepCharlieCrist', 'repcharliecrist',
'Charlie Crist', 'https://crist.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Charlie Crist' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '13';
-- END Charlie Crist


-- START Brian J. Mast
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brian J. Mast', 'R', 'repbrianmast', 'repbrianmast',
'Brian Mast', 'https://mast.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brian J. Mast' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '18';
-- END Brian J. Mast


-- START Francis Rooney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Francis Rooney', 'R', 'RepRooney', 'RepRooney',
'Francis Rooney', 'https://francisrooney.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Francis Rooney' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'FL' AND d.name = '19';
-- END Francis Rooney


-- START A. Drew Ferguson IV
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'A. Drew Ferguson IV', 'R', 'RepDrewFerguson', 'RepDrewFerguson',
'Drew Ferguson (politician)', 'https://ferguson.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'A. Drew Ferguson IV' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'GA' AND d.name = '03';
-- END A. Drew Ferguson IV


-- START Raja Krishnamoorthi
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Raja Krishnamoorthi', 'D', 'congressmanraja', 'congressmanraja',
'Raja Krishnamoorthi', 'https://krishnamoorthi.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Raja Krishnamoorthi' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IL' AND d.name = '08';
-- END Raja Krishnamoorthi


-- START Jim Banks
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jim Banks', 'R', 'RepJimBanks', 'RepJimBanks',
'Jim Banks', 'https://banks.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jim Banks' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '03';
-- END Jim Banks


-- START Trey Hollingsworth
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Trey Hollingsworth', 'R', 'reptrey', 'reptrey',
'Trey Hollingsworth', 'https://hollingsworth.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Trey Hollingsworth' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'IN' AND d.name = '09';
-- END Trey Hollingsworth


-- START Roger W. Marshall
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Roger W. Marshall', 'R', 'rogermarshallmd', 'RepMarshall',
'Roger Marshall (politician)', 'https://marshall.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Roger W. Marshall' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'KS' AND d.name = '01';
-- END Roger W. Marshall


-- START Clay Higgins
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Clay Higgins', 'R', '', '',
'Clay Higgins', 'https://clayhiggins.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Clay Higgins' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'LA' AND d.name = '03';
-- END Clay Higgins


-- START Mike Johnson
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Johnson', 'R', 'RepMikeJohnson', 'RepMikeJohnson',
'Mike Johnson (Louisiana politician)', 'https://mikejohnson.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Johnson' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'LA' AND d.name = '04';
-- END Mike Johnson


-- START Anthony G. Brown
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Anthony G. Brown', 'D', '', '',
'Anthony G. Brown', 'https://anthonybrown.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Anthony G. Brown' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MD' AND d.name = '04';
-- END Anthony G. Brown


-- START Jamie Raskin
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jamie Raskin', 'D', 'repraskin', 'repraskin',
'Jamie Raskin', 'https://raskin.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jamie Raskin' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MD' AND d.name = '08';
-- END Jamie Raskin


-- START Jack Bergman
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jack Bergman', 'R', 'RepJackBergman', 'RepJackBergman',
'Jack Bergman', 'https://bergman.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jack Bergman' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '01';
-- END Jack Bergman


-- START Paul Mitchell
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Paul Mitchell', 'R', 'reppaulmitchell', 'RepPaulMitchell',
'Paul Mitchell (politician)', 'https://mitchell.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Paul Mitchell' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MI' AND d.name = '10';
-- END Paul Mitchell


-- START Jason Lewis
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jason Lewis', 'R', 'RepJasonLewis', 'RepJasonLewis',
'Jason Lewis (congressman)', 'https://jasonlewis.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jason Lewis' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'MN' AND d.name = '02';
-- END Jason Lewis


-- START Ted Budd
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ted Budd', 'R', 'RepTedBudd', 'RepTedBudd',
'Ted Budd', 'https://budd.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ted Budd' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NC' AND d.name = '13';
-- END Ted Budd


-- START Don Bacon
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Don Bacon', 'R', 'RepDonBacon', 'repdonbacon',
'Don Bacon (politician)', 'https://bacon.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Don Bacon' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NE' AND d.name = '02';
-- END Don Bacon


-- START Josh Gottheimer
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Josh Gottheimer', 'D', 'RepJoshG', 'RepJoshG',
'Josh Gottheimer', 'https://gottheimer.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Josh Gottheimer' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NJ' AND d.name = '05';
-- END Josh Gottheimer


-- START Jacky Rosen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jacky Rosen', 'D', 'RepJackyRosen', 'repjackyrosen',
'Jacky Rosen', 'https://rosen.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jacky Rosen' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NV' AND d.name = '03';
-- END Jacky Rosen


-- START Ruben Kihuen
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Ruben Kihuen', 'D', 'RepKihuen', 'RepKihuen',
'Ruben Kihuen', 'https://kihuen.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Ruben Kihuen' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NV' AND d.name = '04';
-- END Ruben Kihuen


-- START Thomas R. Suozzi
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Thomas R. Suozzi', 'D', 'RepTomSuozzi', 'RepTomSuozzi',
'Thomas Suozzi', 'https://suozzi.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Thomas R. Suozzi' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '03';
-- END Thomas R. Suozzi


-- START Adriano Espaillat
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Adriano Espaillat', 'D', 'RepEspaillat', 'RepEspaillat',
'Adriano Espaillat', 'https://espaillat.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Adriano Espaillat' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '13';
-- END Adriano Espaillat


-- START John J. Faso
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'John J. Faso', 'R', 'RepJohnFaso', 'RepJohnFaso',
'John Faso', 'https://faso.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'John J. Faso' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '19';
-- END John J. Faso


-- START Claudia Tenney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Claudia Tenney', 'R', 'RepClaudiaTenney', 'RepTenney',
'Claudia Tenney', 'https://tenney.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Claudia Tenney' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'NY' AND d.name = '22';
-- END Claudia Tenney


-- START Brian K. Fitzpatrick
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Brian K. Fitzpatrick', 'R', 'repbrianfitzpatrick', 'repbrianfitz',
'Brian Fitzpatrick (American politician)', 'https://brianfitzpatrick.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Brian K. Fitzpatrick' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '08';
-- END Brian K. Fitzpatrick


-- START Lloyd Smucker
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Lloyd Smucker', 'R', '', 'RepSmucker',
'Lloyd Smucker', 'https://smucker.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Lloyd Smucker' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PA' AND d.name = '16';
-- END Lloyd Smucker


-- START Jenniffer González-Colón
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jenniffer González-Colón', 'R', 'RepJennifferGonzalezColon', 'repjenniffer',
'Jenniffer González', 'https://gonzalez-colon.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jenniffer González-Colón' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'PR' AND d.name = '00';
-- END Jenniffer González-Colón


-- START David Kustoff
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'David Kustoff', 'R', 'RepDavidKustoff', 'repdavidkustoff',
'David Kustoff', 'https://kustoff.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'David Kustoff' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TN' AND d.name = '08';
-- END David Kustoff


-- START Vicente Gonzalez
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Vicente Gonzalez', 'D', 'USCongressmanVicenteGonzalez', 'RepGonzalez',
'Vicente González (politician)', 'https://gonzalez.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Vicente Gonzalez' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '15';
-- END Vicente Gonzalez


-- START Jodey C. Arrington
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Jodey C. Arrington', 'R', 'JodeyArrington', 'RepArrington',
'Jodey Arrington', 'https://arrington.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Jodey C. Arrington' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'TX' AND d.name = '19';
-- END Jodey C. Arrington


-- START Scott Taylor
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Scott Taylor', 'R', '', '',
'Scott Taylor (politician)', 'https://taylor.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Scott Taylor' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '02';
-- END Scott Taylor


-- START A. Donald McEachin
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'A. Donald McEachin', 'D', 'RepMcEachin', 'RepMcEachin',
'Donald McEachin', 'https://mceachin.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'A. Donald McEachin' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '04';
-- END A. Donald McEachin


-- START Thomas A. Garrett, Jr.
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Thomas A. Garrett, Jr.', 'R', 'congressman-Tom-Garrett-1835767753333490', 'Rep_Tom_Garrett',
'Tom Garrett Jr.', 'https://tomgarrett.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Thomas A. Garrett, Jr.' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'VA' AND d.name = '05';
-- END Thomas A. Garrett, Jr.


-- START Pramila Jayapal
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Pramila Jayapal', 'D', 'RepJayapal', 'RepJayapal',
'Pramila Jayapal', 'https://jayapal.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Pramila Jayapal' AND party = 'D')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WA' AND d.name = '07';
-- END Pramila Jayapal


-- START Mike Gallagher
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Mike Gallagher', 'R', 'RepMikeGallagher', 'RepGallagher',
'Mike Gallagher (American politician)', 'https://gallagher.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Mike Gallagher' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WI' AND d.name = '08';
-- END Mike Gallagher


-- START Liz Cheney
INSERT INTO representatives (
  name, party, facebook, twitter,
   wikipedia, url, term_count, up_for_reelection,
   inserted_at, updated_at
) VALUES (
'Liz Cheney', 'R', 'replizcheney', 'RepLizCheney',
'Liz Cheney', 'https://cheney.house.gov', '1', '2019-01-03',
now(), now()
);

UPDATE districts as d SET representative_id = (SELECT id from representatives 
  WHERE name = 'Liz Cheney' AND party = 'R')
FROM states as s
WHERE s.id = d.state_id AND s.short = 'WY' AND d.name = '00';
-- END Liz Cheney

