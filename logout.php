if ($_GET["argument"]=='logOut'){
    if(session_id() == '') {
        session_start();
    }
    session_unset();
    session_destroy();
    $host  = $_SERVER['HTTP_HOST'];
    $link = "http://localhost/HyresVarlden/index.html";
    echo $link;
}
