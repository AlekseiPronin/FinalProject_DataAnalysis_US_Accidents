-- Table: public.us_accident_data

-- DROP TABLE public.us_accident_data;

CREATE TABLE IF NOT EXISTS public.us_accident_data
(
    index bigint,
    "Start_Time" timestamp without time zone,
    "Start_Lat" double precision,
    "Start_Lng" double precision,
    "Side" text COLLATE pg_catalog."default",
    "Temperature(F)" double precision,
    "Humidity(%)" double precision,
    "Pressure(in)" double precision,
    "Visibility(mi)" double precision,
    "Wind_Speed(mph)" double precision,
    "Precipitation(in)" double precision,
    "Crossing" boolean,
    "Junction" boolean,
    "Station" boolean,
    "Stop" boolean,
    "Traffic_Signal" boolean,
    "Sunrise_Sunset" text COLLATE pg_catalog."default",
    "Civil_Twilight" text COLLATE pg_catalog."default",
    "Nautical_Twilight" text COLLATE pg_catalog."default",
    "Astronomical_Twilight" text COLLATE pg_catalog."default",
    "Year" bigint,
    "Month" bigint,
    "Day_Number" bigint,
    "Weekday" bigint,
    "Hour" bigint,
    "Clear" boolean,
    "Cloud" boolean,
    "Rain" boolean,
    "Heavy_Rain" boolean,
    "Snow" boolean,
    "Heavy_Snow" boolean,
    "Fog" boolean,
    "Precipitation_NA" bigint,
    "Severity_lvl4" bigint,
    "Street_Freq" double precision,
    "City_Freq" double precision,
    "County_Freq" double precision,
    "Zipcode_Freq" double precision,
    "Airport_Code_Freq" double precision,
    "State_Freq" double precision,
    "Timezone_Freq" double precision
)

TABLESPACE pg_default;

ALTER TABLE public.us_accident_data
    OWNER to postgres;
-- Index: ix_us_accident_data_index

-- DROP INDEX public.ix_us_accident_data_index;

CREATE INDEX ix_us_accident_data_index
    ON public.us_accident_data USING btree
    (index ASC NULLS LAST)
    TABLESPACE pg_default;