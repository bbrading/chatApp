<userLogin id="userLoginTag">
  <form onsubmit={createUser}>
    <input id="username" type="text" name="user" placeholder="username">
    <input type="submit" value="Login">
  </form>
  <script>
    this.createUser = function(){
      debugger
      var firebaseRef = firebase.database().ref();
      var name = document.getElementById("username").value;
      firebaseRef.child("User").set(name)
    }
  </script>
</userLogin>
