CREATE TABLE Tournament_operators(
    to_id SERIAL PRIMARY KEY,
    to_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Disciplines(
    discipline_id SERIAL PRIMARY KEY,
    discipline_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Sponsors(
    sponsor_id SERIAL PRIMARY KEY,
    sponsor_name VARCHAR(100) NOT NULL UNIQUE,
    sponsor_logo VARCHAR(100) UNIQUE
);

CREATE TABLE Tournaments(
    tournament_id SERIAL PRIMARY KEY,
    discipline_id INT,
    FOREIGN KEY (discipline_id) REFERENCES Disciplines (discipline_id),
    to_id INT,
    FOREIGN KEY (to_id) REFERENCES Tournament_operators(to_id),
    tournament_name VARCHAR(100) NOT NULL,
    tournament_start_date DATE NOT NULL
);

CREATE TABLE SponsorsTournaments(
    tournament_id INT NOT NULL,
    sponsor_id INT NOT NULL,
    FOREIGN KEY (tournament_id) REFERENCES Tournaments(tournament_id),
    FOREIGN KEY (sponsor_id) REFERENCES Sponsors(sponsor_id)
);

CREATE TABLE Teams(
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    team_logo VARCHAR(100) UNIQUE
);

CREATE TABLE TournamentsTeams(
    tournament_id INT NOT NULL,
    team_id INT NOT NULL,
    FOREIGN KEY (tournament_id) REFERENCES Tournaments(tournament_id),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Players(
    player_id SERIAL PRIMARY KEY,
    team_id INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id),
    player_first_name VARCHAR(100) NOT NULL,
    player_nick_name VARCHAR(100) NOT NULL,
    player_last_name VARCHAR(100) NOT NULL,
    player_birthday DATE NOT NULL
);

CREATE TYPE result AS ENUM('0-0', '0-1', '1-0', '1-1', '2-1', '1-2', '3-1', '3-2', '1-3', '2-3', '3-0', '0-3');
CREATE TABLE Matches(
    match_id SERIAL PRIMARY KEY,
    match_start_date TIMESTAMP NOT NULL,
    match_result result NOT NULL DEFAULT '0-0',
    tournament_id INT NOT NULL,
    FOREIGN KEY (tournament_id) REFERENCES Tournaments(tournament_id),
    team1_id INT NOT NULL,
    team2_id INT NOT NULL,
    FOREIGN KEY (team1_id) REFERENCES Teams(team_id),
    FOREIGN KEY (team2_id) REFERENCES Teams(team_id),
    CHECK (team2_id != team1_id)
);

CREATE TABLE Broadcasts(
    broadcast_id SERIAL PRIMARY KEY,
    broadcast_name VARCHAR(100) NOT NULL
);

CREATE TABLE MatchesBroadcasts(
    match_id INT NOT NULL,
    broadcast_id INT NOT NULL,
    FOREIGN KEY (match_id) REFERENCES Matches(match_id),
    FOREIGN KEY (broadcast_id) REFERENCES Broadcasts(broadcast_id)
);

CREATE TABLE Viewers(
    viewer_id SERIAL PRIMARY KEY,
    viewer_nick_name VARCHAR(100) NOT NULL UNIQUE,
    broadcast_id INT NOT NULL,
    FOREIGN KEY (broadcast_id) REFERENCES Broadcasts(broadcast_id)
);



