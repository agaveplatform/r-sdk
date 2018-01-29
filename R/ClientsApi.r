# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Clients operations
#' @description rAgave.Clients
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' add_client 
#'
#'
#' add_client_api_subscription 
#'
#'
#' clear_client_api_subscriptions 
#'
#'
#' delete_client 
#'
#'
#' get_client 
#'
#'
#' list_client_api_subscriptions 
#'
#'
#' list_clients 
#'
#' }
#'
#' @export
ClientsApi <- R6::R6Class(
  'ClientsApi',
  private = list(
    authCache = NULL,
    apiClient = NULL
  ),
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    initialize = function(apiClient, cache) {
      if (!missing(apiClient)) {
        private$apiClient <- apiClient
      }
      else {
        private$apiClient <- ApiClient$new()
      }
      
      if (missing(cache)) {
        cache <- AgaveCache$new()
      }
      
      private$authCache <- cache
    },
    add_client = function(body, updateCache, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      if (missing(updateCache)) {
        updateCache <- TRUE
      }
      else {
        updateCache <- isTRUE(updateCache)
      }
      
      if (!missing(`body`)) {
        if (!is.list(`body`)) {
          body <- `body`$toJSON()
        }
      } else {
        body <- NULL
      }
      
      urlPath <- "/clients/v2/"
      resp <- httr::POST(url = paste0(private$apiClient$basePath, urlPath),
                         queryParams = queryParams,
                         httr::add_headers(private$apiClient$defaultHeaders),
                         body = body,
                         encode = "form",
                         ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- jsonlite::fromJSON(httr::content(resp))
        if ("result" %in% names(jsonResp)) {
          jsonResp <- jsonResp$result
        }
        
        if (updateCache) {
          returnObject <- Client$new()
          result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
          private$authCache$setClient(returnObject)
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
    add_client_api_subscription = function(clientName, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      if (!missing(`body`)) {
        body <- `body`$toJSON()
      } else {
        body <- NULL
      }
      
      urlPath <- "/clients/v2/{clientName}/subscriptions"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }
      
      resp <- httr::POST(url = paste0(private$apiClient$basePath, urlPath),
                         queryParams = queryParams,
                         httr::add_headers(private$apiClient$defaultHeaders),
                         encode = "form",
                         body = body,
                         ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- jsonlite::fromJSON(httr::content(resp))
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
    clear_client_api_subscriptions = function(clientName, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      urlPath <- "/clients/v2/{clientName}/subscriptions"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }
      
      resp <- httr::DELETE(url = paste0(private$apiClient$basePath, urlPath),
                           queryParams = queryParams,
                           httr::add_headers(private$apiClient$defaultHeaders),
                           body = body,
                           ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- jsonlite::fromJSON(httr::content(resp))
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
    delete_client = function(clientName, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      urlPath <- "/clients/v2/{clientName}"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }
      
      resp <- httr::DELETE(url = paste0(private$apiClient$basePath, urlPath),
                           queryParams = queryParams,
                           httr::add_headers(private$apiClient$defaultHeaders),
                           ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- jsonlite::fromJSON(httr::content(resp))
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
    get_client = function(clientName, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      urlPath <- "/clients/v2/{clientName}"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }
      
      resp <- httr::GET(url = paste0(private$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(private$apiClient$defaultHeaders),
                        ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- jsonlite::fromJSON(httr::content(resp))
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
    list_client_api_subscriptions = function(clientName, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }
      
      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }
      
      urlPath <- "/clients/v2/{clientName}/subscriptions"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }
      
      resp <- httr::GET(url = paste0(private$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(private$apiClient$defaultHeaders),
                        ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- jsonlite::fromJSON(httr::content(resp))
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
    list_clients = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      urlPath <- "/clients/v2/"
      resp <- httr::GET(url = paste0(private$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(private$apiClient$defaultHeaders),
                        ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp), auto_unbox=TRUE, null="null", na="null"))
        jsonResp <- jsonlite::fromJSON(httr::content(resp))
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
