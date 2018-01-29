# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Monitors operations
#' @description swagger.Monitors
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' addMonitoringTasks Add a new monitoring task
#'
#'
#' deleteMonitoringTask Deletes a monitor.
#'
#'
#' forceMonitoringTaskCheck Forces a monitor check to run.
#'
#'
#' getMonitoringTask Retrieve a specific monitor.
#'
#'
#' getMonitoringTaskCheck Retrieve a specific monitor check
#'
#'
#' listMonitoringTaskChecks Retrieve checks for a specific monitor
#'
#'
#' listMonitoringTasks Retrieve Monitor for a specific resource.
#'
#'
#' updateMonitoringTask Updates an existing monitor.
#'
#' }
#'
#' @export
MonitorsApi <- R6::R6Class(
  'MonitorsApi',
  private = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL
  ),
  public = list(
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        private$apiClient <- apiClient
      }
      else {
        private$apiClient <- ApiClient$new()
      }
    },
    addMonitoringTasks = function(body, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`body`)) {
        if (!is.list(`body`)) {
          body <- `body`$toJSON()
        }
      } else {
        body <- NULL
      }

      urlPath <- "/monitors/v2/"
      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- httr::content(resp)
        if ("result" %in% names(jsonResp)) {
          jsonResp <- jsonResp$result
        }
        jsonResp
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }

    },
    deleteMonitoringTask = function(monitorId, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/monitors/v2/{monitorId}"
      if (!missing(`monitorId`)) {
        urlPath <- gsub(paste0("\\{", "monitorId", "\\}"), `monitorId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }

    },
    forceMonitoringTaskCheck = function(monitorId, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/monitors/v2/{monitorId}/checks"
      if (!missing(`monitorId`)) {
        urlPath <- gsub(paste0("\\{", "monitorId", "\\}"), `monitorId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- httr::content(resp)
        if ("result" %in% names(jsonResp)) {
          jsonResp <- jsonResp$result
        }
        jsonResp
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }

    },
    getMonitoringTask = function(monitorId, naked, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/monitors/v2/{monitorId}"
      if (!missing(`monitorId`)) {
        urlPath <- gsub(paste0("\\{", "monitorId", "\\}"), `monitorId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- httr::content(resp)
        if ("result" %in% names(jsonResp)) {
          jsonResp <- jsonResp$result
        }
        jsonResp
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }

    },
    getMonitoringTaskCheck = function(monitorId, checkId, naked, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/monitors/v2/{monitorId}/checks/{checkId}"
      if (!missing(`monitorId`)) {
        urlPath <- gsub(paste0("\\{", "monitorId", "\\}"), `monitorId`, urlPath)
      }

      if (!missing(`checkId`)) {
        urlPath <- gsub(paste0("\\{", "checkId", "\\}"), `checkId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- httr::content(resp)
        if ("result" %in% names(jsonResp)) {
          jsonResp <- jsonResp$result
        }
        jsonResp
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }

    },
    listMonitoringTaskChecks = function(monitorId, naked, startDate, endDate, result, limit, offset, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`startDate`)) {
        queryParams['startDate'] <- startDate
      }

      if (!missing(`endDate`)) {
        queryParams['endDate'] <- endDate
      }

      if (!missing(`result`)) {
        queryParams['result'] <- result
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/monitors/v2/{monitorId}/checks"
      if (!missing(`monitorId`)) {
        urlPath <- gsub(paste0("\\{", "monitorId", "\\}"), `monitorId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- httr::content(resp)
        if ("result" %in% names(jsonResp)) {
          jsonResp <- jsonResp$result
        }
        jsonResp
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }

    },
    listMonitoringTasks = function(naked, target, active, limit, offset, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`target`)) {
        queryParams['target'] <- target
      }

      if (!missing(`active`)) {
        queryParams['active'] <- active
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/monitors/v2/"
      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- httr::content(resp)
        if ("result" %in% names(jsonResp)) {
          jsonResp <- jsonResp$result
        }
        jsonResp
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }

    },
    updateMonitoringTask = function(body, naked, monitorId,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`body`)) {
        if (!is.list(`body`)) {
          body <- `body`$toJSON()
        }
      } else {
        body <- NULL
      }

      urlPath <- "/monitors/v2/{monitorId}"
      if (!missing(`monitorId`)) {
        urlPath <- gsub(paste0("\\{", "monitorId", "\\}"), `monitorId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- httr::content(resp)
        if ("result" %in% names(jsonResp)) {
          jsonResp <- jsonResp$result
        }
        jsonResp
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }

    }
  )
)
