package block

import (
	"os/exec"
	"regexp"
	"strings"
	"time"
)

/*
	Block
*/

// Block is a status block
type Block struct {
	Exec     string
	Interval uint8
	State    string
}

// New is to create a new Block
func New(exec string, interval uint8) Block {
	return Block{exec, interval, ""}
}

// RefreshState is to refreash state of a Block
func (block *Block) RefreshState() {
  output, err := exec.Command(block.Exec).CombinedOutput()
  if err == nil {
    block.State = string(output)
  }
}

/*
	Block List
*/

// List is a List of status Blocks
type List struct {
	List []Block
	Max  uint8
	Min  uint8
}

// NewList is to create a new List
func NewList(blocks []Block) List {
	var max, min uint8 = 1, 1
	for _, block := range blocks {
		if block.Interval != 0 {
			if block.Interval < min {
				min = block.Interval
			}
			if block.Interval > max {
				max = block.Interval
			}
		}
	}
	return List{blocks, max, min}
}

// RefreshAllState is to refreash all Block state in a List
func (blockList *List) RefreshAllState(counter uint8) {
	if counter == 0 { // initial
		for i := range blockList.List {
      blockList.List[i].RefreshState()
		}
	} else {
		for i, block := range blockList.List {
			if block.Interval == 0 {
				continue
			} else if counter%block.Interval == 0 {
        blockList.List[i].RefreshState()
			}
		}
	}
}

// GetAllState is to print out all the Block State in a List in a line
func (blockList *List) GetAllState() string {
	var str strings.Builder
	for _, block := range blockList.List {
		str.WriteString(block.State)
	}

	re := regexp.MustCompile(`\r?\n`)
	status := re.ReplaceAllString(str.String(), " ")
	return status
}

// OutputState is to output all state in Block List
func (blockList *List) OutputState(counter uint8) {
	blockList.RefreshAllState(counter)
	exec.Command("/bin/xsetroot", "-name", blockList.GetAllState()).Start()
}

// Loop Block List
func (blockList *List) Loop() {
	var c uint8 = 0 // counter
	ticker := time.NewTicker(time.Duration(blockList.Min) * time.Second)
	blockList.OutputState(c)
	for range ticker.C {
		c += blockList.Min
		blockList.OutputState(c)
		if c >= blockList.Max {
			c = 0
		}
	}
}
