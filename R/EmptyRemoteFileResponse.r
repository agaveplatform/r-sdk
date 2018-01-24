# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' EmptyRemoteFileResponse Class
#'
#' @field message 
#' @field result 
#' @field status 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmptyRemoteFileResponse <- R6::R6Class(
  'EmptyRemoteFileResponse',
  public = list(
    `message` = NULL,
    `result` = NULL,
    `status` = NULL,
    initialize = function(`message`, `result`, `status`){
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`result`)) {
        stopifnot(is.character(`result`), length(`result`) == 1)
        self$`result` <- `result`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
    },
    toJSON = function() {
      EmptyRemoteFileResponseObject <- list()
      if (!is.null(self$`message`)) {
        EmptyRemoteFileResponseObject[['message']] <- self$`message`
      }
      if (!is.null(self$`result`)) {
        EmptyRemoteFileResponseObject[['result']] <- self$`result`
      }
      if (!is.null(self$`status`)) {
        EmptyRemoteFileResponseObject[['status']] <- self$`status`
      }

      EmptyRemoteFileResponseObject
    },
    fromJSON = function(EmptyRemoteFileResponseJson) {
      EmptyRemoteFileResponseObject <- jsonlite::fromJSON(EmptyRemoteFileResponseJson)
      if (!is.null(EmptyRemoteFileResponseObject$`message`)) {
        self$`message` <- EmptyRemoteFileResponseObject$`message`
      }
      if (!is.null(EmptyRemoteFileResponseObject$`result`)) {
        self$`result` <- EmptyRemoteFileResponseObject$`result`
      }
      if (!is.null(EmptyRemoteFileResponseObject$`status`)) {
        self$`status` <- EmptyRemoteFileResponseObject$`status`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "result": %s,
           "status": %s
        }',
        self$`message`,
        self$`result`,
        self$`status`
      )
    },
    fromJSONString = function(EmptyRemoteFileResponseJson) {
      EmptyRemoteFileResponseObject <- jsonlite::fromJSON(EmptyRemoteFileResponseJson)
      self$`message` <- EmptyRemoteFileResponseObject$`message`
      self$`result` <- EmptyRemoteFileResponseObject$`result`
      self$`status` <- EmptyRemoteFileResponseObject$`status`
    }
  )
)