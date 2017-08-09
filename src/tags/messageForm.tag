<messageForm id="messageFormTag">
  <form onsubmit={appendMessage} id="messageForm">
    <input id="messageInput" type="text" name="message" placeholder="chat">
    <input type="submit" value="Send">
  </form>
  <script>
    this.appendMessage = function(){
      var firebaseRef = firebase.database().ref();
      var name = document.getElementById("messageInput").value;
      firebaseRef.child("Messages").push(name)
    }
  </script>
</messageForm>
