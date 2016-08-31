<app>
  <nav><a each={ data } href="#{ id }"> { title }</a></nav>

  <p>
    <a href="#/">Home</a> |
    <a href="#/1">create app</a> |
    <a href="#/2">app detail</a>
  </p>

  <article>
    <h1>{ page.title }</h1>
    <p>{ page.body }</p>
  </article>

  <button onclick={showHoodieGreet} if={!showHoodie}>show Hoodie greet</button>
  <button onclick={hideHoodieGreet} if={showHoodie}>hide Hoodie greet</button>

  <p>{showHoodie}</p>

  <hello-world greet="Hoodie" if={showHoodie}></hello-world>
  <hello-world greet="Titay"></hello-world>
  <hello-world greet="Hyesoo"></hello-world>
  <hello-world greet="Joe"></hello-world>
  <contact-list></contact-list>

  <script>
  var self = this
  this.data = [
    {id: "", title: "appsContainer", body: "click the dashbord link above."},
    {id: "1", title: "createAppContainer", body: "click the new app link above."},
    {id: "2", title: "detailAppContainer", body: "click the apps detail link above."}
  ]

  this.page = this.data[0]

  riot.route(function(id){
    self.page = self.data.filter(function(r){ return r.id == id})[0] || {
      title: 'Not found',
      body: 'Specified is not found'
    }
    self.update()
  })
  riot.route.start(true)

  this.showHoodie = false

  showHoodieGreet () {
    this.showHoodie = true
  }
  hideHoodieGreet () {
    this.showHoodie = false
  }
  </script>
</script>
</app>
