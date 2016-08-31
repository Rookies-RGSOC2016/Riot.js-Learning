<app>
  <nav><a each={ data } href="#{ id }"> { title }</a></nav>

  <article>
    <h1>{ page.title || 'Not found' }</h1>
    <p>{ page.body|| 'Specified is not found' }</p>
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
  // this.data = [
  //   {id="", title="appsContainer", body="click the dashbord link above."},
  //   {id="1", title="createAppContainer", body="click the new app link above."},
  //   {id="2", title="detailAppContainer", body="click the apps detail link above."},
  // ]
  // console.log(this.data)
  //
  // this.page = this.data[0]
  //
  // riot.route(function(id){
  //   this.page = this.data.filter(function(r){ return r.id == id})[0] || {}
  //   this.update()
  // })

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
