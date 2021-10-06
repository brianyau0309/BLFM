package config

import "../block"

// Get is to get config
func Get() block.List {
	blocks := []block.Block{
    //        code    exec          interval
		block.New("\x01", "moc.status",         0),
		block.New("\x02", "wkon.status",        0),
		block.New("",     "memory.status",      6),
		block.New("\x03", "storage.status",    30),
		block.New("\x04", "date.status",        1),
		block.New("\x05", "battery.status",    30),
		block.New("\x06", "keyboard.status",    0),
		block.New("\x07", "kdeconnect.status", 30),
		block.New("\x08", "syncthing.status",  10),
		block.New("\x09", "bluetooth.status",  30),
		block.New("\x0B", "notify.status",      0),
		block.New("\x0C", "audio.status",      30),
		block.New("\x0D", "internet.status",   30),
	}
	return block.NewList(blocks)
}
