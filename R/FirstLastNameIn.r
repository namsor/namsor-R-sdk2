# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.5
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' FirstLastNameIn Class
#'
#' @field id 
#' @field firstName 
#' @field lastName 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FirstLastNameIn <- R6::R6Class(
  'FirstLastNameIn',
  public = list(
    `id` = NULL,
    `firstName` = NULL,
    `lastName` = NULL,
    initialize = function(`id`, `firstName`, `lastName`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`firstName`)) {
        stopifnot(is.character(`firstName`), length(`firstName`) == 1)
        self$`firstName` <- `firstName`
      }
      if (!missing(`lastName`)) {
        stopifnot(is.character(`lastName`), length(`lastName`) == 1)
        self$`lastName` <- `lastName`
      }
    },
    toJSON = function() {
      FirstLastNameInObject <- list()
      if (!is.null(self$`id`)) {
        FirstLastNameInObject[['id']] <- self$`id`
      }
      if (!is.null(self$`firstName`)) {
        FirstLastNameInObject[['firstName']] <- self$`firstName`
      }
      if (!is.null(self$`lastName`)) {
        FirstLastNameInObject[['lastName']] <- self$`lastName`
      }

      FirstLastNameInObject
    },
    fromJSON = function(FirstLastNameInJson) {
      FirstLastNameInObject <- jsonlite::fromJSON(FirstLastNameInJson)
      if (!is.null(FirstLastNameInObject$`id`)) {
        self$`id` <- FirstLastNameInObject$`id`
      }
      if (!is.null(FirstLastNameInObject$`firstName`)) {
        self$`firstName` <- FirstLastNameInObject$`firstName`
      }
      if (!is.null(FirstLastNameInObject$`lastName`)) {
        self$`lastName` <- FirstLastNameInObject$`lastName`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "firstName": %s,
           "lastName": %s
        }',
        self$`id`,
        self$`firstName`,
        self$`lastName`
      )
    },
    fromJSONString = function(FirstLastNameInJson) {
      FirstLastNameInObject <- jsonlite::fromJSON(FirstLastNameInJson)
      self$`id` <- FirstLastNameInObject$`id`
      self$`firstName` <- FirstLastNameInObject$`firstName`
      self$`lastName` <- FirstLastNameInObject$`lastName`
    }
  )
)
