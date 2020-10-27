package config

import "../block"

// Get is to get config
func Get() block.List {
	blocks := []block.Block{
    //        code    exec          interval
		block.New("\x01", "status.moc",       0),
		block.New("\x02", "status.wkon",      0),
		block.New("\x03", "status.storage",  30),
		block.New("\x04", "status.battery",  30),
		block.New("\x05", "status.date",      5),
		block.New("\x06", "status.audio",     0),
		block.New("\x07", "status.bluetooth", 0),
		block.New("\x08", "status.notify",    0),
		block.New("\x09", "status.internet", 10),
	}
	return block.NewList(blocks)
}
