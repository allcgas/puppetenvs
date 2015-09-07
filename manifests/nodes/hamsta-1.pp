node 'hamsta-1' {
    $environment = "production"
    include sudo
    include test
}
