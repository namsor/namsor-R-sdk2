# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.6
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' SourceMetricsOut Class
#'
#' @field classifierName 
#' @field source 
#' @field aiEstimateTotal 
#' @field aiEstimatePrecision 
#' @field aiEstimateRecall 
#' @field metricTimeStamp 
#' @field aiStartTime 
#' @field aiLearnTotal 
#' @field snapshotDate 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SourceMetricsOut <- R6::R6Class(
  'SourceMetricsOut',
  public = list(
    `classifierName` = NULL,
    `source` = NULL,
    `aiEstimateTotal` = NULL,
    `aiEstimatePrecision` = NULL,
    `aiEstimateRecall` = NULL,
    `metricTimeStamp` = NULL,
    `aiStartTime` = NULL,
    `aiLearnTotal` = NULL,
    `snapshotDate` = NULL,
    initialize = function(`classifierName`, `source`, `aiEstimateTotal`, `aiEstimatePrecision`, `aiEstimateRecall`, `metricTimeStamp`, `aiStartTime`, `aiLearnTotal`, `snapshotDate`){
      if (!missing(`classifierName`)) {
        stopifnot(is.character(`classifierName`), length(`classifierName`) == 1)
        self$`classifierName` <- `classifierName`
      }
      if (!missing(`source`)) {
        stopifnot(R6::is.R6(`source`))
        self$`source` <- `source`
      }
      if (!missing(`aiEstimateTotal`)) {
        stopifnot(is.numeric(`aiEstimateTotal`), length(`aiEstimateTotal`) == 1)
        self$`aiEstimateTotal` <- `aiEstimateTotal`
      }
      if (!missing(`aiEstimatePrecision`)) {
        stopifnot(is.numeric(`aiEstimatePrecision`), length(`aiEstimatePrecision`) == 1)
        self$`aiEstimatePrecision` <- `aiEstimatePrecision`
      }
      if (!missing(`aiEstimateRecall`)) {
        stopifnot(is.numeric(`aiEstimateRecall`), length(`aiEstimateRecall`) == 1)
        self$`aiEstimateRecall` <- `aiEstimateRecall`
      }
      if (!missing(`metricTimeStamp`)) {
        stopifnot(is.numeric(`metricTimeStamp`), length(`metricTimeStamp`) == 1)
        self$`metricTimeStamp` <- `metricTimeStamp`
      }
      if (!missing(`aiStartTime`)) {
        stopifnot(is.numeric(`aiStartTime`), length(`aiStartTime`) == 1)
        self$`aiStartTime` <- `aiStartTime`
      }
      if (!missing(`aiLearnTotal`)) {
        stopifnot(is.numeric(`aiLearnTotal`), length(`aiLearnTotal`) == 1)
        self$`aiLearnTotal` <- `aiLearnTotal`
      }
      if (!missing(`snapshotDate`)) {
        stopifnot(is.numeric(`snapshotDate`), length(`snapshotDate`) == 1)
        self$`snapshotDate` <- `snapshotDate`
      }
    },
    toJSON = function() {
      SourceMetricsOutObject <- list()
      if (!is.null(self$`classifierName`)) {
        SourceMetricsOutObject[['classifierName']] <- self$`classifierName`
      }
      if (!is.null(self$`source`)) {
        SourceMetricsOutObject[['source']] <- self$`source`$toJSON()
      }
      if (!is.null(self$`aiEstimateTotal`)) {
        SourceMetricsOutObject[['aiEstimateTotal']] <- self$`aiEstimateTotal`
      }
      if (!is.null(self$`aiEstimatePrecision`)) {
        SourceMetricsOutObject[['aiEstimatePrecision']] <- self$`aiEstimatePrecision`
      }
      if (!is.null(self$`aiEstimateRecall`)) {
        SourceMetricsOutObject[['aiEstimateRecall']] <- self$`aiEstimateRecall`
      }
      if (!is.null(self$`metricTimeStamp`)) {
        SourceMetricsOutObject[['metricTimeStamp']] <- self$`metricTimeStamp`
      }
      if (!is.null(self$`aiStartTime`)) {
        SourceMetricsOutObject[['aiStartTime']] <- self$`aiStartTime`
      }
      if (!is.null(self$`aiLearnTotal`)) {
        SourceMetricsOutObject[['aiLearnTotal']] <- self$`aiLearnTotal`
      }
      if (!is.null(self$`snapshotDate`)) {
        SourceMetricsOutObject[['snapshotDate']] <- self$`snapshotDate`
      }

      SourceMetricsOutObject
    },
    fromJSON = function(SourceMetricsOutJson) {
      SourceMetricsOutObject <- jsonlite::fromJSON(SourceMetricsOutJson)
      if (!is.null(SourceMetricsOutObject$`classifierName`)) {
        self$`classifierName` <- SourceMetricsOutObject$`classifierName`
      }
      if (!is.null(SourceMetricsOutObject$`source`)) {
        sourceObject <- APIKeyOut$new()
        sourceObject$fromJSON(jsonlite::toJSON(SourceMetricsOutObject$source, auto_unbox = TRUE))
        self$`source` <- sourceObject
      }
      if (!is.null(SourceMetricsOutObject$`aiEstimateTotal`)) {
        self$`aiEstimateTotal` <- SourceMetricsOutObject$`aiEstimateTotal`
      }
      if (!is.null(SourceMetricsOutObject$`aiEstimatePrecision`)) {
        self$`aiEstimatePrecision` <- SourceMetricsOutObject$`aiEstimatePrecision`
      }
      if (!is.null(SourceMetricsOutObject$`aiEstimateRecall`)) {
        self$`aiEstimateRecall` <- SourceMetricsOutObject$`aiEstimateRecall`
      }
      if (!is.null(SourceMetricsOutObject$`metricTimeStamp`)) {
        self$`metricTimeStamp` <- SourceMetricsOutObject$`metricTimeStamp`
      }
      if (!is.null(SourceMetricsOutObject$`aiStartTime`)) {
        self$`aiStartTime` <- SourceMetricsOutObject$`aiStartTime`
      }
      if (!is.null(SourceMetricsOutObject$`aiLearnTotal`)) {
        self$`aiLearnTotal` <- SourceMetricsOutObject$`aiLearnTotal`
      }
      if (!is.null(SourceMetricsOutObject$`snapshotDate`)) {
        self$`snapshotDate` <- SourceMetricsOutObject$`snapshotDate`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "classifierName": %s,
           "source": %s,
           "aiEstimateTotal": %d,
           "aiEstimatePrecision": %d,
           "aiEstimateRecall": %d,
           "metricTimeStamp": %d,
           "aiStartTime": %d,
           "aiLearnTotal": %d,
           "snapshotDate": %d
        }',
        self$`classifierName`,
        self$`source`$toJSON(),
        self$`aiEstimateTotal`,
        self$`aiEstimatePrecision`,
        self$`aiEstimateRecall`,
        self$`metricTimeStamp`,
        self$`aiStartTime`,
        self$`aiLearnTotal`,
        self$`snapshotDate`
      )
    },
    fromJSONString = function(SourceMetricsOutJson) {
      SourceMetricsOutObject <- jsonlite::fromJSON(SourceMetricsOutJson)
      self$`classifierName` <- SourceMetricsOutObject$`classifierName`
      APIKeyOutObject <- APIKeyOut$new()
      self$`source` <- APIKeyOutObject$fromJSON(jsonlite::toJSON(SourceMetricsOutObject$source, auto_unbox = TRUE))
      self$`aiEstimateTotal` <- SourceMetricsOutObject$`aiEstimateTotal`
      self$`aiEstimatePrecision` <- SourceMetricsOutObject$`aiEstimatePrecision`
      self$`aiEstimateRecall` <- SourceMetricsOutObject$`aiEstimateRecall`
      self$`metricTimeStamp` <- SourceMetricsOutObject$`metricTimeStamp`
      self$`aiStartTime` <- SourceMetricsOutObject$`aiStartTime`
      self$`aiLearnTotal` <- SourceMetricsOutObject$`aiLearnTotal`
      self$`snapshotDate` <- SourceMetricsOutObject$`snapshotDate`
    }
  )
)