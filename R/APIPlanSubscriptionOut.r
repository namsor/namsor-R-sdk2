# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.6
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' APIPlanSubscriptionOut Class
#'
#' @field apiKey 
#' @field planStarted 
#' @field priorPlanStarted 
#' @field planEnded 
#' @field taxRate 
#' @field planName 
#' @field planBaseFeesKey 
#' @field planStatus 
#' @field planQuota 
#' @field priceUSD 
#' @field priceOverageUSD 
#' @field price 
#' @field priceOverage 
#' @field currency 
#' @field currencyFactor 
#' @field stripeCustomerId 
#' @field stripeStatus 
#' @field stripeSubscription 
#' @field userId 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
APIPlanSubscriptionOut <- R6::R6Class(
  'APIPlanSubscriptionOut',
  public = list(
    `apiKey` = NULL,
    `planStarted` = NULL,
    `priorPlanStarted` = NULL,
    `planEnded` = NULL,
    `taxRate` = NULL,
    `planName` = NULL,
    `planBaseFeesKey` = NULL,
    `planStatus` = NULL,
    `planQuota` = NULL,
    `priceUSD` = NULL,
    `priceOverageUSD` = NULL,
    `price` = NULL,
    `priceOverage` = NULL,
    `currency` = NULL,
    `currencyFactor` = NULL,
    `stripeCustomerId` = NULL,
    `stripeStatus` = NULL,
    `stripeSubscription` = NULL,
    `userId` = NULL,
    initialize = function(`apiKey`, `planStarted`, `priorPlanStarted`, `planEnded`, `taxRate`, `planName`, `planBaseFeesKey`, `planStatus`, `planQuota`, `priceUSD`, `priceOverageUSD`, `price`, `priceOverage`, `currency`, `currencyFactor`, `stripeCustomerId`, `stripeStatus`, `stripeSubscription`, `userId`){
      if (!missing(`apiKey`)) {
        stopifnot(is.character(`apiKey`), length(`apiKey`) == 1)
        self$`apiKey` <- `apiKey`
      }
      if (!missing(`planStarted`)) {
        stopifnot(is.numeric(`planStarted`), length(`planStarted`) == 1)
        self$`planStarted` <- `planStarted`
      }
      if (!missing(`priorPlanStarted`)) {
        stopifnot(is.numeric(`priorPlanStarted`), length(`priorPlanStarted`) == 1)
        self$`priorPlanStarted` <- `priorPlanStarted`
      }
      if (!missing(`planEnded`)) {
        stopifnot(is.numeric(`planEnded`), length(`planEnded`) == 1)
        self$`planEnded` <- `planEnded`
      }
      if (!missing(`taxRate`)) {
        stopifnot(is.numeric(`taxRate`), length(`taxRate`) == 1)
        self$`taxRate` <- `taxRate`
      }
      if (!missing(`planName`)) {
        stopifnot(is.character(`planName`), length(`planName`) == 1)
        self$`planName` <- `planName`
      }
      if (!missing(`planBaseFeesKey`)) {
        stopifnot(is.character(`planBaseFeesKey`), length(`planBaseFeesKey`) == 1)
        self$`planBaseFeesKey` <- `planBaseFeesKey`
      }
      if (!missing(`planStatus`)) {
        stopifnot(is.character(`planStatus`), length(`planStatus`) == 1)
        self$`planStatus` <- `planStatus`
      }
      if (!missing(`planQuota`)) {
        stopifnot(is.numeric(`planQuota`), length(`planQuota`) == 1)
        self$`planQuota` <- `planQuota`
      }
      if (!missing(`priceUSD`)) {
        stopifnot(is.numeric(`priceUSD`), length(`priceUSD`) == 1)
        self$`priceUSD` <- `priceUSD`
      }
      if (!missing(`priceOverageUSD`)) {
        stopifnot(is.numeric(`priceOverageUSD`), length(`priceOverageUSD`) == 1)
        self$`priceOverageUSD` <- `priceOverageUSD`
      }
      if (!missing(`price`)) {
        stopifnot(is.numeric(`price`), length(`price`) == 1)
        self$`price` <- `price`
      }
      if (!missing(`priceOverage`)) {
        stopifnot(is.numeric(`priceOverage`), length(`priceOverage`) == 1)
        self$`priceOverage` <- `priceOverage`
      }
      if (!missing(`currency`)) {
        stopifnot(is.character(`currency`), length(`currency`) == 1)
        self$`currency` <- `currency`
      }
      if (!missing(`currencyFactor`)) {
        stopifnot(is.numeric(`currencyFactor`), length(`currencyFactor`) == 1)
        self$`currencyFactor` <- `currencyFactor`
      }
      if (!missing(`stripeCustomerId`)) {
        stopifnot(is.character(`stripeCustomerId`), length(`stripeCustomerId`) == 1)
        self$`stripeCustomerId` <- `stripeCustomerId`
      }
      if (!missing(`stripeStatus`)) {
        stopifnot(is.character(`stripeStatus`), length(`stripeStatus`) == 1)
        self$`stripeStatus` <- `stripeStatus`
      }
      if (!missing(`stripeSubscription`)) {
        stopifnot(is.character(`stripeSubscription`), length(`stripeSubscription`) == 1)
        self$`stripeSubscription` <- `stripeSubscription`
      }
      if (!missing(`userId`)) {
        stopifnot(is.character(`userId`), length(`userId`) == 1)
        self$`userId` <- `userId`
      }
    },
    toJSON = function() {
      APIPlanSubscriptionOutObject <- list()
      if (!is.null(self$`apiKey`)) {
        APIPlanSubscriptionOutObject[['apiKey']] <- self$`apiKey`
      }
      if (!is.null(self$`planStarted`)) {
        APIPlanSubscriptionOutObject[['planStarted']] <- self$`planStarted`
      }
      if (!is.null(self$`priorPlanStarted`)) {
        APIPlanSubscriptionOutObject[['priorPlanStarted']] <- self$`priorPlanStarted`
      }
      if (!is.null(self$`planEnded`)) {
        APIPlanSubscriptionOutObject[['planEnded']] <- self$`planEnded`
      }
      if (!is.null(self$`taxRate`)) {
        APIPlanSubscriptionOutObject[['taxRate']] <- self$`taxRate`
      }
      if (!is.null(self$`planName`)) {
        APIPlanSubscriptionOutObject[['planName']] <- self$`planName`
      }
      if (!is.null(self$`planBaseFeesKey`)) {
        APIPlanSubscriptionOutObject[['planBaseFeesKey']] <- self$`planBaseFeesKey`
      }
      if (!is.null(self$`planStatus`)) {
        APIPlanSubscriptionOutObject[['planStatus']] <- self$`planStatus`
      }
      if (!is.null(self$`planQuota`)) {
        APIPlanSubscriptionOutObject[['planQuota']] <- self$`planQuota`
      }
      if (!is.null(self$`priceUSD`)) {
        APIPlanSubscriptionOutObject[['priceUSD']] <- self$`priceUSD`
      }
      if (!is.null(self$`priceOverageUSD`)) {
        APIPlanSubscriptionOutObject[['priceOverageUSD']] <- self$`priceOverageUSD`
      }
      if (!is.null(self$`price`)) {
        APIPlanSubscriptionOutObject[['price']] <- self$`price`
      }
      if (!is.null(self$`priceOverage`)) {
        APIPlanSubscriptionOutObject[['priceOverage']] <- self$`priceOverage`
      }
      if (!is.null(self$`currency`)) {
        APIPlanSubscriptionOutObject[['currency']] <- self$`currency`
      }
      if (!is.null(self$`currencyFactor`)) {
        APIPlanSubscriptionOutObject[['currencyFactor']] <- self$`currencyFactor`
      }
      if (!is.null(self$`stripeCustomerId`)) {
        APIPlanSubscriptionOutObject[['stripeCustomerId']] <- self$`stripeCustomerId`
      }
      if (!is.null(self$`stripeStatus`)) {
        APIPlanSubscriptionOutObject[['stripeStatus']] <- self$`stripeStatus`
      }
      if (!is.null(self$`stripeSubscription`)) {
        APIPlanSubscriptionOutObject[['stripeSubscription']] <- self$`stripeSubscription`
      }
      if (!is.null(self$`userId`)) {
        APIPlanSubscriptionOutObject[['userId']] <- self$`userId`
      }

      APIPlanSubscriptionOutObject
    },
    fromJSON = function(APIPlanSubscriptionOutJson) {
      APIPlanSubscriptionOutObject <- jsonlite::fromJSON(APIPlanSubscriptionOutJson)
      if (!is.null(APIPlanSubscriptionOutObject$`apiKey`)) {
        self$`apiKey` <- APIPlanSubscriptionOutObject$`apiKey`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`planStarted`)) {
        self$`planStarted` <- APIPlanSubscriptionOutObject$`planStarted`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`priorPlanStarted`)) {
        self$`priorPlanStarted` <- APIPlanSubscriptionOutObject$`priorPlanStarted`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`planEnded`)) {
        self$`planEnded` <- APIPlanSubscriptionOutObject$`planEnded`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`taxRate`)) {
        self$`taxRate` <- APIPlanSubscriptionOutObject$`taxRate`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`planName`)) {
        self$`planName` <- APIPlanSubscriptionOutObject$`planName`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`planBaseFeesKey`)) {
        self$`planBaseFeesKey` <- APIPlanSubscriptionOutObject$`planBaseFeesKey`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`planStatus`)) {
        self$`planStatus` <- APIPlanSubscriptionOutObject$`planStatus`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`planQuota`)) {
        self$`planQuota` <- APIPlanSubscriptionOutObject$`planQuota`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`priceUSD`)) {
        self$`priceUSD` <- APIPlanSubscriptionOutObject$`priceUSD`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`priceOverageUSD`)) {
        self$`priceOverageUSD` <- APIPlanSubscriptionOutObject$`priceOverageUSD`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`price`)) {
        self$`price` <- APIPlanSubscriptionOutObject$`price`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`priceOverage`)) {
        self$`priceOverage` <- APIPlanSubscriptionOutObject$`priceOverage`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`currency`)) {
        self$`currency` <- APIPlanSubscriptionOutObject$`currency`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`currencyFactor`)) {
        self$`currencyFactor` <- APIPlanSubscriptionOutObject$`currencyFactor`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`stripeCustomerId`)) {
        self$`stripeCustomerId` <- APIPlanSubscriptionOutObject$`stripeCustomerId`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`stripeStatus`)) {
        self$`stripeStatus` <- APIPlanSubscriptionOutObject$`stripeStatus`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`stripeSubscription`)) {
        self$`stripeSubscription` <- APIPlanSubscriptionOutObject$`stripeSubscription`
      }
      if (!is.null(APIPlanSubscriptionOutObject$`userId`)) {
        self$`userId` <- APIPlanSubscriptionOutObject$`userId`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "apiKey": %s,
           "planStarted": %d,
           "priorPlanStarted": %d,
           "planEnded": %d,
           "taxRate": %d,
           "planName": %s,
           "planBaseFeesKey": %s,
           "planStatus": %s,
           "planQuota": %d,
           "priceUSD": %d,
           "priceOverageUSD": %d,
           "price": %d,
           "priceOverage": %d,
           "currency": %s,
           "currencyFactor": %d,
           "stripeCustomerId": %s,
           "stripeStatus": %s,
           "stripeSubscription": %s,
           "userId": %s
        }',
        self$`apiKey`,
        self$`planStarted`,
        self$`priorPlanStarted`,
        self$`planEnded`,
        self$`taxRate`,
        self$`planName`,
        self$`planBaseFeesKey`,
        self$`planStatus`,
        self$`planQuota`,
        self$`priceUSD`,
        self$`priceOverageUSD`,
        self$`price`,
        self$`priceOverage`,
        self$`currency`,
        self$`currencyFactor`,
        self$`stripeCustomerId`,
        self$`stripeStatus`,
        self$`stripeSubscription`,
        self$`userId`
      )
    },
    fromJSONString = function(APIPlanSubscriptionOutJson) {
      APIPlanSubscriptionOutObject <- jsonlite::fromJSON(APIPlanSubscriptionOutJson)
      self$`apiKey` <- APIPlanSubscriptionOutObject$`apiKey`
      self$`planStarted` <- APIPlanSubscriptionOutObject$`planStarted`
      self$`priorPlanStarted` <- APIPlanSubscriptionOutObject$`priorPlanStarted`
      self$`planEnded` <- APIPlanSubscriptionOutObject$`planEnded`
      self$`taxRate` <- APIPlanSubscriptionOutObject$`taxRate`
      self$`planName` <- APIPlanSubscriptionOutObject$`planName`
      self$`planBaseFeesKey` <- APIPlanSubscriptionOutObject$`planBaseFeesKey`
      self$`planStatus` <- APIPlanSubscriptionOutObject$`planStatus`
      self$`planQuota` <- APIPlanSubscriptionOutObject$`planQuota`
      self$`priceUSD` <- APIPlanSubscriptionOutObject$`priceUSD`
      self$`priceOverageUSD` <- APIPlanSubscriptionOutObject$`priceOverageUSD`
      self$`price` <- APIPlanSubscriptionOutObject$`price`
      self$`priceOverage` <- APIPlanSubscriptionOutObject$`priceOverage`
      self$`currency` <- APIPlanSubscriptionOutObject$`currency`
      self$`currencyFactor` <- APIPlanSubscriptionOutObject$`currencyFactor`
      self$`stripeCustomerId` <- APIPlanSubscriptionOutObject$`stripeCustomerId`
      self$`stripeStatus` <- APIPlanSubscriptionOutObject$`stripeStatus`
      self$`stripeSubscription` <- APIPlanSubscriptionOutObject$`stripeSubscription`
      self$`userId` <- APIPlanSubscriptionOutObject$`userId`
    }
  )
)