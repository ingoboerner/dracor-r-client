# DraCor API
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 0.83.1
# Contact: fr.fischer@fu-berlin.de
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' CorporaBody Class
#'
#' @field name 
#' @field title 
#' @field repository 
#' @field archive 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CorporaBody <- R6::R6Class(
  'CorporaBody',
  public = list(
    `name` = NULL,
    `title` = NULL,
    `repository` = NULL,
    `archive` = NULL,
    initialize = function(`name`, `title`, `repository`, `archive`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`repository`)) {
        stopifnot(is.character(`repository`), length(`repository`) == 1)
        self$`repository` <- `repository`
      }
      if (!missing(`archive`)) {
        stopifnot(is.character(`archive`), length(`archive`) == 1)
        self$`archive` <- `archive`
      }
    },
    toJSON = function() {
      CorporaBodyObject <- list()
      if (!is.null(self$`name`)) {
        CorporaBodyObject[['name']] <- self$`name`
      }
      if (!is.null(self$`title`)) {
        CorporaBodyObject[['title']] <- self$`title`
      }
      if (!is.null(self$`repository`)) {
        CorporaBodyObject[['repository']] <- self$`repository`
      }
      if (!is.null(self$`archive`)) {
        CorporaBodyObject[['archive']] <- self$`archive`
      }

      CorporaBodyObject
    },
    fromJSON = function(CorporaBodyJson) {
      CorporaBodyObject <- jsonlite::fromJSON(CorporaBodyJson)
      if (!is.null(CorporaBodyObject$`name`)) {
        self$`name` <- CorporaBodyObject$`name`
      }
      if (!is.null(CorporaBodyObject$`title`)) {
        self$`title` <- CorporaBodyObject$`title`
      }
      if (!is.null(CorporaBodyObject$`repository`)) {
        self$`repository` <- CorporaBodyObject$`repository`
      }
      if (!is.null(CorporaBodyObject$`archive`)) {
        self$`archive` <- CorporaBodyObject$`archive`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "title": %s,
           "repository": %s,
           "archive": %s
        }',
        self$`name`,
        self$`title`,
        self$`repository`,
        self$`archive`
      )
    },
    fromJSONString = function(CorporaBodyJson) {
      CorporaBodyObject <- jsonlite::fromJSON(CorporaBodyJson)
      self$`name` <- CorporaBodyObject$`name`
      self$`title` <- CorporaBodyObject$`title`
      self$`repository` <- CorporaBodyObject$`repository`
      self$`archive` <- CorporaBodyObject$`archive`
    }
  )
)
