ALTER TABLE Teams
ADD COLUMN win INT CHECK (win >= 0),
ADD COLUMN defeat INT CHECK (defeat >= 0),
ADD COLUMN draw INT CHECK (draw >= 0);

UPDATE teams SET win = 730 WHERE team_name = 'PSG.LGD';
UPDATE teams SET draw = 90 WHERE team_name = 'PSG.LGD';
UPDATE teams SET defeat = 365 WHERE team_name = 'PSG.LGD';

UPDATE teams SET win = 623 WHERE team_name = 'Virtus.pro';
UPDATE teams SET draw = 77 WHERE team_name = 'Virtus.pro';
UPDATE teams SET defeat = 382 WHERE team_name = 'Virtus.pro';

UPDATE teams SET win = 686 WHERE team_name = 'Vici Gaming';
UPDATE teams SET draw = 99 WHERE team_name = 'Vici Gaming';
UPDATE teams SET defeat = 410 WHERE team_name = 'Vici Gaming';

UPDATE teams SET win = 432 WHERE team_name = 'Evil Geniuses'

ALTER TABLE players
ADD CONSTRAINT check_team
    FOREIGN KEY (team_id)
    REFERENCES teams(team_id)
    ON DELETE SET NULL;

DELETE FROM Players WHERE player_first_name = 'Sumail';

SELECT * FROM Players;