<app>
  <button onclick={showHoodieGreet} if={!showHoodie}>show Hoodie greet</button>
  <button onclick={hideHoodieGreet} if={showHoodie}>hide Hoodie greet</button>

  <hello-world greet="Hoodie" if={showHoodie}></hello-world>
  <hello-world greet="Titay"></hello-world>
  <hello-world greet="Hyesoo"></hello-world>
  <hello-world greet="Joe"></hello-world>
  <contact-list></contact-list>

  <script>
  this.showHoodie = false

  showHoodieGreet () {
    this.showHoodie = true
  }
  hideHoodieGreet () {
    this.showHoodie = false
  }
  </script>
</app>
