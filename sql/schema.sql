CREATE TABLE item (
  id int GENERATED ALWAYS AS IDENTITY,
  genre VARCHAR(255),
  author VARCHAR(255),
  source VARCHAR(255),
  label VARCHAR(255),
  publish_date DATE,
  archived BOOLEAN,
  PRIMARY KEY (id)
);

CREATE TABLE genre {
  id int GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255),
  PRIMARY KEY (id)
}

CREATE TABLE music_album {
  id int GENERATED ALWAYS AS IDENTITY,
  on_spotify BOOLEAN,
  publish_date DATE,
  PRIMARY KEY (id),
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genre(id)
}