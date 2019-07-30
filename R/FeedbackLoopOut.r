# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.5
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' FeedbackLoopOut Class
#'
#' @field feedbackCredits 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeedbackLoopOut <- R6::R6Class(
  'FeedbackLoopOut',
  public = list(
    `feedbackCredits` = NULL,
    initialize = function(`feedbackCredits`){
      if (!missing(`feedbackCredits`)) {
        stopifnot(is.numeric(`feedbackCredits`), length(`feedbackCredits`) == 1)
        self$`feedbackCredits` <- `feedbackCredits`
      }
    },
    toJSON = function() {
      FeedbackLoopOutObject <- list()
      if (!is.null(self$`feedbackCredits`)) {
        FeedbackLoopOutObject[['feedbackCredits']] <- self$`feedbackCredits`
      }

      FeedbackLoopOutObject
    },
    fromJSON = function(FeedbackLoopOutJson) {
      FeedbackLoopOutObject <- jsonlite::fromJSON(FeedbackLoopOutJson)
      if (!is.null(FeedbackLoopOutObject$`feedbackCredits`)) {
        self$`feedbackCredits` <- FeedbackLoopOutObject$`feedbackCredits`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "feedbackCredits": %d
        }',
        self$`feedbackCredits`
      )
    },
    fromJSONString = function(FeedbackLoopOutJson) {
      FeedbackLoopOutObject <- jsonlite::fromJSON(FeedbackLoopOutJson)
      self$`feedbackCredits` <- FeedbackLoopOutObject$`feedbackCredits`
    }
  )
)
