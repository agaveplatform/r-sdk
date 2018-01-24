# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' NotificationResponse Class
#'
#' @field message 
#' @field result 
#' @field status 
#' @field version 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationResponse <- R6::R6Class(
  'NotificationResponse',
  public = list(
    `message` = NULL,
    `result` = NULL,
    `status` = NULL,
    `version` = NULL,
    initialize = function(`message`, `result`, `status`, `version`){
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
    },
    toJSON = function() {
      NotificationResponseObject <- list()
      if (!is.null(self$`message`)) {
        NotificationResponseObject[['message']] <- self$`message`
      }
      if (!is.null(self$`result`)) {
        NotificationResponseObject[['result']] <- self$`result`$toJSON()
      }
      if (!is.null(self$`status`)) {
        NotificationResponseObject[['status']] <- self$`status`
      }
      if (!is.null(self$`version`)) {
        NotificationResponseObject[['version']] <- self$`version`
      }

      NotificationResponseObject
    },
    fromJSON = function(NotificationResponseJson) {
      NotificationResponseObject <- jsonlite::fromJSON(NotificationResponseJson)
      if (!is.null(NotificationResponseObject$`message`)) {
        self$`message` <- NotificationResponseObject$`message`
      }
      if (!is.null(NotificationResponseObject$`result`)) {
        resultObject <- Notification$new()
        resultObject$fromJSON(jsonlite::toJSON(NotificationResponseObject$result, auto_unbox = TRUE))
        self$`result` <- resultObject
      }
      if (!is.null(NotificationResponseObject$`status`)) {
        self$`status` <- NotificationResponseObject$`status`
      }
      if (!is.null(NotificationResponseObject$`version`)) {
        self$`version` <- NotificationResponseObject$`version`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "result": %s,
           "status": %s,
           "version": %s
        }',
        self$`message`,
        self$`result`$toJSON(),
        self$`status`,
        self$`version`
      )
    },
    fromJSONString = function(NotificationResponseJson) {
      NotificationResponseObject <- jsonlite::fromJSON(NotificationResponseJson)
      self$`message` <- NotificationResponseObject$`message`
      NotificationObject -> Notification$new()
      self$`result` <- NotificationObject$fromJSON(jsonlite::toJSON(NotificationResponseObject$result, auto_unbox = TRUE))
      self$`status` <- NotificationResponseObject$`status`
      self$`version` <- NotificationResponseObject$`version`
    }
  )
)