<app>
  <div class="container">
    <div class="row main-nav">
      <div class="col-sm-4">
      </div>
      <div class="col-sm-4">
        <p class="text-center welcome">Welcome to Hoodie</p>
      </div>
      <div class="col-sm-4">
      </div>
    </div>

    <apps-container />
    <create-app-container />
    <detail-app-container />
    <edit-app-container />

    <div class="container-fluid">
      <div class="footer">
        <p class="text-center">Hoodie with &nbsp; <span class="glyphicon glyphicon-heart"></span></p>
      </div>
    </div>
  </div>
  <script>
  var self = this

  //routing
  var hoodieRoute = riot.route.create()


  // STORE REFERENCES TO HTML ELEMENTS
  var $body = $(document.body)

  // INIT APP
  // $(document).ready(handleRoute)
  // $(window).on('hashchange', handleRoute)

  //HELPER METHODS
  var self = this
  self.appsShow = false
  self.createAppShow = false
  self.detailAppShow = false
  self.editAppShow = false

  //routing
  var hoodieRoute = riot.route.create()
  //location.hash = '#' + path
  //var path = location.hash.substr(1)

  hoodieRoute('/',function(){
    console.log('route: dashboard')
    self.appsShow = true
    renderAppList()
    return
  })

  hoodieRoute('/new',function(){
    console.log('route: new app form')
    self.createAppShow = true
    renderNewAppForm()
    return
  })

  hoodieRoute('/apps/*',function(id){
    self.id = id
    console.log('route: app detail (id: ${self.id}')
    self.detailAppShow = true
    renderAppDetail(id)
    return
  })

  hoodieRoute('/apps/*/edit',function(id){
    self.id = id
    console.log('route: app detail (id: ${self.id}')
    self.detailAppShow = true
    renderAppDetail(id)
    return
  })

  // function setRoute (path) {
  //   location.hash = '#' + path
  // }
  //
  // function handleRoute () {
  //   var path = location.hash.substr(1)
  //
  //   if(path === ''){
  //     console.log('route: dashboard')
  //     renderAppList()
  //     return
  //   }
  //
  //   if(path === 'new'){
  //     console.log('route: new app form')
  //     renderNewAppForm()
  //     return
  //   }
  //
  //   console.log('route: app detail (id: ${path}')
  //   renderAppDetail(path)
  // }
  </script>
</app>
