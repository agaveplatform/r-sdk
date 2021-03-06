# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Tenant Class
#'
#' @field id uuid of the tenant
#' @field name human readable name of the tenant organization
#' @field baseUrl The base url for all tenant requests. This should always be SSL enabled.
#' @field code The code by which this tenant is known, eg. "agave.prod"
#' @field created When the tenant was created in ISO8601 format
#' @field lastUpdated When the tenant was last updated in ISO8601 format
#' @field contact [rAgave::TenantContact] representing who to contact about tenant related issues
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @seealso [rAgave::TenantContact]
#' @export
Tenant <- R6::R6Class(
  'Tenant',
  public = list(
    `id` = NULL,
    `name` = NULL,
    `baseUrl` = NULL,
    `code` = NULL,
    `created` = NULL,
    `lastUpdated` = NULL,
    `contact` = NULL,
    initialize = function(`id`, `name`, `baseUrl`, `code`, `created`, `lastUpdated`, `contact`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`baseUrl`)) {
        stopifnot(is.character(`baseUrl`), length(`baseUrl`) == 1)
        self$`baseUrl` <- `baseUrl`
      }
      if (!missing(`code`)) {
        stopifnot(is.character(`code`), length(`code`) == 1)
        self$`code` <- `code`
      }
      if (!missing(`created`)) {
        stopifnot(is.character(`created`), length(`created`) == 1)
        self$`created` <- `created`
      }
      if (!missing(`lastUpdated`)) {
        stopifnot(is.character(`lastUpdated`), length(`lastUpdated`) == 1)
        self$`lastUpdated` <- `lastUpdated`
      }
      if (!missing(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
      }
    },
    toJSON = function() {
      TenantObject <- list()
      if (!is.null(self$`id`)) {
        TenantObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        TenantObject[['name']] <- self$`name`
      }
      if (!is.null(self$`baseUrl`)) {
        TenantObject[['baseUrl']] <- self$`baseUrl`
      }
      if (!is.null(self$`code`)) {
        TenantObject[['code']] <- self$`code`
      }
      if (!is.null(self$`created`)) {
        TenantObject[['created']] <- self$`created`
      }
      if (!is.null(self$`lastUpdated`)) {
        TenantObject[['lastUpdated']] <- self$`lastUpdated`
      }
      if (!is.null(self$`contact`)) {
        TenantObject[['contact']] <- self$`contact`$toJSON()
      }

      TenantObject
    },
    fromJSON = function(TenantObject) {
      if  ("result" %in% names(TenantObject)) {
        TenantObject <- TenantObject$result
      }
      if (!is.null(TenantObject$`id`)) {
        self$`id` <- TenantObject$`id`
      }
      if (!is.null(TenantObject$`name`)) {
        self$`name` <- TenantObject$`name`
      }
      if (!is.null(TenantObject$`baseUrl`)) {
        self$`baseUrl` <- TenantObject$`baseUrl`
      }
      if (!is.null(TenantObject$`code`)) {
        self$`code` <- TenantObject$`code`
      }
      if (!is.null(TenantObject$`created`)) {
        self$`created` <- TenantObject$`created`
      }
      if (!is.null(TenantObject$`lastUpdated`)) {
        self$`lastUpdated` <- TenantObject$`lastUpdated`
      }
      if (!is.null(TenantObject$`contact`)) {
        contactObject <- TenantContact$new()
        if (is.list(TenantObject$`contact`)) {
          contactObject$fromJSON(TenantObject$`contact`[0])
        }
        else {
          contactObject$fromJSON(jsonlite::fromJSON(TenantObject$`contact`, auto_unbox = TRUE))
        }
        self$`contact` <- contactObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "name": %s,
           "baseUrl": %s,
           "code": %s,
           "created": %s,
           "lastUpdated": %s,
           "contact": %s
        }',
        self$`id`,
        self$`name`,
        self$`baseUrl`,
        self$`code`,
        self$`created`,
        self$`lastUpdated`,
        self$`contact`$toJSON()
      )
    },
    fromJSONString = function(TenantJson) {
      TenantObject <- jsonlite::fromJSON(TenantJson, simplifyVector = FALSE)
      if  ("result" %in% names(TenantObject)) {
        TenantObject <- TenantObject$result
      }
      self$`id` <- TenantObject$`id`
      self$`name` <- TenantObject$`name`
      self$`baseUrl` <- TenantObject$`baseUrl`
      self$`code` <- TenantObject$`code`
      self$`created` <- TenantObject$`created`
      self$`lastUpdated` <- TenantObject$`lastUpdated`
      if (!is.null(TenantObject$contact) && len(TenantObject$contact) > 0) {
        contactObject <- TenantContact$new()

        if (is.list(TenantObject$`contact`)) {
          contactObject$fromJSON(TenantObject$`contact`[0])
        }
        else {
          contactObject$fromJSON(jsonlite::toJSON(TenantObject$`contact`, auto_unbox = TRUE))
        }
        self$`contact` <- contactObject
      }
    }
  )
)
