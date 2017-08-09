var riot = require("riot")

require("./tags/app.tag")
require("./tags/header.tag")
require("./tags/userLogin.tag")
require("./tags/messageForm.tag")
require("./tags/messageList.tag")

document.addEventListener("DOMContentLoaded", function(){
  riot.mount("app")
})
