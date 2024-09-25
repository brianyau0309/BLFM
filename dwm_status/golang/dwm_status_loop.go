package main

import "github.com/brianyau0309/dwm_status/config"

func main() {
	statusbar := config.Get()
	statusbar.Loop()
}
