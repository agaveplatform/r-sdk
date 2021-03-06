# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApplicationArgumentSemantics Class
#'
#' Describes the semantic definition of this input/output and the filetypes it represents. Multiple ontologies and values are supported. &lt;a href&#x3D;\&quot;http://agaveapi.co/documentation/tutorials/app-management-tutorial/#app-outputs\&quot;&gt;Read more.&lt;/a&gt;
#'
#' @field fileTypes The file types acceptable for this output.
#' @field maxCardinality The maximum number of times this output may appear.
#' @field minCardinality The minimum number of times this output may appear. -1 is unlimited
#' @field ontology 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationArgumentSemantics <- R6::R6Class(
  'ApplicationArgumentSemantics',
  public = list(
    `fileTypes` = NULL,
    `maxCardinality` = NULL,
    `minCardinality` = NULL,
    `ontology` = NULL,
    initialize = function(`fileTypes`, `maxCardinality`, `minCardinality`, `ontology`){
      if (!missing(`fileTypes`)) {
        stopifnot(is.list(`fileTypes`), length(`fileTypes`) != 0)
        lapply(`fileTypes`, function(x) stopifnot(is.character(x)))
        self$`fileTypes` <- `fileTypes`
      }
      if (!missing(`maxCardinality`)) {
        stopifnot(is.numeric(`maxCardinality`), length(`maxCardinality`) == 1)
        self$`maxCardinality` <- `maxCardinality`
      }
      if (!missing(`minCardinality`)) {
        stopifnot(is.numeric(`minCardinality`), length(`minCardinality`) == 1)
        self$`minCardinality` <- `minCardinality`
      }
      if (!missing(`ontology`)) {
        stopifnot(is.list(`ontology`), length(`ontology`) != 0)
        lapply(`ontology`, function(x) stopifnot(is.character(x)))
        self$`ontology` <- `ontology`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      ApplicationArgumentSemanticsObject <- list()
      if (!is.null(self$`fileTypes`)) {
        ApplicationArgumentSemanticsObject[['fileTypes']] <- self$`fileTypes`
      }
      else {
        ApplicationArgumentSemanticsObject[['fileTypes']] <- NULL
      }
      if (!is.null(self$`maxCardinality`)) {
        ApplicationArgumentSemanticsObject[['maxCardinality']] <- self$`maxCardinality`
      }
      else {
        ApplicationArgumentSemanticsObject[['maxCardinality']] <- NULL
      }
      if (!is.null(self$`minCardinality`)) {
        ApplicationArgumentSemanticsObject[['minCardinality']] <- self$`minCardinality`
      }
      else {
        ApplicationArgumentSemanticsObject[['minCardinality']] <- NULL
      }
      if (!is.null(self$`ontology`)) {
        ApplicationArgumentSemanticsObject[['ontology']] <- self$`ontology`
      }
      else {
        ApplicationArgumentSemanticsObject[['ontology']] <- NULL
      }

      ApplicationArgumentSemanticsObject
    },
    fromJSON = function(ApplicationArgumentSemanticsObject) {
      if (is.character(ApplicationArgumentSemanticsObject)) {
        ApplicationArgumentSemanticsObject <- jsonlite::fromJSON(ApplicationArgumentSemanticsJson)
      }

      if ("result" %in% names(ApplicationArgumentSemanticsObject)) {
        ApplicationArgumentSemanticsObject <- ApplicationArgumentSemanticsObject$result
      }

      if (!is.null(ApplicationArgumentSemanticsObject$`fileTypes`)) {
        self$`fileTypes` <- ApplicationArgumentSemanticsObject$`fileTypes`
      }
      if (!is.null(ApplicationArgumentSemanticsObject$`maxCardinality`)) {
        self$`maxCardinality` <- ApplicationArgumentSemanticsObject$`maxCardinality`
      }
      if (!is.null(ApplicationArgumentSemanticsObject$`minCardinality`)) {
        self$`minCardinality` <- ApplicationArgumentSemanticsObject$`minCardinality`
      }
      if (!is.null(ApplicationArgumentSemanticsObject$`ontology`)) {
        self$`ontology` <- ApplicationArgumentSemanticsObject$`ontology`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "fileTypes": [%s],
           "maxCardinality": %d,
           "minCardinality": %d,
           "ontology": [%s]
        }',
        lapply(self$`fileTypes`, function(x) paste(paste0('"', x, '"'), sep=",")),
        ifelse( is.null(self$`maxCardinality`),"null",paste0(c('"', self$`maxCardinality`, '"'))),
        ifelse( is.null(self$`minCardinality`),"null",paste0(c('"', self$`minCardinality`, '"'))),
        lapply(self$`ontology`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(ApplicationArgumentSemanticsJson) {
      ApplicationArgumentSemanticsObject <- jsonlite::fromJSON(ApplicationArgumentSemanticsJson)
      self::fromJSON(ApplicationArgumentSemanticsObject)

    }
  )
)
