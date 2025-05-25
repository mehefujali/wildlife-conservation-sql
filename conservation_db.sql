-- Active: 1747802603055@@127.0.0.1@5432@conservation_db
CREATE Table rangers(
  ranger_id SERIAL PRIMARY KEY ,
  name VARCHAR(50) NOT NULL,
  region VARCHAR(100) NOT NULL
)


SELECT  * FROM rangers




CREATE Table species(
  species_id SERIAL PRIMARY KEY,
  common_name VARCHAR(100) NOT NULL,
  scientific_name VARCHAR(50) NOT NULL UNIQUE,
  discovery_date DATE NOT NULL,
  conservation_status  TEXT

)



CREATE Table sightings(
 sighting_id SERIAL PRIMARY KEY,
 ranger_id INTEGER NOT NULL REFERENCES rangers(ranger_id) ON DELETE CASCADE,
 species_id INTEGER NOT NULL REFERENCES species(species_id) ON DELETE CASCADE,
 sighting_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 location TEXT NOT NULL,
 notes TEXT
)



