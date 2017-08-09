var riot = require("riot")
import "riot-hot-reload"

require("./tags/userLogin.tag")
require("./tags/header.tag")
require("./tags/messageForm.tag")
require("./tags/messageList.tag")

document.addEventListener("DOMContentLoaded", function(){
  riot.mount("header")
  riot.mount("userLogin")
  riot.mount("messageForm")
  riot.mount("messageList")
})
