<messageForm id="messageFormTag">
  <form onsubmit={appendMessage} id="messageForm">
    <input id="messageInput" type="text" name="message" placeholder="chat">
    <input id="sendButton" type="submit" value="Send">
  </form>
  <script>
    this.appendMessage = function(e){
      const firebaseRef = firebase.database().ref();
      const name = document.getElementById("messageInput").value;
      firebaseRef.child("Messages").push({
        message: name,
        email: this.opts.user,
      })
    };
  </script>
</messageForm>
