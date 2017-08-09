
<messageList id="messageListTag">
  <div id="messageList">
  </div>

  <script>
    var firebaseMessageList = firebase.database().ref("Messages");
    var messageData = firebaseMessageList.on("child_added", function(data){
       var para = document.createElement("P")
       var message = document.createTextNode(data.val())
       debugger
       para.appendChild(message)
       document.getElementById("messageList").appendChild(para)
    });
  </script>
</messageList>
