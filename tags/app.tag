<app if={show}>
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

  //start routing
  this.on('mount', function() {
    riot.route.start(true)
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
