var riot = require("riot")
require("./tags/userLogin.tag")
require("./tags/header.tag")

document.addEventListener("DOMContentLoaded", function(){
  riot.mount("header")
  riot.mount("userLogin")
})
