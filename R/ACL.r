# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ACL Class
#'
#' 
#'
#' @field execute can execute
#' @field read can read
#' @field write can write
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ACL <- R6::R6Class(
  'ACL',
  public = list(
    `execute` = NULL,
    `read` = NULL,
    `write` = NULL,
    initialize = function(`execute`, `read`, `write`){
      if (!missing(`execute`)) {
        self$`execute` <- `execute`
      }
      if (!missing(`read`)) {
        self$`read` <- `read`
      }
      if (!missing(`write`)) {
        self$`write` <- `write`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      ACLObject <- list()
      if (!is.null(self$`execute`)) {
        ACLObject[['execute']] <- self$`execute`
      }
      else {
        ACLObject[['execute']] <- NULL
      }
      if (!is.null(self$`read`)) {
        ACLObject[['read']] <- self$`read`
      }
      else {
        ACLObject[['read']] <- NULL
      }
      if (!is.null(self$`write`)) {
        ACLObject[['write']] <- self$`write`
      }
      else {
        ACLObject[['write']] <- NULL
      }

      ACLObject
    },
    fromJSON = function(ACLObject) {
      if (is.character(ACLObject)) {
        ACLObject <- jsonlite::fromJSON(ACLJson)
      }

      if ("result" %in% names(ACLObject)) {
        ACLObject <- ACLObject$result
      }

      if (!is.null(ACLObject$`execute`)) {
        self$`execute` <- ACLObject$`execute`
      }
      if (!is.null(ACLObject$`read`)) {
        self$`read` <- ACLObject$`read`
      }
      if (!is.null(ACLObject$`write`)) {
        self$`write` <- ACLObject$`write`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "execute": %s,
           "read": %s,
           "write": %s
        }',
        ifelse( is.null(self$`execute`),"null",paste0(c('"', self$`execute`, '"'))),
        ifelse( is.null(self$`read`),"null",paste0(c('"', self$`read`, '"'))),
        ifelse( is.null(self$`write`),"null",paste0(c('"', self$`write`, '"')))
      )
    },
    fromJSONString = function(ACLJson) {
      ACLObject <- jsonlite::fromJSON(ACLJson)
      self::fromJSON(ACLObject)

    }
  )
)
