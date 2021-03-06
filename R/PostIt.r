# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PostIt Class
#'
#' 
#'
#' @field created The creation date in ISO 8601 format.
#' @field creator The api user who made the PostIt creation request.
#' @field expires The expiration date in ISO 8601 format.
#' @field internalUsername The username of the internal user attached to this PostIt.
#' @field method The HTTP method to be invoked on the target URL when this PostIt is redeemed
#' @field postit The PostIt nonce.
#' @field remainingUses The number of invocations remaining on this token. 
#' @field url The url that will be invoked when the PostIt is redeemed.
#' @field noauth If true, the provided url will be called without authentication. Default is false
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostIt <- R6::R6Class(
  'PostIt',
  public = list(
    `created` = NULL,
    `creator` = NULL,
    `expires` = NULL,
    `internalUsername` = NULL,
    `method` = NULL,
    `postit` = NULL,
    `remainingUses` = NULL,
    `url` = NULL,
    `noauth` = NULL,
    initialize = function(`created`, `creator`, `expires`, `internalUsername`, `method`, `postit`, `remainingUses`, `url`, `noauth`){
      if (!missing(`created`)) {
        stopifnot(is.character(`created`), length(`created`) == 1)
        self$`created` <- `created`
      }
      if (!missing(`creator`)) {
        stopifnot(is.character(`creator`), length(`creator`) == 1)
        self$`creator` <- `creator`
      }
      if (!missing(`expires`)) {
        stopifnot(is.character(`expires`), length(`expires`) == 1)
        self$`expires` <- `expires`
      }
      if (!missing(`internalUsername`)) {
        stopifnot(is.character(`internalUsername`), length(`internalUsername`) == 1)
        self$`internalUsername` <- `internalUsername`
      }
      if (!missing(`method`)) {
        stopifnot(is.character(`method`), length(`method`) == 1)
        self$`method` <- `method`
      }
      if (!missing(`postit`)) {
        stopifnot(is.character(`postit`), length(`postit`) == 1)
        self$`postit` <- `postit`
      }
      if (!missing(`remainingUses`)) {
        stopifnot(is.numeric(`remainingUses`), length(`remainingUses`) == 1)
        self$`remainingUses` <- `remainingUses`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`noauth`)) {
        self$`noauth` <- `noauth`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      PostItObject <- list()
      if (!is.null(self$`created`)) {
        PostItObject[['created']] <- self$`created`
      }
      else {
        PostItObject[['created']] <- NULL
      }
      if (!is.null(self$`creator`)) {
        PostItObject[['creator']] <- self$`creator`
      }
      else {
        PostItObject[['creator']] <- NULL
      }
      if (!is.null(self$`expires`)) {
        PostItObject[['expires']] <- self$`expires`
      }
      else {
        PostItObject[['expires']] <- NULL
      }
      if (!is.null(self$`internalUsername`)) {
        PostItObject[['internalUsername']] <- self$`internalUsername`
      }
      else {
        PostItObject[['internalUsername']] <- NULL
      }
      if (!is.null(self$`method`)) {
        PostItObject[['method']] <- self$`method`
      }
      else {
        PostItObject[['method']] <- NULL
      }
      if (!is.null(self$`postit`)) {
        PostItObject[['postit']] <- self$`postit`
      }
      else {
        PostItObject[['postit']] <- NULL
      }
      if (!is.null(self$`remainingUses`)) {
        PostItObject[['remainingUses']] <- self$`remainingUses`
      }
      else {
        PostItObject[['remainingUses']] <- NULL
      }
      if (!is.null(self$`url`)) {
        PostItObject[['url']] <- self$`url`
      }
      else {
        PostItObject[['url']] <- NULL
      }
      if (!is.null(self$`noauth`)) {
        PostItObject[['noauth']] <- self$`noauth`
      }
      else {
        PostItObject[['noauth']] <- NULL
      }

      PostItObject
    },
    fromJSON = function(PostItObject) {
      if (is.character(PostItObject)) {
        PostItObject <- jsonlite::fromJSON(PostItJson)
      }

      if ("result" %in% names(PostItObject)) {
        PostItObject <- PostItObject$result
      }

      if (!is.null(PostItObject$`created`)) {
        self$`created` <- PostItObject$`created`
      }
      if (!is.null(PostItObject$`creator`)) {
        self$`creator` <- PostItObject$`creator`
      }
      if (!is.null(PostItObject$`expires`)) {
        self$`expires` <- PostItObject$`expires`
      }
      if (!is.null(PostItObject$`internalUsername`)) {
        self$`internalUsername` <- PostItObject$`internalUsername`
      }
      if (!is.null(PostItObject$`method`)) {
        self$`method` <- PostItObject$`method`
      }
      if (!is.null(PostItObject$`postit`)) {
        self$`postit` <- PostItObject$`postit`
      }
      if (!is.null(PostItObject$`remainingUses`)) {
        self$`remainingUses` <- PostItObject$`remainingUses`
      }
      if (!is.null(PostItObject$`url`)) {
        self$`url` <- PostItObject$`url`
      }
      if (!is.null(PostItObject$`noauth`)) {
        self$`noauth` <- PostItObject$`noauth`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "created": %s,
           "creator": %s,
           "expires": %s,
           "internalUsername": %s,
           "method": %s,
           "postit": %s,
           "remainingUses": %d,
           "url": %s,
           "noauth": %s
        }',
        ifelse( is.null(self$`created`),"null",paste0(c('"', self$`created`, '"'))),
        ifelse( is.null(self$`creator`),"null",paste0(c('"', self$`creator`, '"'))),
        ifelse( is.null(self$`expires`),"null",paste0(c('"', self$`expires`, '"'))),
        ifelse( is.null(self$`internalUsername`),"null",paste0(c('"', self$`internalUsername`, '"'))),
        ifelse( is.null(self$`method`),"null",paste0(c('"', self$`method`, '"'))),
        ifelse( is.null(self$`postit`),"null",paste0(c('"', self$`postit`, '"'))),
        ifelse( is.null(self$`remainingUses`),"null",paste0(c('"', self$`remainingUses`, '"'))),
        ifelse( is.null(self$`url`),"null",paste0(c('"', self$`url`, '"'))),
        ifelse( is.null(self$`noauth`),"null",paste0(c('"', self$`noauth`, '"')))
      )
    },
    fromJSONString = function(PostItJson) {
      PostItObject <- jsonlite::fromJSON(PostItJson)
      self::fromJSON(PostItObject)

    }
  )
)
