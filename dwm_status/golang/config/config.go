package config

import "github.com/brianyau0309/dwm_status/block"

// Get is to get config
func Get() block.List {
	blocks := []block.Block{
		//        code    exec           interval
		block.New("\x03", "memory.status", 6),
		block.New("",     "storage.status", 30),
		block.New("\x04", "date.status", 1),
		block.New("\x05", "battery.status", 3),
		block.New("\x06", "kdeconnect.status", 30),
		block.New("\x07", "syncthing.status", 30),
		block.New("\x08", "bluetooth.status", 30),
		block.New("\x09", "notify.status", 30),
		block.New("\x0B", "audio.status", 30),
		block.New("\x0C", "internet.status", 3),
	}
	return block.NewList(blocks)
}
