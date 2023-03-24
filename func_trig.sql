CREATE FUNCTION WinsPersent () --Works
RETURNS table (
   team_name VARCHAR(100),
   win_percent INT
)
AS $$
BEGIN
    RETURN QUERY SELECT
    t.team_name, t.win*100/(t.win + t.draw + t.defeat)
    FROM Teams AS t;
END;
$$ LANGUAGE 'plpgsql';

SELECT * FROM WinsPersent();


--trigger
CREATE OR REPLACE FUNCTION public.merge_names()
RETURNS trigger AS $$
BEGIN
NEW.name = CONCAT(NEW.player_first_name, ' ', NEW.player_nick_name, ' ', NEW.player_last_name);
RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER "merge_players_name_on_update"
BEFORE UPDATE OF player_first_name, player_nick_name, player_last_name ON Players
EXECUTE PROCEDURE "merge_names"();

INSERt INTO Players (player_first_name, player_nick_name, player_last_name, player_birthday, team_id)
VALUES ('Dohwa', 'Kitsune', 'Kim', '2001-10-12', 1);

DELETE FROM Players WHERE player_first_name='Dohwa';

SELECT * FROM players;
