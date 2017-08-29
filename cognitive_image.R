# =============================================
# COGNITIVE_IMAGE.R
# =============================================

# =============================================
# Request Parameters
# =============================================
#
#
#

getImage(key, q, n) {
  request_body <- data.frame(id = "1", stringsAsFactors = FALSE)
  request_body_json <- toJSON(list(documents = request_body), auto_unbox = TRUE)
  
  result <- POST("https://api.cognitive.microsoft.com/bing/v5.0/images/search?q=" + as.string(q) + "&count=" + as.string(n),
                 body = request_body_json,
                 add_headers(.headers =
