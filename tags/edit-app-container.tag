<edit-app-container>
  <form id="form-update-app">
    <p class="control-group">
      <label class="control-label" for="rename-app">New App Name:</label>
      <input class="form-control" id="rename-app" type="text" placeholder="Rename App here...">
      </p>
      <p>
        <button type="button" class="btn btn-default" id="cancelButton" >Cancel</button>
        <button type="submit" class="btn btn-primary" id="js-change-appname">Apply</button>
      </p>
    </form>
    <script>
    // STORE REFERENCES TO HTML ELEMENTS
    var $editButton = $('#edit-button')

    $editButton.on('click', function(event){
      $body.attr('data-state', 'edit-app')
      var id = $('#name-app').data('id')
      $updateAppForm.on('submit', function (event){
        event.preventDefault
        var changed = $('#rename-app').val()
        var app = {
          id: id, //$('#name-app').data('id'), //can we say just 'id' ?
          name: changed
        }
        if(changed)
        {
          applist.update(app)

          .then(function (app){
            $('#rename-app').text(app.anme)
            $('#folder').text('~Hoodie/'+ app.name)
            setRoute(id)
          })
        }
      })
    })
    </script>
  </edit-app-container>
