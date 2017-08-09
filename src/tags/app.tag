<app>
  <header></header>
  <userLogin save = {save}></userLogin>
  <messageList></messageList>
  <messageForm user={user}></messageForm>
  <script>
    this.save = (user) => {
      this.update({user: user})
    }
  </script>
</app>
