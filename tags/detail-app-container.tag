<detail-app-container>
  <div class="row main-nav">
    <div class="col-sm-4">
      <button type="button" id="go-back-btn" class="btn btn-default pull-left">
        <span class="glyphicon glyphicon-arrow-left"></span>
      </button>
    </div>
    <div class="col-sm-4">
      <h3 id="name-app" data-id="" class="text-center"></h3>
    </div>
    <div class="col-sm-4">
      <button id="edit-button" type="button" class="btn btn-default pull-right" >
        <span class="glyphicon glyphicon-pencil"></span>
      </button>
    </div>
  </div><!-- /.main-nav -->

  <div class="well">
    <!-- start button -->
    <button type="button" class="btn btn-default center-block main-button" id='start-button' data-state="">
      <i class="glyphicon glyphicon-play" aria-hidden="true"></i> <span id="button-label">Start</span>
    </button>
    <!-- stop button -->
    <button type="button" class="btn btn-default center-block main-button" id='stop-button' data-state="">
      <i class="glyphicon glyphicon-stop" aria-hidden="true"></i> <span id="button-label">Stop</span>
    </button>
    <!-- main links -->
    <ul class="list-group main-links" id="link-details">
      <li class="list-group-item"><span class="glyphicon glyphicon-folder-open"></span> <a href="#"><span id="folder"></span></a></li>
      <li class="list-group-item"><span class="glyphicon glyphicon-globe"></span><a href="#">http://localhost:6001</a></li>
      <li class="list-group-item"><span class="glyphicon glyphicon-user"></span><a href="#">http://localhost:6001/hoodie/admin</a></li>
    </ul>
  </div>
  <button type="button" id="delete-button" data-id="" class="btn btn-sm center-block">
    <i class="glyphicon glyphicon-trash" aria-hidden="true"></i> <span>Delete</span>
  </button>

  <script>
  // STORE REFERENCES TO HTML ELEMENTS
  var $goBackButton = $('#go-back-btn')
  var $startAppButton = $('#start-button')
  var $stopAppButton = $('#stop-button')
  var $deleteButton = $('#delete-button')
  var $cancelButton = $('#cancelButton')

  $goBackButton.on('click', function(){
    setRoute('')
  })

  $deleteButton.on('click', function (event) {
    event.preventDefault()
    var id = $('#detail-app-container').data('id')
    applist.remove(id)
    .then(function (app) {
      setRoute('')
    })
  })

  // start button
  $startAppButton.on('click', function () {
    var app = {
      id: $('#detail-app-container').data('id')
    }
    applist.start(app)

    .then(function (app) {
      $('#detail-app-container').attr('data-state', 'started')
    })
  })

  // stop button
  $stopAppButton.on('click', function () {
    var app = {
      id: $('#detail-app-container').data('id')
    }
    applist.stop(app)

    .then(function (app) {
      $('#detail-app-container').attr('data-state', 'stopped')
    })
  })

  function renderAppDetail (id) {
    applist.find(id)

    .then(function (app) {
      $('#name-app').html(app.name)
      $('#detail-app-container').attr('data-state', app.state)
      $('#detail-app-container').data('id', app.id)
      $('#name-app').data('id', app.id)
      $('#folder').html('~Hoodie/' + app.name)
      $body.attr('data-state', 'app-detail')
    })
    $('#rename-app').val('')
  }
  </script>
</detail-app-container>
