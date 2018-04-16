#' Wrap an ID of a Shiny input in a call to `ns("")`
#'
#' Call this addin after selecting the ID of an input in your source code. The
#' addin automatically adds quotes so do not select the quotes. The functionality
#' is currently extremely limited and only works for a very narrow usecase
#' (because this is all I needed and wanted to get it done in 5 minutes).
#'
#' @export
namespace_id_addin <- function() {
  context <- rstudioapi::getSourceEditorContext()
  id <- context$id
  text <- context$selection[[1]]$text
  new_text <- paste0('ns("', context$selection[[1]]$text, '")')
  row <- context$selection[[1]]$range$start[[1]]
  start_col <- context$selection[[1]]$range$start[[2]] - 1
  end_col <- context$selection[[1]]$range$end[[2]] + 1
  new_start <- rstudioapi::document_position(row, start_col)
  new_end <- rstudioapi::document_position(row, end_col)
  rstudioapi::modifyRange(
    id = id, text = new_text,
    location = rstudioapi::document_range(new_start, new_end)
  )
}
