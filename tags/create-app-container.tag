<create-app-container>
  <div class="well">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <!-- create app-->
        <form class="form-group" id="form-new-app">
          <h3 class="text-center">Let's create Hoodie App :D</h3>
          <div class="control-group">
            <label class="control-label" for="empty-text">App Name</label>
            <input id="empty-text" type="text" class="form-control from-size" placeholder="Type your app name">
            </div>
            <div class="form-actions">
              <button id="cancel-create" type="button" class="btn btn_cancel pull-right btn-size-move">Cancel</button>
              <button id="choose-create" type="submit" class="btn btn-primary pull-right btn-size-move">create</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <script>
    // STORE REFERENCES TO HTML ELEMENTS
    var $newAppForm = $('form-new-app')
    var $cancelNewAppFormButton = $('#cancel-create')

    $newAppForm.on('submit', function (event){
      event.preventDefault()

      // Create app array for existing apps
      var app = {
        name:$('#empty-text').val()
      }
      if (app.name){
        applist.add(app)

        .then(function (app){
          setRoute(app.id)
        })
      }
    })

    $cancelNewAppFormButton.on('click', function() {
      setroute('')
    })

    //HELPER METHODS
    function setRoute (path) {
      location.hash = '#' + path
    }

    function renderNewAppForm () {
      $body.attr('data-state', 'new-app')
      $('#empty-text').val('')
    }
    </script>
  </create-app-container>
