String filenameFromUrl(String url) {
  return url.substring(url.lastIndexOf('/')+1); 
}