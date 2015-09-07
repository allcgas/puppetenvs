node 'hamasta1-virtual-machine' {
    $environment = "production"
    include sudo
    include test
}
