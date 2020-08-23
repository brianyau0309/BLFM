package main

import "./config"

func main() {
	statusbar := config.Get()
  statusbar.Loop()
}
