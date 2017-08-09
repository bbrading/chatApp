<userLogin id="userLoginTag">
  <div id="loginPage" style="display:block">
    <div>
      <input id="email" class="userInfo" type="email" placeholder="email">
      <input id="password" class="userInfo" type="password" placeholder="password">
    </div>
    <div id="homeButtons">
      <button id="buttonLogin" class="userButton" onclick={signInUser}>Login</button>
      <button id="buttonSignUp" class="userButton" onclick={createUser}>Sign Up</button>
    </div>
  </div>
  <div id="buttonLogOut" style="display:none">
    <button onclick={logOutUser} class="logOutButton">Log Out</button>
  </div>
  <script>
    this.signInUser = function(){
      const email = document.getElementById("email").value
      const password = document.getElementById("password").value
      const auth = firebase.auth();
      const promise = auth.signInWithEmailAndPassword(email, password);
      promise.catch(e => console.log(e.message))
    }

    this.createUser = function(){
      const email = document.getElementById("email").value
      const password = document.getElementById("password").value
      const auth = firebase.auth();
      const promise = auth.createUserWithEmailAndPassword(email, password);
      promise.catch(e => alert(e.message))
    }

    this.logOutUser = function(){
      firebase.auth().signOut()
      location.reload()
    }

    firebase.auth().onAuthStateChanged(firebaseUser => {
      if(firebaseUser) {
        document.getElementById("loginPage").style.display = "none"
        document.getElementById("buttonLogOut").style.display = "block"
        document.getElementById("messageForm").style.display = "block"
        this.opts.save(firebaseUser.email)
      }
      else {
        document.getElementById("loginPage").style.display = "block"
        document.getElementById("buttonLogOut").style.display = "none"
        document.getElementById("messageForm").style.display = "none"
      }
    })
  </script>
</userLogin>
