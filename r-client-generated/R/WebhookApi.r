# DraCor API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 0.83.1
# Contact: fr.fischer@fu-berlin.de
# Generated by: https://github.com/swagger-api/swagger-codegen.git
#' @title Webhook operations
#' @description swagger.Webhook
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
#' github_webhook GitHub Webhook
#'
#' }
#'
#' @export
WebhookApi <- R6::R6Class(
  'WebhookApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    github_webhook = function(user_agent, x_git_hub_delivery, x_git_hub_event, x_hub_signature, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`user_agent`)) {
        headerParams['User-Agent'] <- `user_agent`
      }

      if (!missing(`x_git_hub_delivery`)) {
        headerParams['X-GitHub-Delivery'] <- `x_git_hub_delivery`
      }

      if (!missing(`x_git_hub_event`)) {
        headerParams['X-GitHub-Event'] <- `x_git_hub_event`
      }

      if (!missing(`x_hub_signature`)) {
        headerParams['X-Hub-Signature'] <- `x_hub_signature`
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/webhook/github"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- TODO_OBJECT_MAPPING$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
