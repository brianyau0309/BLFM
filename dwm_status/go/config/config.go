package config

import "../block"

// Get is to get config
func Get() block.List {
	blocks := []block.Block{
    //        exec              interval
		block.New("dwm_status_moc",       3),
		block.New("dwm_status_wkon",      0),
		block.New("dwm_status_storage",  15),
		block.New("dwm_status_battery",  30),
		block.New("dwm_status_date",      3),
		block.New("dwm_status_audio",     0),
		block.New("dwm_status_bluetooth", 0),
		block.New("dwm_status_notify",    0),
		block.New("dwm_status_internet",  6),
	}
	return block.NewList(blocks)
}
