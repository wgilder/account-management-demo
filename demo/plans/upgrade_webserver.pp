plan demo::upgrade_webserver(
#  String[1]  $load_balancer, 
  String[1]  $frontend,
) {

  # process the indicated backend server
  run_task('demo::lb_toggle', $frontend, toggle=>'remove')
  run_task('demo::update_website', $frontend)
  run_task('demo::wsgi', $frontend)
  run_task('demo::lb_toggle', $frontend, toggle=>'add')
}
