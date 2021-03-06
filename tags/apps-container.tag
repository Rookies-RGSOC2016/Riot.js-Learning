<apps-container if={show}>
  <div class="well">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <!--for routing : replace the button with a link-->
        <a id="new-app-btn" href='http://www.google.com' type="button" class="btn btn-lg btn-block btn-primary" onclick="a_onClick"></a>
        New App
        <i class="glyphicon glyphicon-plus-sign pull-right"></i>
      </link>

      <ul class="list-group" id="app-list">
        <!-- New App menu-->
      </ul>
    </div>
  </div>
</div>

<script>
function a_onClick() {
  alert('test : a_onClick');
}
/* global $, applist, location*/

// STORE REFERENCES TO HTML ELEMENTS
var $body = $(document.body)
var $showNewAppFormButton = $('new-app-btn')
var $appList = $('#app-list')

// EVENT HANDLERS
$showNewAppFormButton.on('click',function(){
  setRoute('new')
})

$appList.on('click', 'li', function(event){
  var li = event.currentTarget
  var id = $(li).data('id')
  setRoute(id)
})

function renderAppList () {
  $body.attr('data-state', 'dashboard')
  $appList.empty()
  $appList.findAll()

  .then(function (apps){
    apps.forEach(function (app){
      var html = `
      <li data-id ="${app.id}" class="list-group-item"
      <button type="button" class="btn btn-lg btn-block">
      ${app.name || '-'}
      <i class="glyphicon glyphicon-play-circle"></i>
      </button>    `
    })
  })
}
//routing
var self = this
var hoodieRoute = riot.route.create()

hoodieRoute(function(){
  console.log('route: dashboard')
  self.show = false
  self.update()
  renderAppList()
  return
})

hoodieRoute('/',function(){
  console.log('route: dashboard')
  self.show = true
  self.update()
  renderAppList()
  return
})

</script>
</apps-container>
