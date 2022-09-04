-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Airbnb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Airbnb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Airbnb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Airbnb` ;


-- Table `Airbnb`.`airbnbtotal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Airbnb`.`airbnbtotal` (
  `id` BIGINT NULL DEFAULT NULL,
  `listing_url` TEXT NULL DEFAULT NULL,
  `scrape_id` BIGINT NULL DEFAULT NULL,
  `last_scraped` TEXT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `host_id` BIGINT NULL DEFAULT NULL,
  `host_url` TEXT NULL DEFAULT NULL,
  `host_name` TEXT NULL DEFAULT NULL,
  `host_since` TEXT NULL DEFAULT NULL,
  `host_location` TEXT NULL DEFAULT NULL,
  `host_acceptance_rate` TEXT NULL DEFAULT NULL,
  `host_is_superhost` TEXT NULL DEFAULT NULL,
  `host_total_listings_count` DOUBLE NULL DEFAULT NULL,
  `host_verifications` TEXT NULL DEFAULT NULL,
  `host_identity_verified` TEXT NULL DEFAULT NULL,
  `neighbourhood` TEXT NULL DEFAULT NULL,
  `neighbourhood_cleansed` TEXT NULL DEFAULT NULL,
  `latitude` DOUBLE NULL DEFAULT NULL,
  `longitude` DOUBLE NULL DEFAULT NULL,
  `property_type` TEXT NULL DEFAULT NULL,
  `room_type` TEXT NULL DEFAULT NULL,
  `accommodates` BIGINT NULL DEFAULT NULL,
  `bathrooms_text` TEXT NULL DEFAULT NULL,
  `bedrooms` DOUBLE NULL DEFAULT NULL,
  `beds` DOUBLE NULL DEFAULT NULL,
  `price` DOUBLE NULL DEFAULT NULL,
  `minimum_nights` BIGINT NULL DEFAULT NULL,
  `maximum_nights` BIGINT NULL DEFAULT NULL,
  `minimum_minimum_nights` DOUBLE NULL DEFAULT NULL,
  `maximum_minimum_nights` DOUBLE NULL DEFAULT NULL,
  `minimum_maximum_nights` DOUBLE NULL DEFAULT NULL,
  `maximum_maximum_nights` DOUBLE NULL DEFAULT NULL,
  `minimum_nights_avg_ntm` DOUBLE NULL DEFAULT NULL,
  `maximum_nights_avg_ntm` DOUBLE NULL DEFAULT NULL,
  `has_availability` TEXT NULL DEFAULT NULL,
  `availability_30` BIGINT NULL DEFAULT NULL,
  `availability_60` BIGINT NULL DEFAULT NULL,
  `availability_90` BIGINT NULL DEFAULT NULL,
  `availability_365` BIGINT NULL DEFAULT NULL,
  `calendar_last_scraped` TEXT NULL DEFAULT NULL,
  `number_of_reviews` BIGINT NULL DEFAULT NULL,
  `number_of_reviews_ltm` BIGINT NULL DEFAULT NULL,
  `number_of_reviews_l30d` BIGINT NULL DEFAULT NULL,
  `first_review` TEXT NULL DEFAULT NULL,
  `last_review` TEXT NULL DEFAULT NULL,
  `review_scores_rating` DOUBLE NULL DEFAULT NULL,
  `review_scores_accuracy` DOUBLE NULL DEFAULT NULL,
  `review_scores_cleanliness` DOUBLE NULL DEFAULT NULL,
  `review_scores_checkin` DOUBLE NULL DEFAULT NULL,
  `review_scores_communication` DOUBLE NULL DEFAULT NULL,
  `review_scores_location` DOUBLE NULL DEFAULT NULL,
  `review_scores_value` DOUBLE NULL DEFAULT NULL,
  `license` TEXT NULL DEFAULT NULL,
  `instant_bookable` TEXT NULL DEFAULT NULL,
  `calculated_host_listings_count` BIGINT NULL DEFAULT NULL,
  `calculated_host_listings_count_entire_homes` BIGINT NULL DEFAULT NULL,
  `reviews_per_month` DOUBLE NULL DEFAULT NULL,
  `sq_meters` BIGINT NULL DEFAULT NULL,
  `price_monthly` DOUBLE NULL DEFAULT NULL,
  `price_sqm_amonth` DOUBLE NULL DEFAULT NULL,
  `last_scraped_month` TEXT NULL DEFAULT NULL,
  `postal_codes` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`postal_codes`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Airbnb`.`postal_codes_mallorca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Airbnb`.`postal_codes_mallorca` (
  `districts` TEXT NULL DEFAULT NULL,
  `province` TEXT NULL DEFAULT NULL,
  `postal_code` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`postal_code`),
  CONSTRAINT `districts_codes`
    FOREIGN KEY (`postal_code`)
    REFERENCES `Airbnb`.`airbnbtotal` (`postal_codes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Airbnb`.`rent_municipios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Airbnb`.`rent_municipios` (
  `postal_codes` VARCHAR(15) NOT NULL,
  `precio_medio_sqm_apartm` TEXT NULL DEFAULT NULL,
  `precio_medio_sqm_casa` TEXT NULL DEFAULT NULL,
  `precio_medio_sqm_alqu` BIGINT NULL DEFAULT NULL,
  `poblacion` DOUBLE NULL DEFAULT NULL,
  `price_sqm_amonth_alqu` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`postal_codes`),
  CONSTRAINT `postal_codes_arbnb`
    FOREIGN KEY (`postal_codes`)
    REFERENCES `Airbnb`.`airbnbtotal` (`postal_codes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `blockbuster` ;

-- -----------------------------------------------------
-- Table `blockbuster`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`actor` (
  `actor_id` BIGINT NULL DEFAULT NULL,
  `first_name` TEXT NULL DEFAULT NULL,
  `last_name` TEXT NULL DEFAULT NULL,
  `last_update` TEXT NULL DEFAULT NULL,
  `complete_name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`category` (
  `category_id` BIGINT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `last_update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`film` (
  `film_id` BIGINT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `release_year` BIGINT NULL DEFAULT NULL,
  `language_id` BIGINT NULL DEFAULT NULL,
  `original_language_id` DOUBLE NULL DEFAULT NULL,
  `rental_duration` BIGINT NULL DEFAULT NULL,
  `rental_rate` DOUBLE NULL DEFAULT NULL,
  `length` BIGINT NULL DEFAULT NULL,
  `replacement_cost` DOUBLE NULL DEFAULT NULL,
  `rating` TEXT NULL DEFAULT NULL,
  `special_features` TEXT NULL DEFAULT NULL,
  `last_update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`inventory` (
  `inventory_id` BIGINT NULL DEFAULT NULL,
  `film_id` BIGINT NULL DEFAULT NULL,
  `store_id` BIGINT NULL DEFAULT NULL,
  `last_update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`language` (
  `language_id` BIGINT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `last_update` DATETIME NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`old_hdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`old_hdd` (
  `first_name` TEXT NULL DEFAULT NULL,
  `last_name` TEXT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `release_year` BIGINT NULL DEFAULT NULL,
  `category_id` BIGINT NULL DEFAULT NULL,
  `complete_name` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `blockbuster`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blockbuster`.`rental` (
  `rental_id` BIGINT NULL DEFAULT NULL,
  `rental_date` TEXT NULL DEFAULT NULL,
  `inventory_id` BIGINT NULL DEFAULT NULL,
  `customer_id` BIGINT NULL DEFAULT NULL,
  `return_date` TEXT NULL DEFAULT NULL,
  `staff_id` BIGINT NULL DEFAULT NULL,
  `last_update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
