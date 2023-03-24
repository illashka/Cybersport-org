INSERT INTO Tournament_operators(to_name)
VALUES ('ESL'), ('ELEAGUE'), ('Starladder'), ('Weplay');

INSERT INTO Disciplines(discipline_name)
VALUES ('Dota 2'), ('Counter-Strike:  Global Offensive'), ('League of Legends'),
       ('Valorant'), ('Fortnite'), ('Hearstone'), ('Overwatch');

INSERT INTO Tournaments(tournament_name, tournament_start_date, to_id, discipline_id)
VALUES ('WePlay AniMajor', '2021-06-02', 4, 1),
       ('WePlay Academy League Season 5', '2022-07-25', 4, 2),
       ('WePlay Academy League Season 6', '2022-10-12', 4, 2),
       ('DreamHack Open Leipzig 2020', '2020-01-24', 1, 2),
       ('DreamHack Open Atlanta 2021', '2021-11-12', 1, 2),
       ('Intel Extreme Masters Season XIV - Beijing', '2019-11-07', 1, 2),
       ('ESL One Malaysia 2022', '2022-08-23', 1, 1),
       ('ESL Thailand Championship 2020', '2020-11-23', 1, 4),
       ('ESL Mistrzostwa Polski - Season 16', '2018-03-18', 1, 3);

INSERT INTO Sponsors(sponsor_name, sponsor_logo)
VALUES ('Redbull', 'https://www.kita-concept.de/wp-content/uploads/Red_Bull_GmbH_logo.png'),
       ('Mercedes-Benz', 'https://i.pinimg.com/originals/c0/5e/c2/c05ecb2c91db82f650dc.png'),
       ('Coca-Cola', 'https://avatars.mds.yandex.net/i?id=8ee590-thumbs&n=13'),
       ('Nike', 'https://free-png.ru/wp-content/uploads/657h.png');

INSERT INTO SponsorsTournaments(tournament_id, sponsor_id)
VALUES (1, 3),
       (2, 1),
       (3, 1),
       (4, 2),
       (5, 2),
       (6, 2),
       (7, 4),
       (8, 3),
       (9, 4);

INSERT INTO Teams(team_name, team_logo)
VALUES ('Team Ascent', 'https://liquipedia.net/Team_Ascent_lightmode.png'),
       ('Illuminar Gaming', 'https://liquipedia.net/Illuminar_Gaming_allmode.png'),
       ('PSG.LGD', 'https://liquipedia.net/PSG.LGD_logo_2020_std.png'),
       ('Evil Geniuses', 'https://liquipedia.net/Evil Geniuses_logo_std.png'),
       ('Virtus.pro', 'https://liquipedia.net/Virtus.pro_logo_std.png'),
       ('Team Nigma', 'https://liquipedia.net/Team Nigma_logo_std.png'),
       ('Vici Gaming', 'https://liquipedia.net/Vici Gaming_logo_std.png'),
       ('Astralis', 'https://liquipedia.net/Astralis_logo.png'),
       ('100 Thieves', 'https://liquipedia.net/100_Thieves_logo.png');

INSERT INTO TournamentsTeams(tournament_id, team_id)
VALUES  (1, 3),
        (1, 4),
        (1, 5),
        (1, 6),
        (1, 7),
        (8, 1),
        (8, 2),
        (6, 8),
        (6, 9);
       
INSERT INTO Players(player_first_name, player_nick_name, player_last_name, player_birthday, team_id)
VALUES
('Wang', '萧瑟', 'Chunyu', '1997-05-07', 3),
('ChengJin', 'NothingToSay', 'Xiang', '2000-12-21', 3),
('Zhang', 'Faith_bian', 'Ruida', '1998-04-21', 3),
('Zhao', 'XinQ', 'Zixing', '1998-07-06', 3),
('Zhang', 'y`', 'Yiping', '1998-07-06', 3),
('Sumail', 'SumaiL', 'Hassan', '1999-02-13', 6),
('Yang', 'poyoyo', 'Shaohan	', '2000-05-05', 7);

INSERT INTO Matches(match_start_date, match_result, tournament_id, team1_id, team2_id)
VALUES
('2021-06-11 19:30:00', '1-2', 1, 6, 3),
('2021-06-10 20:30:00', '1-2', 1, 5, 7),
('2021-06-13 21:55:00', '3-1', 1, 3, 4),
('2020-12-01 15:00:00', '2-1', 8, 1, 2);

INSERT INTO Broadcasts(broadcast_name)
VALUES
('Team Nigma vs PSG.LGD | Animajor 2021 | Upper Bracket Round 2 (Bo3)'),
('Virtus.Pro vs Vici Gaming | Animajor 2021 | Lower Bracket Round 1 (Bo3)'),
('PSG.LGD VS Evil Geniuses | Animajor 2021 | FINAL'),
('Team Ascent vs Illuminar Gaming bo3');

INSERT INTO MatchesBroadcasts(match_id, broadcast_id)
VALUES
(1, 1), (2, 2), (3, 3), (4, 4);

INSERT INTO Viewers (viewer_nick_name, broadcast_id)
VALUES
('2pay4win', 1), ('bogdanstyle1', 2), ('icelark', 1), ('ma_aks', 1), ('rellaaax', 3), ('zaid5597', 4), ('lev5550', 3), ('morfixx', 3),
('fast_jah', 3), ('fuminskt', 4), ('estendi', 3), ('oldboty', 3), ('streamelements', 1), ('adryyan___', 3), ('daaaniellll', 3), ('dominos023', 1),
('flowersodium', 2), ('kodus2019', 3), ('l_denys_l', 1), ('milkflex', 3), ('noo1092', 4), ('tonytaylor58', 3), ('xsavinx_yt', 3), ('ant1fairy', 3),
('arenfor',2 ), ('commanderroot', 3), ('dedpexto', 1), ('elysian', 1), ('elsterzz', 3), ('kartoshekareka', 3), ('lykarik', 3), ('odor7', 3),
('your_inner_emptiness', 3), ('zxcghoule', 3), ('a1c0ne', 1), ('camapck', 3), ('dushnoteka', 4), ('kaev5', 4), ('lomine', 3), ('q1ka', 3),
('shamandj', 1), ('viabiqa', 4), ('azymei', 3), ('ded_712', 3), ('el_tilos', 2), ('emptiness_mode', 2), ('islam_jako', 1), ('kvrvch', 3),
('ranerim', 3), ('realhaip', 3), ('sseishiin', 3), ('ya_psix1', 3), ('youruaki', 3);