# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.5
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' ClassifierMetricsOut Class
#'
#' @field learnQueueSize 
#' @field bufferSize 
#' @field preClassifyQueueSize 
#' @field factKeysSize 
#' @field factsLearned 
#' @field classifyDurationsCurrent 
#' @field classifyDurationsSummary 
#' @field learnDurationsCurrent 
#' @field learnDurationsSummary 
#' @field classifierName 
#' @field featuresSize 
#' @field aiVettedEstimateTotal 
#' @field aiVettedEstimatePrecision 
#' @field aiVettedEstimateRecall 
#' @field aiVettedLearnTotal 
#' @field aiNonVettedEstimateTotal 
#' @field aiNonVettedEstimatePrecision 
#' @field aiNonVettedEstimateRecall 
#' @field aiNonVettedLearnTotal 
#' @field metricTimeStamp 
#' @field aiStartTime 
#' @field aiVettedExpectedClassMetrics 
#' @field aiNonVettedExpectedClassMetrics 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClassifierMetricsOut <- R6::R6Class(
  'ClassifierMetricsOut',
  public = list(
    `learnQueueSize` = NULL,
    `bufferSize` = NULL,
    `preClassifyQueueSize` = NULL,
    `factKeysSize` = NULL,
    `factsLearned` = NULL,
    `classifyDurationsCurrent` = NULL,
    `classifyDurationsSummary` = NULL,
    `learnDurationsCurrent` = NULL,
    `learnDurationsSummary` = NULL,
    `classifierName` = NULL,
    `featuresSize` = NULL,
    `aiVettedEstimateTotal` = NULL,
    `aiVettedEstimatePrecision` = NULL,
    `aiVettedEstimateRecall` = NULL,
    `aiVettedLearnTotal` = NULL,
    `aiNonVettedEstimateTotal` = NULL,
    `aiNonVettedEstimatePrecision` = NULL,
    `aiNonVettedEstimateRecall` = NULL,
    `aiNonVettedLearnTotal` = NULL,
    `metricTimeStamp` = NULL,
    `aiStartTime` = NULL,
    `aiVettedExpectedClassMetrics` = NULL,
    `aiNonVettedExpectedClassMetrics` = NULL,
    initialize = function(`learnQueueSize`, `bufferSize`, `preClassifyQueueSize`, `factKeysSize`, `factsLearned`, `classifyDurationsCurrent`, `classifyDurationsSummary`, `learnDurationsCurrent`, `learnDurationsSummary`, `classifierName`, `featuresSize`, `aiVettedEstimateTotal`, `aiVettedEstimatePrecision`, `aiVettedEstimateRecall`, `aiVettedLearnTotal`, `aiNonVettedEstimateTotal`, `aiNonVettedEstimatePrecision`, `aiNonVettedEstimateRecall`, `aiNonVettedLearnTotal`, `metricTimeStamp`, `aiStartTime`, `aiVettedExpectedClassMetrics`, `aiNonVettedExpectedClassMetrics`){
      if (!missing(`learnQueueSize`)) {
        stopifnot(is.numeric(`learnQueueSize`), length(`learnQueueSize`) == 1)
        self$`learnQueueSize` <- `learnQueueSize`
      }
      if (!missing(`bufferSize`)) {
        stopifnot(is.numeric(`bufferSize`), length(`bufferSize`) == 1)
        self$`bufferSize` <- `bufferSize`
      }
      if (!missing(`preClassifyQueueSize`)) {
        stopifnot(is.numeric(`preClassifyQueueSize`), length(`preClassifyQueueSize`) == 1)
        self$`preClassifyQueueSize` <- `preClassifyQueueSize`
      }
      if (!missing(`factKeysSize`)) {
        stopifnot(is.numeric(`factKeysSize`), length(`factKeysSize`) == 1)
        self$`factKeysSize` <- `factKeysSize`
      }
      if (!missing(`factsLearned`)) {
        stopifnot(is.numeric(`factsLearned`), length(`factsLearned`) == 1)
        self$`factsLearned` <- `factsLearned`
      }
      if (!missing(`classifyDurationsCurrent`)) {
        stopifnot(is.numeric(`classifyDurationsCurrent`), length(`classifyDurationsCurrent`) == 1)
        self$`classifyDurationsCurrent` <- `classifyDurationsCurrent`
      }
      if (!missing(`classifyDurationsSummary`)) {
        stopifnot(is.numeric(`classifyDurationsSummary`), length(`classifyDurationsSummary`) == 1)
        self$`classifyDurationsSummary` <- `classifyDurationsSummary`
      }
      if (!missing(`learnDurationsCurrent`)) {
        stopifnot(is.numeric(`learnDurationsCurrent`), length(`learnDurationsCurrent`) == 1)
        self$`learnDurationsCurrent` <- `learnDurationsCurrent`
      }
      if (!missing(`learnDurationsSummary`)) {
        stopifnot(is.numeric(`learnDurationsSummary`), length(`learnDurationsSummary`) == 1)
        self$`learnDurationsSummary` <- `learnDurationsSummary`
      }
      if (!missing(`classifierName`)) {
        stopifnot(is.character(`classifierName`), length(`classifierName`) == 1)
        self$`classifierName` <- `classifierName`
      }
      if (!missing(`featuresSize`)) {
        stopifnot(is.numeric(`featuresSize`), length(`featuresSize`) == 1)
        self$`featuresSize` <- `featuresSize`
      }
      if (!missing(`aiVettedEstimateTotal`)) {
        stopifnot(is.numeric(`aiVettedEstimateTotal`), length(`aiVettedEstimateTotal`) == 1)
        self$`aiVettedEstimateTotal` <- `aiVettedEstimateTotal`
      }
      if (!missing(`aiVettedEstimatePrecision`)) {
        stopifnot(is.numeric(`aiVettedEstimatePrecision`), length(`aiVettedEstimatePrecision`) == 1)
        self$`aiVettedEstimatePrecision` <- `aiVettedEstimatePrecision`
      }
      if (!missing(`aiVettedEstimateRecall`)) {
        stopifnot(is.numeric(`aiVettedEstimateRecall`), length(`aiVettedEstimateRecall`) == 1)
        self$`aiVettedEstimateRecall` <- `aiVettedEstimateRecall`
      }
      if (!missing(`aiVettedLearnTotal`)) {
        stopifnot(is.numeric(`aiVettedLearnTotal`), length(`aiVettedLearnTotal`) == 1)
        self$`aiVettedLearnTotal` <- `aiVettedLearnTotal`
      }
      if (!missing(`aiNonVettedEstimateTotal`)) {
        stopifnot(is.numeric(`aiNonVettedEstimateTotal`), length(`aiNonVettedEstimateTotal`) == 1)
        self$`aiNonVettedEstimateTotal` <- `aiNonVettedEstimateTotal`
      }
      if (!missing(`aiNonVettedEstimatePrecision`)) {
        stopifnot(is.numeric(`aiNonVettedEstimatePrecision`), length(`aiNonVettedEstimatePrecision`) == 1)
        self$`aiNonVettedEstimatePrecision` <- `aiNonVettedEstimatePrecision`
      }
      if (!missing(`aiNonVettedEstimateRecall`)) {
        stopifnot(is.numeric(`aiNonVettedEstimateRecall`), length(`aiNonVettedEstimateRecall`) == 1)
        self$`aiNonVettedEstimateRecall` <- `aiNonVettedEstimateRecall`
      }
      if (!missing(`aiNonVettedLearnTotal`)) {
        stopifnot(is.numeric(`aiNonVettedLearnTotal`), length(`aiNonVettedLearnTotal`) == 1)
        self$`aiNonVettedLearnTotal` <- `aiNonVettedLearnTotal`
      }
      if (!missing(`metricTimeStamp`)) {
        stopifnot(is.numeric(`metricTimeStamp`), length(`metricTimeStamp`) == 1)
        self$`metricTimeStamp` <- `metricTimeStamp`
      }
      if (!missing(`aiStartTime`)) {
        stopifnot(is.numeric(`aiStartTime`), length(`aiStartTime`) == 1)
        self$`aiStartTime` <- `aiStartTime`
      }
      if (!missing(`aiVettedExpectedClassMetrics`)) {
        stopifnot(is.list(`aiVettedExpectedClassMetrics`), length(`aiVettedExpectedClassMetrics`) != 0)
        lapply(`aiVettedExpectedClassMetrics`, function(x) stopifnot(R6::is.R6(x)))
        self$`aiVettedExpectedClassMetrics` <- `aiVettedExpectedClassMetrics`
      }
      if (!missing(`aiNonVettedExpectedClassMetrics`)) {
        stopifnot(is.list(`aiNonVettedExpectedClassMetrics`), length(`aiNonVettedExpectedClassMetrics`) != 0)
        lapply(`aiNonVettedExpectedClassMetrics`, function(x) stopifnot(R6::is.R6(x)))
        self$`aiNonVettedExpectedClassMetrics` <- `aiNonVettedExpectedClassMetrics`
      }
    },
    toJSON = function() {
      ClassifierMetricsOutObject <- list()
      if (!is.null(self$`learnQueueSize`)) {
        ClassifierMetricsOutObject[['learnQueueSize']] <- self$`learnQueueSize`
      }
      if (!is.null(self$`bufferSize`)) {
        ClassifierMetricsOutObject[['bufferSize']] <- self$`bufferSize`
      }
      if (!is.null(self$`preClassifyQueueSize`)) {
        ClassifierMetricsOutObject[['preClassifyQueueSize']] <- self$`preClassifyQueueSize`
      }
      if (!is.null(self$`factKeysSize`)) {
        ClassifierMetricsOutObject[['factKeysSize']] <- self$`factKeysSize`
      }
      if (!is.null(self$`factsLearned`)) {
        ClassifierMetricsOutObject[['factsLearned']] <- self$`factsLearned`
      }
      if (!is.null(self$`classifyDurationsCurrent`)) {
        ClassifierMetricsOutObject[['classifyDurationsCurrent']] <- self$`classifyDurationsCurrent`
      }
      if (!is.null(self$`classifyDurationsSummary`)) {
        ClassifierMetricsOutObject[['classifyDurationsSummary']] <- self$`classifyDurationsSummary`
      }
      if (!is.null(self$`learnDurationsCurrent`)) {
        ClassifierMetricsOutObject[['learnDurationsCurrent']] <- self$`learnDurationsCurrent`
      }
      if (!is.null(self$`learnDurationsSummary`)) {
        ClassifierMetricsOutObject[['learnDurationsSummary']] <- self$`learnDurationsSummary`
      }
      if (!is.null(self$`classifierName`)) {
        ClassifierMetricsOutObject[['classifierName']] <- self$`classifierName`
      }
      if (!is.null(self$`featuresSize`)) {
        ClassifierMetricsOutObject[['featuresSize']] <- self$`featuresSize`
      }
      if (!is.null(self$`aiVettedEstimateTotal`)) {
        ClassifierMetricsOutObject[['aiVettedEstimateTotal']] <- self$`aiVettedEstimateTotal`
      }
      if (!is.null(self$`aiVettedEstimatePrecision`)) {
        ClassifierMetricsOutObject[['aiVettedEstimatePrecision']] <- self$`aiVettedEstimatePrecision`
      }
      if (!is.null(self$`aiVettedEstimateRecall`)) {
        ClassifierMetricsOutObject[['aiVettedEstimateRecall']] <- self$`aiVettedEstimateRecall`
      }
      if (!is.null(self$`aiVettedLearnTotal`)) {
        ClassifierMetricsOutObject[['aiVettedLearnTotal']] <- self$`aiVettedLearnTotal`
      }
      if (!is.null(self$`aiNonVettedEstimateTotal`)) {
        ClassifierMetricsOutObject[['aiNonVettedEstimateTotal']] <- self$`aiNonVettedEstimateTotal`
      }
      if (!is.null(self$`aiNonVettedEstimatePrecision`)) {
        ClassifierMetricsOutObject[['aiNonVettedEstimatePrecision']] <- self$`aiNonVettedEstimatePrecision`
      }
      if (!is.null(self$`aiNonVettedEstimateRecall`)) {
        ClassifierMetricsOutObject[['aiNonVettedEstimateRecall']] <- self$`aiNonVettedEstimateRecall`
      }
      if (!is.null(self$`aiNonVettedLearnTotal`)) {
        ClassifierMetricsOutObject[['aiNonVettedLearnTotal']] <- self$`aiNonVettedLearnTotal`
      }
      if (!is.null(self$`metricTimeStamp`)) {
        ClassifierMetricsOutObject[['metricTimeStamp']] <- self$`metricTimeStamp`
      }
      if (!is.null(self$`aiStartTime`)) {
        ClassifierMetricsOutObject[['aiStartTime']] <- self$`aiStartTime`
      }
      if (!is.null(self$`aiVettedExpectedClassMetrics`)) {
        ClassifierMetricsOutObject[['aiVettedExpectedClassMetrics']] <- lapply(self$`aiVettedExpectedClassMetrics`, function(x) x$toJSON())
      }
      if (!is.null(self$`aiNonVettedExpectedClassMetrics`)) {
        ClassifierMetricsOutObject[['aiNonVettedExpectedClassMetrics']] <- lapply(self$`aiNonVettedExpectedClassMetrics`, function(x) x$toJSON())
      }

      ClassifierMetricsOutObject
    },
    fromJSON = function(ClassifierMetricsOutJson) {
      ClassifierMetricsOutObject <- jsonlite::fromJSON(ClassifierMetricsOutJson)
      if (!is.null(ClassifierMetricsOutObject$`learnQueueSize`)) {
        self$`learnQueueSize` <- ClassifierMetricsOutObject$`learnQueueSize`
      }
      if (!is.null(ClassifierMetricsOutObject$`bufferSize`)) {
        self$`bufferSize` <- ClassifierMetricsOutObject$`bufferSize`
      }
      if (!is.null(ClassifierMetricsOutObject$`preClassifyQueueSize`)) {
        self$`preClassifyQueueSize` <- ClassifierMetricsOutObject$`preClassifyQueueSize`
      }
      if (!is.null(ClassifierMetricsOutObject$`factKeysSize`)) {
        self$`factKeysSize` <- ClassifierMetricsOutObject$`factKeysSize`
      }
      if (!is.null(ClassifierMetricsOutObject$`factsLearned`)) {
        self$`factsLearned` <- ClassifierMetricsOutObject$`factsLearned`
      }
      if (!is.null(ClassifierMetricsOutObject$`classifyDurationsCurrent`)) {
        self$`classifyDurationsCurrent` <- ClassifierMetricsOutObject$`classifyDurationsCurrent`
      }
      if (!is.null(ClassifierMetricsOutObject$`classifyDurationsSummary`)) {
        self$`classifyDurationsSummary` <- ClassifierMetricsOutObject$`classifyDurationsSummary`
      }
      if (!is.null(ClassifierMetricsOutObject$`learnDurationsCurrent`)) {
        self$`learnDurationsCurrent` <- ClassifierMetricsOutObject$`learnDurationsCurrent`
      }
      if (!is.null(ClassifierMetricsOutObject$`learnDurationsSummary`)) {
        self$`learnDurationsSummary` <- ClassifierMetricsOutObject$`learnDurationsSummary`
      }
      if (!is.null(ClassifierMetricsOutObject$`classifierName`)) {
        self$`classifierName` <- ClassifierMetricsOutObject$`classifierName`
      }
      if (!is.null(ClassifierMetricsOutObject$`featuresSize`)) {
        self$`featuresSize` <- ClassifierMetricsOutObject$`featuresSize`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiVettedEstimateTotal`)) {
        self$`aiVettedEstimateTotal` <- ClassifierMetricsOutObject$`aiVettedEstimateTotal`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiVettedEstimatePrecision`)) {
        self$`aiVettedEstimatePrecision` <- ClassifierMetricsOutObject$`aiVettedEstimatePrecision`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiVettedEstimateRecall`)) {
        self$`aiVettedEstimateRecall` <- ClassifierMetricsOutObject$`aiVettedEstimateRecall`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiVettedLearnTotal`)) {
        self$`aiVettedLearnTotal` <- ClassifierMetricsOutObject$`aiVettedLearnTotal`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiNonVettedEstimateTotal`)) {
        self$`aiNonVettedEstimateTotal` <- ClassifierMetricsOutObject$`aiNonVettedEstimateTotal`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiNonVettedEstimatePrecision`)) {
        self$`aiNonVettedEstimatePrecision` <- ClassifierMetricsOutObject$`aiNonVettedEstimatePrecision`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiNonVettedEstimateRecall`)) {
        self$`aiNonVettedEstimateRecall` <- ClassifierMetricsOutObject$`aiNonVettedEstimateRecall`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiNonVettedLearnTotal`)) {
        self$`aiNonVettedLearnTotal` <- ClassifierMetricsOutObject$`aiNonVettedLearnTotal`
      }
      if (!is.null(ClassifierMetricsOutObject$`metricTimeStamp`)) {
        self$`metricTimeStamp` <- ClassifierMetricsOutObject$`metricTimeStamp`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiStartTime`)) {
        self$`aiStartTime` <- ClassifierMetricsOutObject$`aiStartTime`
      }
      if (!is.null(ClassifierMetricsOutObject$`aiVettedExpectedClassMetrics`)) {
        self$`aiVettedExpectedClassMetrics` <- lapply(ClassifierMetricsOutObject$`aiVettedExpectedClassMetrics`, function(x) {
          aiVettedExpectedClassMetricsObject <- ExpectedClassMetricsOut$new()
          aiVettedExpectedClassMetricsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          aiVettedExpectedClassMetricsObject
        })
      }
      if (!is.null(ClassifierMetricsOutObject$`aiNonVettedExpectedClassMetrics`)) {
        self$`aiNonVettedExpectedClassMetrics` <- lapply(ClassifierMetricsOutObject$`aiNonVettedExpectedClassMetrics`, function(x) {
          aiNonVettedExpectedClassMetricsObject <- ExpectedClassMetricsOut$new()
          aiNonVettedExpectedClassMetricsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          aiNonVettedExpectedClassMetricsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "learnQueueSize": %d,
           "bufferSize": %d,
           "preClassifyQueueSize": %d,
           "factKeysSize": %d,
           "factsLearned": %d,
           "classifyDurationsCurrent": %d,
           "classifyDurationsSummary": %d,
           "learnDurationsCurrent": %d,
           "learnDurationsSummary": %d,
           "classifierName": %s,
           "featuresSize": %d,
           "aiVettedEstimateTotal": %d,
           "aiVettedEstimatePrecision": %d,
           "aiVettedEstimateRecall": %d,
           "aiVettedLearnTotal": %d,
           "aiNonVettedEstimateTotal": %d,
           "aiNonVettedEstimatePrecision": %d,
           "aiNonVettedEstimateRecall": %d,
           "aiNonVettedLearnTotal": %d,
           "metricTimeStamp": %d,
           "aiStartTime": %d,
           "aiVettedExpectedClassMetrics": [%s],
           "aiNonVettedExpectedClassMetrics": [%s]
        }',
        self$`learnQueueSize`,
        self$`bufferSize`,
        self$`preClassifyQueueSize`,
        self$`factKeysSize`,
        self$`factsLearned`,
        self$`classifyDurationsCurrent`,
        self$`classifyDurationsSummary`,
        self$`learnDurationsCurrent`,
        self$`learnDurationsSummary`,
        self$`classifierName`,
        self$`featuresSize`,
        self$`aiVettedEstimateTotal`,
        self$`aiVettedEstimatePrecision`,
        self$`aiVettedEstimateRecall`,
        self$`aiVettedLearnTotal`,
        self$`aiNonVettedEstimateTotal`,
        self$`aiNonVettedEstimatePrecision`,
        self$`aiNonVettedEstimateRecall`,
        self$`aiNonVettedLearnTotal`,
        self$`metricTimeStamp`,
        self$`aiStartTime`,
        lapply(self$`aiVettedExpectedClassMetrics`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`aiNonVettedExpectedClassMetrics`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(ClassifierMetricsOutJson) {
      ClassifierMetricsOutObject <- jsonlite::fromJSON(ClassifierMetricsOutJson)
      self$`learnQueueSize` <- ClassifierMetricsOutObject$`learnQueueSize`
      self$`bufferSize` <- ClassifierMetricsOutObject$`bufferSize`
      self$`preClassifyQueueSize` <- ClassifierMetricsOutObject$`preClassifyQueueSize`
      self$`factKeysSize` <- ClassifierMetricsOutObject$`factKeysSize`
      self$`factsLearned` <- ClassifierMetricsOutObject$`factsLearned`
      self$`classifyDurationsCurrent` <- ClassifierMetricsOutObject$`classifyDurationsCurrent`
      self$`classifyDurationsSummary` <- ClassifierMetricsOutObject$`classifyDurationsSummary`
      self$`learnDurationsCurrent` <- ClassifierMetricsOutObject$`learnDurationsCurrent`
      self$`learnDurationsSummary` <- ClassifierMetricsOutObject$`learnDurationsSummary`
      self$`classifierName` <- ClassifierMetricsOutObject$`classifierName`
      self$`featuresSize` <- ClassifierMetricsOutObject$`featuresSize`
      self$`aiVettedEstimateTotal` <- ClassifierMetricsOutObject$`aiVettedEstimateTotal`
      self$`aiVettedEstimatePrecision` <- ClassifierMetricsOutObject$`aiVettedEstimatePrecision`
      self$`aiVettedEstimateRecall` <- ClassifierMetricsOutObject$`aiVettedEstimateRecall`
      self$`aiVettedLearnTotal` <- ClassifierMetricsOutObject$`aiVettedLearnTotal`
      self$`aiNonVettedEstimateTotal` <- ClassifierMetricsOutObject$`aiNonVettedEstimateTotal`
      self$`aiNonVettedEstimatePrecision` <- ClassifierMetricsOutObject$`aiNonVettedEstimatePrecision`
      self$`aiNonVettedEstimateRecall` <- ClassifierMetricsOutObject$`aiNonVettedEstimateRecall`
      self$`aiNonVettedLearnTotal` <- ClassifierMetricsOutObject$`aiNonVettedLearnTotal`
      self$`metricTimeStamp` <- ClassifierMetricsOutObject$`metricTimeStamp`
      self$`aiStartTime` <- ClassifierMetricsOutObject$`aiStartTime`
      self$`aiVettedExpectedClassMetrics` <- lapply(ClassifierMetricsOutObject$`aiVettedExpectedClassMetrics`, function(x) ExpectedClassMetricsOut$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`aiNonVettedExpectedClassMetrics` <- lapply(ClassifierMetricsOutObject$`aiNonVettedExpectedClassMetrics`, function(x) ExpectedClassMetricsOut$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
