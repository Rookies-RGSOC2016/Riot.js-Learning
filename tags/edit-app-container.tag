<edit-app-container if={show}>
  <form id="form-update-app">
    <p class="control-group">
      <label class="control-label" for="rename-app">New App Name:</label>
      <input class="form-control" id="rename-app" type="text" placeholder="Rename App here..."/>
    </p>
    <p>
      <button type="button" class="btn btn-default" id="cancelButton" >Cancel</button>
      <button type="submit" class="btn btn-primary" id="js-change-appname">Apply</button>
    </p>
  </form>
  <script>

  // STORE REFERENCES TO HTML ELEMENTS
  var $body = $(document.body)
  var $editButton = $('#edit-button')
  var $updateAppForm = $('#form-update-app')

  $editButton.on('click', function(event){
    var id = $('#name-app').data('id')
    setRoute(id + '/edit')
  })

  $updateAppForm.on('submit', function (event) {
    event.preventDefault()

    var id = $('#edit-app-container').data('id')
    var newName = $('#rename-app').val()
    var app = {
      id: id,
      name: newName
    }
    if (newName) {
      applist.update(app)

      .then(function (app) {
        setRoute(id)
      })
    }
  })

  function renderEditAppForm(id){
    applist.find(id)

    .then(function (app) {
      $body.attr('data-state', 'edit-app')
      $('#rename-app').val(app.name)
      $('#edit-app-container').data('id', app.id)
    })
    $('#rename-app').val('')
  }

  //routing
  var self = this
  var hoodieRoute = riot.route.create()
  
  hoodieRoute('/apps/*/edit',function(id){
    self.id = id
    console.log('route: app detail (id: ${self.id}')
    self.detailAppShow = true
    renderAppDetail(id)
    return
  })

  </script>
</edit-app-container>
