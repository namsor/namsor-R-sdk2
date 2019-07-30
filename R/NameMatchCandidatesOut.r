# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.5
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' NameMatchCandidatesOut Class
#'
#' @field id 
#' @field firstName 
#' @field lastName 
#' @field matchCandidates 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NameMatchCandidatesOut <- R6::R6Class(
  'NameMatchCandidatesOut',
  public = list(
    `id` = NULL,
    `firstName` = NULL,
    `lastName` = NULL,
    `matchCandidates` = NULL,
    initialize = function(`id`, `firstName`, `lastName`, `matchCandidates`){
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
      if (!missing(`matchCandidates`)) {
        stopifnot(is.list(`matchCandidates`), length(`matchCandidates`) != 0)
        lapply(`matchCandidates`, function(x) stopifnot(R6::is.R6(x)))
        self$`matchCandidates` <- `matchCandidates`
      }
    },
    toJSON = function() {
      NameMatchCandidatesOutObject <- list()
      if (!is.null(self$`id`)) {
        NameMatchCandidatesOutObject[['id']] <- self$`id`
      }
      if (!is.null(self$`firstName`)) {
        NameMatchCandidatesOutObject[['firstName']] <- self$`firstName`
      }
      if (!is.null(self$`lastName`)) {
        NameMatchCandidatesOutObject[['lastName']] <- self$`lastName`
      }
      if (!is.null(self$`matchCandidates`)) {
        NameMatchCandidatesOutObject[['matchCandidates']] <- lapply(self$`matchCandidates`, function(x) x$toJSON())
      }

      NameMatchCandidatesOutObject
    },
    fromJSON = function(NameMatchCandidatesOutJson) {
      NameMatchCandidatesOutObject <- jsonlite::fromJSON(NameMatchCandidatesOutJson)
      if (!is.null(NameMatchCandidatesOutObject$`id`)) {
        self$`id` <- NameMatchCandidatesOutObject$`id`
      }
      if (!is.null(NameMatchCandidatesOutObject$`firstName`)) {
        self$`firstName` <- NameMatchCandidatesOutObject$`firstName`
      }
      if (!is.null(NameMatchCandidatesOutObject$`lastName`)) {
        self$`lastName` <- NameMatchCandidatesOutObject$`lastName`
      }
      if (!is.null(NameMatchCandidatesOutObject$`matchCandidates`)) {
        self$`matchCandidates` <- lapply(NameMatchCandidatesOutObject$`matchCandidates`, function(x) {
          matchCandidatesObject <- NameMatchCandidateOut$new()
          matchCandidatesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          matchCandidatesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "firstName": %s,
           "lastName": %s,
           "matchCandidates": [%s]
        }',
        self$`id`,
        self$`firstName`,
        self$`lastName`,
        lapply(self$`matchCandidates`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(NameMatchCandidatesOutJson) {
      NameMatchCandidatesOutObject <- jsonlite::fromJSON(NameMatchCandidatesOutJson)
      self$`id` <- NameMatchCandidatesOutObject$`id`
      self$`firstName` <- NameMatchCandidatesOutObject$`firstName`
      self$`lastName` <- NameMatchCandidatesOutObject$`lastName`
      self$`matchCandidates` <- lapply(NameMatchCandidatesOutObject$`matchCandidates`, function(x) NameMatchCandidateOut$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
