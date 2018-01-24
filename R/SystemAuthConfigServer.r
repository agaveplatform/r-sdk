# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SystemAuthConfigServer Class
#'
#' @field endpoint 
#' @field port 
#' @field protocol 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SystemAuthConfigServer <- R6::R6Class(
  'SystemAuthConfigServer',
  public = list(
    `endpoint` = NULL,
    `port` = NULL,
    `protocol` = NULL,
    initialize = function(`endpoint`, `port`, `protocol`){
      if (!missing(`endpoint`)) {
        stopifnot(is.character(`endpoint`), length(`endpoint`) == 1)
        self$`endpoint` <- `endpoint`
      }
      if (!missing(`port`)) {
        stopifnot(is.numeric(`port`), length(`port`) == 1)
        self$`port` <- `port`
      }
      if (!missing(`protocol`)) {
        stopifnot(R6::is.R6(`protocol`))
        self$`protocol` <- `protocol`
      }
    },
    toJSON = function() {
      SystemAuthConfigServerObject <- list()
      if (!is.null(self$`endpoint`)) {
        SystemAuthConfigServerObject[['endpoint']] <- self$`endpoint`
      }
      if (!is.null(self$`port`)) {
        SystemAuthConfigServerObject[['port']] <- self$`port`
      }
      if (!is.null(self$`protocol`)) {
        SystemAuthConfigServerObject[['protocol']] <- self$`protocol`$toJSON()
      }

      SystemAuthConfigServerObject
    },
    fromJSON = function(SystemAuthConfigServerJson) {
      SystemAuthConfigServerObject <- jsonlite::fromJSON(SystemAuthConfigServerJson)
      if (!is.null(SystemAuthConfigServerObject$`endpoint`)) {
        self$`endpoint` <- SystemAuthConfigServerObject$`endpoint`
      }
      if (!is.null(SystemAuthConfigServerObject$`port`)) {
        self$`port` <- SystemAuthConfigServerObject$`port`
      }
      if (!is.null(SystemAuthConfigServerObject$`protocol`)) {
        protocolObject <- SystemAuthConfigServerProtocolType$new()
        protocolObject$fromJSON(jsonlite::toJSON(SystemAuthConfigServerObject$protocol, auto_unbox = TRUE))
        self$`protocol` <- protocolObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "endpoint": %s,
           "port": %d,
           "protocol": %s
        }',
        self$`endpoint`,
        self$`port`,
        self$`protocol`$toJSON()
      )
    },
    fromJSONString = function(SystemAuthConfigServerJson) {
      SystemAuthConfigServerObject <- jsonlite::fromJSON(SystemAuthConfigServerJson)
      self$`endpoint` <- SystemAuthConfigServerObject$`endpoint`
      self$`port` <- SystemAuthConfigServerObject$`port`
      SystemAuthConfigServerProtocolTypeObject -> SystemAuthConfigServerProtocolType$new()
      self$`protocol` <- SystemAuthConfigServerProtocolTypeObject$fromJSON(jsonlite::toJSON(SystemAuthConfigServerObject$protocol, auto_unbox = TRUE))
    }
  )
)