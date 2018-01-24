# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobStatusType Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobStatusType <- R6::R6Class(
  'JobStatusType',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      JobStatusTypeObject <- list()

      JobStatusTypeObject
    },
    fromJSON = function(JobStatusTypeJson) {
      JobStatusTypeObject <- jsonlite::fromJSON(JobStatusTypeJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(JobStatusTypeJson) {
      JobStatusTypeObject <- jsonlite::fromJSON(JobStatusTypeJson)
    }
  )
)