# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApplicationCloneAction Class
#'
#' Clones an existing app for private use.
#'
#' @field action 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationCloneAction <- R6::R6Class(
  'ApplicationCloneAction',
  public = list(
    `action` = NULL,
    initialize = function(`action`){
      if (!missing(`action`)) {
        stopifnot(R6::is.R6(`action`))
        self$`action` <- `action`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      ApplicationCloneActionObject <- list()
      if (!is.null(self$`action`)) {
        ApplicationCloneActionObject[['action']] <- self$`action`$toJSON()
      }
      else {
        ApplicationCloneActionObject[['action']] <- NULL
      }

      ApplicationCloneActionObject
    },
    fromJSON = function(ApplicationCloneActionObject) {
      if (is.character(ApplicationCloneActionObject)) {
        ApplicationCloneActionObject <- jsonlite::fromJSON(ApplicationCloneActionJson)
      }

      if ("result" %in% names(ApplicationCloneActionObject)) {
        ApplicationCloneActionObject <- ApplicationCloneActionObject$result
      }

      if (!is.null(ApplicationCloneActionObject$`action`)) {
        actionObject <- ApplicationActionType$new()
        actionObject$fromJSON(jsonlite::toJSON(ApplicationCloneActionObject$action, auto_unbox = TRUE))
        self$`action` <- actionObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "action": %s
        }',
        self$`action`$toJSON()
      )
    },
    fromJSONString = function(ApplicationCloneActionJson) {
      ApplicationCloneActionObject <- jsonlite::fromJSON(ApplicationCloneActionJson)
      self::fromJSON(ApplicationCloneActionObject)

    }
  )
)
