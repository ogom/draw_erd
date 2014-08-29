function check_schema() {
  var schemas = [];

  for (var i = 0, n = document.form_schema.length; i < n; i++) {
    if (document.form_schema.elements[i].checked) {
      schemas.push(document.form_schema.elements[i].name);
    }
  }

  location.href = document.form_schema.action + '?' + schemas.join('&');
}
