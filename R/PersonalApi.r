# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.2-beta
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech

#' @title Personal operations
#' @description namsor.Personal
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' country [USES 10 UNITS] Infer the likely country of residence of a personal full name, or one surname. Assumes names as they are in the country of residence OR the country of origin.
#'
#'
#' country_batch [USES 10 UNITS] Infer the likely country of residence of up to 1000 personal full names, or surnames. Assumes names as they are in the country of residence OR the country of origin.
#'
#'
#' diaspora [USES 20 UNITS] Infer the likely ethnicity/diaspora of a personal name, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
#'
#'
#' diaspora_batch [USES 20 UNITS] Infer the likely ethnicity/diaspora of up to 1000 personal names, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
#'
#'
#' gender Infer the likely gender of a name.
#'
#'
#' gender_batch Infer the likely gender of up to 1000 names, detecting automatically the cultural context.
#'
#'
#' gender_full Infer the likely gender of a full name, ex. John H. Smith
#'
#'
#' gender_full_batch Infer the likely gender of up to 1000 full names, detecting automatically the cultural context.
#'
#'
#' gender_full_geo Infer the likely gender of a full name, given a local context (ISO2 country code).
#'
#'
#' gender_full_geo_batch Infer the likely gender of up to 1000 full names, with a given cultural context (country ISO2 code).
#'
#'
#' gender_geo Infer the likely gender of a name, given a local context (ISO2 country code).
#'
#'
#' gender_geo_batch Infer the likely gender of up to 1000 names, each given a local context (ISO2 country code).
#'
#'
#' origin [USES 10 UNITS] Infer the likely country of origin of a personal name. Assumes names as they are in the country of origin. For US, CA, AU, NZ and other melting-pots : use &#39;diaspora&#39; instead.
#'
#'
#' origin_batch [USES 10 UNITS] Infer the likely country of origin of up to 1000 names, detecting automatically the cultural context.
#'
#'
#' parsed_gender_batch Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
#'
#'
#' parsed_gender_geo_batch Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
#'
#'
#' us_race_ethnicity [USES 10 UNITS] Infer a US resident&#39;s likely race/ethnicity according to US Census taxonomy.
#'
#'
#' us_race_ethnicity_batch [USES 10 UNITS] Infer up-to 1000 US resident&#39;s likely race/ethnicity according to US Census taxonomy.
#'
#'
#' us_race_ethnicity_zip5 [USES 10 UNITS] Infer a US resident&#39;s likely race/ethnicity according to US Census taxonomy, using (optional) ZIP5 code info.
#'
#'
#' us_zip_race_ethnicity_batch [USES 10 UNITS] Infer up-to 1000 US resident&#39;s likely race/ethnicity according to US Census taxonomy, with (optional) ZIP code.
#'
#' }
#'
#' @export
PersonalApi <- R6::R6Class(
  'PersonalApi',
  public = list(
    userAgent = "OpenAPI-Generator/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    country = function(personal_name_full, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/country/{personalNameFull}"
      if (!missing(`personal_name_full`)) {
        urlPath <- gsub(paste0("\\{", "personalNameFull", "\\}"), `personal_name_full`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- PersonalNameGeoOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    country_batch = function(batch_personal_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_personal_name_in`)) {
        body <- `batch_personal_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/countryBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchPersonalNameGeoOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    diaspora = function(country_iso2, first_name, last_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/diaspora/{countryIso2}/{firstName}/{lastName}"
      if (!missing(`country_iso2`)) {
        urlPath <- gsub(paste0("\\{", "countryIso2", "\\}"), `country_iso2`, urlPath)
      }

      if (!missing(`first_name`)) {
        urlPath <- gsub(paste0("\\{", "firstName", "\\}"), `first_name`, urlPath)
      }

      if (!missing(`last_name`)) {
        urlPath <- gsub(paste0("\\{", "lastName", "\\}"), `last_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNameDiasporaedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    diaspora_batch = function(batch_first_last_name_geo_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_geo_in`)) {
        body <- `batch_first_last_name_geo_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/diasporaBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNameDiasporaedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender = function(first_name, last_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/gender/{firstName}/{lastName}"
      if (!missing(`first_name`)) {
        urlPath <- gsub(paste0("\\{", "firstName", "\\}"), `first_name`, urlPath)
      }

      if (!missing(`last_name`)) {
        urlPath <- gsub(paste0("\\{", "lastName", "\\}"), `last_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_batch = function(batch_first_last_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_in`)) {
        body <- `batch_first_last_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/genderBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_full = function(full_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/genderFull/{fullName}"
      if (!missing(`full_name`)) {
        urlPath <- gsub(paste0("\\{", "fullName", "\\}"), `full_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_full_batch = function(batch_personal_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_personal_name_in`)) {
        body <- `batch_personal_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/genderFullBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchPersonalNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_full_geo = function(full_name, country_iso2, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/genderFullGeo/{fullName}/{countryIso2}"
      if (!missing(`full_name`)) {
        urlPath <- gsub(paste0("\\{", "fullName", "\\}"), `full_name`, urlPath)
      }

      if (!missing(`country_iso2`)) {
        urlPath <- gsub(paste0("\\{", "countryIso2", "\\}"), `country_iso2`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_full_geo_batch = function(batch_personal_name_geo_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_personal_name_geo_in`)) {
        body <- `batch_personal_name_geo_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/genderFullGeoBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchPersonalNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_geo = function(first_name, last_name, country_iso2, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/genderGeo/{firstName}/{lastName}/{countryIso2}"
      if (!missing(`first_name`)) {
        urlPath <- gsub(paste0("\\{", "firstName", "\\}"), `first_name`, urlPath)
      }

      if (!missing(`last_name`)) {
        urlPath <- gsub(paste0("\\{", "lastName", "\\}"), `last_name`, urlPath)
      }

      if (!missing(`country_iso2`)) {
        urlPath <- gsub(paste0("\\{", "countryIso2", "\\}"), `country_iso2`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_geo_batch = function(batch_first_last_name_geo_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_geo_in`)) {
        body <- `batch_first_last_name_geo_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/genderGeoBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    origin = function(first_name, last_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/origin/{firstName}/{lastName}"
      if (!missing(`first_name`)) {
        urlPath <- gsub(paste0("\\{", "firstName", "\\}"), `first_name`, urlPath)
      }

      if (!missing(`last_name`)) {
        urlPath <- gsub(paste0("\\{", "lastName", "\\}"), `last_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNameOriginedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    origin_batch = function(batch_first_last_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_in`)) {
        body <- `batch_first_last_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/originBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNameOriginedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    parsed_gender_batch = function(batch_parsed_full_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_parsed_full_name_in`)) {
        body <- `batch_parsed_full_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/parsedGenderBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    parsed_gender_geo_batch = function(batch_parsed_full_name_geo_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_parsed_full_name_geo_in`)) {
        body <- `batch_parsed_full_name_geo_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/parsedGenderGeoBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    us_race_ethnicity = function(first_name, last_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/usRaceEthnicity/{firstName}/{lastName}"
      if (!missing(`first_name`)) {
        urlPath <- gsub(paste0("\\{", "firstName", "\\}"), `first_name`, urlPath)
      }

      if (!missing(`last_name`)) {
        urlPath <- gsub(paste0("\\{", "lastName", "\\}"), `last_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNameUSRaceEthnicityOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    us_race_ethnicity_batch = function(batch_first_last_name_geo_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_geo_in`)) {
        body <- `batch_first_last_name_geo_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/usRaceEthnicityBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNameUSRaceEthnicityOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    us_race_ethnicity_zip5 = function(first_name, last_name, zip5_code, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/usRaceEthnicityZIP5/{firstName}/{lastName}/{zip5Code}"
      if (!missing(`first_name`)) {
        urlPath <- gsub(paste0("\\{", "firstName", "\\}"), `first_name`, urlPath)
      }

      if (!missing(`last_name`)) {
        urlPath <- gsub(paste0("\\{", "lastName", "\\}"), `last_name`, urlPath)
      }

      if (!missing(`zip5_code`)) {
        urlPath <- gsub(paste0("\\{", "zip5Code", "\\}"), `zip5_code`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNameUSRaceEthnicityOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    us_zip_race_ethnicity_batch = function(batch_first_last_name_geo_zipped_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_geo_zipped_in`)) {
        body <- `batch_first_last_name_geo_zipped_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/usZipRaceEthnicityBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNameUSRaceEthnicityOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
