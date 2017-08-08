<messageForm>
  <form onsubmit={appendMessage}>
    <input id="username" type="text" name="user" placeholder="type message here">
    <input type="submit" value="Send">
  </form>
  <script>
    this.appendMessage = function(){
      debugger
      var firebaseRef = firebase.database().ref();
      var name = document.getElementById("username").value;
      firebaseRef.child("User").set(name)
    }
  </script>
</messageForm>
