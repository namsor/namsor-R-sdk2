# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.7
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' APIKeyOut Class
#'
#' @field apiKey 
#' @field userId 
#' @field admin 
#' @field vetted 
#' @field learnable 
#' @field anonymized 
#' @field partner 
#' @field striped 
#' @field corporate 
#' @field disabled 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
APIKeyOut <- R6::R6Class(
  'APIKeyOut',
  public = list(
    `apiKey` = NULL,
    `userId` = NULL,
    `admin` = NULL,
    `vetted` = NULL,
    `learnable` = NULL,
    `anonymized` = NULL,
    `partner` = NULL,
    `striped` = NULL,
    `corporate` = NULL,
    `disabled` = NULL,
    initialize = function(`apiKey`, `userId`, `admin`, `vetted`, `learnable`, `anonymized`, `partner`, `striped`, `corporate`, `disabled`){
      if (!missing(`apiKey`)) {
        stopifnot(is.character(`apiKey`), length(`apiKey`) == 1)
        self$`apiKey` <- `apiKey`
      }
      if (!missing(`userId`)) {
        stopifnot(is.character(`userId`), length(`userId`) == 1)
        self$`userId` <- `userId`
      }
      if (!missing(`admin`)) {
        self$`admin` <- `admin`
      }
      if (!missing(`vetted`)) {
        self$`vetted` <- `vetted`
      }
      if (!missing(`learnable`)) {
        self$`learnable` <- `learnable`
      }
      if (!missing(`anonymized`)) {
        self$`anonymized` <- `anonymized`
      }
      if (!missing(`partner`)) {
        self$`partner` <- `partner`
      }
      if (!missing(`striped`)) {
        self$`striped` <- `striped`
      }
      if (!missing(`corporate`)) {
        self$`corporate` <- `corporate`
      }
      if (!missing(`disabled`)) {
        self$`disabled` <- `disabled`
      }
    },
    toJSON = function() {
      APIKeyOutObject <- list()
      if (!is.null(self$`apiKey`)) {
        APIKeyOutObject[['apiKey']] <- self$`apiKey`
      }
      if (!is.null(self$`userId`)) {
        APIKeyOutObject[['userId']] <- self$`userId`
      }
      if (!is.null(self$`admin`)) {
        APIKeyOutObject[['admin']] <- self$`admin`
      }
      if (!is.null(self$`vetted`)) {
        APIKeyOutObject[['vetted']] <- self$`vetted`
      }
      if (!is.null(self$`learnable`)) {
        APIKeyOutObject[['learnable']] <- self$`learnable`
      }
      if (!is.null(self$`anonymized`)) {
        APIKeyOutObject[['anonymized']] <- self$`anonymized`
      }
      if (!is.null(self$`partner`)) {
        APIKeyOutObject[['partner']] <- self$`partner`
      }
      if (!is.null(self$`striped`)) {
        APIKeyOutObject[['striped']] <- self$`striped`
      }
      if (!is.null(self$`corporate`)) {
        APIKeyOutObject[['corporate']] <- self$`corporate`
      }
      if (!is.null(self$`disabled`)) {
        APIKeyOutObject[['disabled']] <- self$`disabled`
      }

      APIKeyOutObject
    },
    fromJSON = function(APIKeyOutJson) {
      APIKeyOutObject <- jsonlite::fromJSON(APIKeyOutJson)
      if (!is.null(APIKeyOutObject$`apiKey`)) {
        self$`apiKey` <- APIKeyOutObject$`apiKey`
      }
      if (!is.null(APIKeyOutObject$`userId`)) {
        self$`userId` <- APIKeyOutObject$`userId`
      }
      if (!is.null(APIKeyOutObject$`admin`)) {
        self$`admin` <- APIKeyOutObject$`admin`
      }
      if (!is.null(APIKeyOutObject$`vetted`)) {
        self$`vetted` <- APIKeyOutObject$`vetted`
      }
      if (!is.null(APIKeyOutObject$`learnable`)) {
        self$`learnable` <- APIKeyOutObject$`learnable`
      }
      if (!is.null(APIKeyOutObject$`anonymized`)) {
        self$`anonymized` <- APIKeyOutObject$`anonymized`
      }
      if (!is.null(APIKeyOutObject$`partner`)) {
        self$`partner` <- APIKeyOutObject$`partner`
      }
      if (!is.null(APIKeyOutObject$`striped`)) {
        self$`striped` <- APIKeyOutObject$`striped`
      }
      if (!is.null(APIKeyOutObject$`corporate`)) {
        self$`corporate` <- APIKeyOutObject$`corporate`
      }
      if (!is.null(APIKeyOutObject$`disabled`)) {
        self$`disabled` <- APIKeyOutObject$`disabled`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "apiKey": %s,
           "userId": %s,
           "admin": %s,
           "vetted": %s,
           "learnable": %s,
           "anonymized": %s,
           "partner": %s,
           "striped": %s,
           "corporate": %s,
           "disabled": %s
        }',
        self$`apiKey`,
        self$`userId`,
        self$`admin`,
        self$`vetted`,
        self$`learnable`,
        self$`anonymized`,
        self$`partner`,
        self$`striped`,
        self$`corporate`,
        self$`disabled`
      )
    },
    fromJSONString = function(APIKeyOutJson) {
      APIKeyOutObject <- jsonlite::fromJSON(APIKeyOutJson)
      self$`apiKey` <- APIKeyOutObject$`apiKey`
      self$`userId` <- APIKeyOutObject$`userId`
      self$`admin` <- APIKeyOutObject$`admin`
      self$`vetted` <- APIKeyOutObject$`vetted`
      self$`learnable` <- APIKeyOutObject$`learnable`
      self$`anonymized` <- APIKeyOutObject$`anonymized`
      self$`partner` <- APIKeyOutObject$`partner`
      self$`striped` <- APIKeyOutObject$`striped`
      self$`corporate` <- APIKeyOutObject$`corporate`
      self$`disabled` <- APIKeyOutObject$`disabled`
    }
  )
)
