# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.7
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech

#' @title Chinese operations
#' @description namsor.Chinese
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
#' chinese_name_candidates Identify Chinese name candidates, based on the romanized name ex. Wang Xiaoming
#'
#'
#' chinese_name_candidates_batch Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname), ex. Wang Xiaoming
#'
#'
#' chinese_name_candidates_gender_batch Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname) ex. Wang Xiaoming.
#'
#'
#' chinese_name_gender_candidates Identify Chinese name candidates, based on the romanized name ex. Wang Xiaoming - having a known gender (&#39;male&#39; or &#39;female&#39;)
#'
#'
#' chinese_name_match Return a score for matching Chinese name ex. 王晓明 with a romanized name ex. Wang Xiaoming
#'
#'
#' chinese_name_match_batch Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname), ex. Wang Xiaoming
#'
#'
#' gender_chinese_name Infer the likely gender of a Chinese full name ex. 王晓明
#'
#'
#' gender_chinese_name_batch Infer the likely gender of up to 100 full names ex. 王晓明
#'
#'
#' gender_chinese_name_pinyin Infer the likely gender of a Chinese name in LATIN (Pinyin).
#'
#'
#' gender_chinese_name_pinyin_batch Infer the likely gender of up to 100 Chinese names in LATIN (Pinyin).
#'
#'
#' parse_chinese_name Infer the likely first/last name structure of a name, ex. 王晓明 -&gt; 王(surname) 晓明(given name)
#'
#'
#' parse_chinese_name_batch Infer the likely first/last name structure of a name, ex. 王晓明 -&gt; 王(surname) 晓明(given name).
#'
#'
#' pinyin_chinese_name Romanize the Chinese name to Pinyin, ex. 王晓明 -&gt; Wang (surname) Xiaoming (given name)
#'
#'
#' pinyin_chinese_name_batch Romanize a list of Chinese name to Pinyin, ex. 王晓明 -&gt; Wang (surname) Xiaoming (given name).
#'
#' }
#'
#' @export
ChineseApi <- R6::R6Class(
  'ChineseApi',
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
    chinese_name_candidates = function(chinese_surname_latin, chinese_given_name_latin, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/chineseNameCandidates/{chineseSurnameLatin}/{chineseGivenNameLatin}"
      if (!missing(`chinese_surname_latin`)) {
        urlPath <- gsub(paste0("\\{", "chineseSurnameLatin", "\\}"), `chinese_surname_latin`, urlPath)
      }

      if (!missing(`chinese_given_name_latin`)) {
        urlPath <- gsub(paste0("\\{", "chineseGivenNameLatin", "\\}"), `chinese_given_name_latin`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- RomanizedNameOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    chinese_name_candidates_batch = function(batch_first_last_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_in`)) {
        body <- `batch_first_last_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/chineseNameCandidatesBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchNameMatchCandidatesOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    chinese_name_candidates_gender_batch = function(batch_first_last_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_in`)) {
        body <- `batch_first_last_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/chineseNameCandidatesGenderBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchNameMatchCandidatesOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    chinese_name_gender_candidates = function(chinese_surname_latin, chinese_given_name_latin, known_gender, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/chineseNameGenderCandidates/{chineseSurnameLatin}/{chineseGivenNameLatin}/{knownGender}"
      if (!missing(`chinese_surname_latin`)) {
        urlPath <- gsub(paste0("\\{", "chineseSurnameLatin", "\\}"), `chinese_surname_latin`, urlPath)
      }

      if (!missing(`chinese_given_name_latin`)) {
        urlPath <- gsub(paste0("\\{", "chineseGivenNameLatin", "\\}"), `chinese_given_name_latin`, urlPath)
      }

      if (!missing(`known_gender`)) {
        urlPath <- gsub(paste0("\\{", "knownGender", "\\}"), `known_gender`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- RomanizedNameOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    chinese_name_match = function(chinese_surname_latin, chinese_given_name_latin, chinese_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/chineseNameMatch/{chineseSurnameLatin}/{chineseGivenNameLatin}/{chineseName}"
      if (!missing(`chinese_surname_latin`)) {
        urlPath <- gsub(paste0("\\{", "chineseSurnameLatin", "\\}"), `chinese_surname_latin`, urlPath)
      }

      if (!missing(`chinese_given_name_latin`)) {
        urlPath <- gsub(paste0("\\{", "chineseGivenNameLatin", "\\}"), `chinese_given_name_latin`, urlPath)
      }

      if (!missing(`chinese_name`)) {
        urlPath <- gsub(paste0("\\{", "chineseName", "\\}"), `chinese_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- RomanizedNameOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    chinese_name_match_batch = function(batch_first_last_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_in`)) {
        body <- `batch_first_last_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/chineseNameMatchBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchNameMatchCandidatesOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_chinese_name = function(chinese_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/genderChineseName/{chineseName}"
      if (!missing(`chinese_name`)) {
        urlPath <- gsub(paste0("\\{", "chineseName", "\\}"), `chinese_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- PersonalNameGenderedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    gender_chinese_name_batch = function(batch_personal_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_personal_name_in`)) {
        body <- `batch_personal_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/genderChineseNameBatch"
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
    gender_chinese_name_pinyin = function(chinese_surname_latin, chinese_given_name_latin, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/genderChineseNamePinyin/{chineseSurnameLatin}/{chineseGivenNameLatin}"
      if (!missing(`chinese_surname_latin`)) {
        urlPath <- gsub(paste0("\\{", "chineseSurnameLatin", "\\}"), `chinese_surname_latin`, urlPath)
      }

      if (!missing(`chinese_given_name_latin`)) {
        urlPath <- gsub(paste0("\\{", "chineseGivenNameLatin", "\\}"), `chinese_given_name_latin`, urlPath)
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
    gender_chinese_name_pinyin_batch = function(batch_first_last_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_in`)) {
        body <- `batch_first_last_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/genderChineseNamePinyinBatch"
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
    parse_chinese_name = function(chinese_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/parseChineseName/{chineseName}"
      if (!missing(`chinese_name`)) {
        urlPath <- gsub(paste0("\\{", "chineseName", "\\}"), `chinese_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- PersonalNameParsedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    parse_chinese_name_batch = function(batch_personal_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_personal_name_in`)) {
        body <- `batch_personal_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/parseChineseNameBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchPersonalNameParsedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    pinyin_chinese_name = function(chinese_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/pinyinChineseName/{chineseName}"
      if (!missing(`chinese_name`)) {
        urlPath <- gsub(paste0("\\{", "chineseName", "\\}"), `chinese_name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- PersonalNameParsedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    pinyin_chinese_name_batch = function(batch_personal_name_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_personal_name_in`)) {
        body <- `batch_personal_name_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/pinyinChineseNameBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchPersonalNameParsedOut$new()
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
