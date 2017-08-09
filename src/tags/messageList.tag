<messageList id="messageListTag">
  <div id="messageList">
    <p id="newMessage"></p>
  </div>

  <script>
    const paragraph = document.getElementById("newMessage")
    const databaseRefMessage = firebase.database().ref().child("Messages")

    databaseRefMessage.on("child_added", snap => {
      const p = document.createElement("P");
      p.innerText = snap.val().email + ": " + snap.val().message;
      document.getElementById("newMessage").appendChild(p)
    })
  </script>
</messageList>
