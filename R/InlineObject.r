# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.7
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' InlineObject Class
#'
#' @field stripeToken 
#' @field stripeEmail 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineObject <- R6::R6Class(
  'InlineObject',
  public = list(
    `stripeToken` = NULL,
    `stripeEmail` = NULL,
    initialize = function(`stripeToken`, `stripeEmail`){
      if (!missing(`stripeToken`)) {
        stopifnot(is.character(`stripeToken`), length(`stripeToken`) == 1)
        self$`stripeToken` <- `stripeToken`
      }
      if (!missing(`stripeEmail`)) {
        stopifnot(is.character(`stripeEmail`), length(`stripeEmail`) == 1)
        self$`stripeEmail` <- `stripeEmail`
      }
    },
    toJSON = function() {
      InlineObjectObject <- list()
      if (!is.null(self$`stripeToken`)) {
        InlineObjectObject[['stripeToken']] <- self$`stripeToken`
      }
      if (!is.null(self$`stripeEmail`)) {
        InlineObjectObject[['stripeEmail']] <- self$`stripeEmail`
      }

      InlineObjectObject
    },
    fromJSON = function(InlineObjectJson) {
      InlineObjectObject <- jsonlite::fromJSON(InlineObjectJson)
      if (!is.null(InlineObjectObject$`stripeToken`)) {
        self$`stripeToken` <- InlineObjectObject$`stripeToken`
      }
      if (!is.null(InlineObjectObject$`stripeEmail`)) {
        self$`stripeEmail` <- InlineObjectObject$`stripeEmail`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "stripeToken": %s,
           "stripeEmail": %s
        }',
        self$`stripeToken`,
        self$`stripeEmail`
      )
    },
    fromJSONString = function(InlineObjectJson) {
      InlineObjectObject <- jsonlite::fromJSON(InlineObjectJson)
      self$`stripeToken` <- InlineObjectObject$`stripeToken`
      self$`stripeEmail` <- InlineObjectObject$`stripeEmail`
    }
  )
)
