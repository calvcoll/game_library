function noParamPost(obj, e) {
  e.preventDefault();
  link = obj.getAttribute("href");
  $.post(link, function(data) { location.reload() });
}
