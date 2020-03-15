# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.9
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' APIClassifierTaxonomyOut Class
#'
#' @field classifierName 
#' @field taxonomyClasses 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
APIClassifierTaxonomyOut <- R6::R6Class(
  'APIClassifierTaxonomyOut',
  public = list(
    `classifierName` = NULL,
    `taxonomyClasses` = NULL,
    initialize = function(`classifierName`, `taxonomyClasses`){
      if (!missing(`classifierName`)) {
        stopifnot(is.character(`classifierName`), length(`classifierName`) == 1)
        self$`classifierName` <- `classifierName`
      }
      if (!missing(`taxonomyClasses`)) {
        stopifnot(is.list(`taxonomyClasses`), length(`taxonomyClasses`) != 0)
        lapply(`taxonomyClasses`, function(x) stopifnot(is.character(x)))
        self$`taxonomyClasses` <- `taxonomyClasses`
      }
    },
    toJSON = function() {
      APIClassifierTaxonomyOutObject <- list()
      if (!is.null(self$`classifierName`)) {
        APIClassifierTaxonomyOutObject[['classifierName']] <- self$`classifierName`
      }
      if (!is.null(self$`taxonomyClasses`)) {
        APIClassifierTaxonomyOutObject[['taxonomyClasses']] <- self$`taxonomyClasses`
      }

      APIClassifierTaxonomyOutObject
    },
    fromJSON = function(APIClassifierTaxonomyOutJson) {
      APIClassifierTaxonomyOutObject <- jsonlite::fromJSON(APIClassifierTaxonomyOutJson)
      if (!is.null(APIClassifierTaxonomyOutObject$`classifierName`)) {
        self$`classifierName` <- APIClassifierTaxonomyOutObject$`classifierName`
      }
      if (!is.null(APIClassifierTaxonomyOutObject$`taxonomyClasses`)) {
        self$`taxonomyClasses` <- APIClassifierTaxonomyOutObject$`taxonomyClasses`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "classifierName": %s,
           "taxonomyClasses": [%s]
        }',
        self$`classifierName`,
        lapply(self$`taxonomyClasses`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(APIClassifierTaxonomyOutJson) {
      APIClassifierTaxonomyOutObject <- jsonlite::fromJSON(APIClassifierTaxonomyOutJson)
      self$`classifierName` <- APIClassifierTaxonomyOutObject$`classifierName`
      self$`taxonomyClasses` <- APIClassifierTaxonomyOutObject$`taxonomyClasses`
    }
  )
)