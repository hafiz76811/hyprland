#!/bin/bash

# bar bergerak (acak)
active () {
	# list bars
	bars=(▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▁ ▂)

	bar1=${bars[$((RANDOM % 10))]}
	bar2=${bars[$((RANDOM % 10))]}
	bar3=${bars[$((RANDOM % 10))]}
	bar4=${bars[$((RANDOM % 10))]}

	# tampilkan bar yang sudah diacak
	echo "{\"text\": \" $bar1 $bar2 $bar3 $bar4\", \"class\": \"active\", \"tooltip\": \"Cava: active\"}"
}

# bar tidak bergerak (diam)
inactive () {
	# tampilkan bar yang diam
	echo '{"text": " ▁ ▁ ▁ ▁", "class": "inactive", "tooltip": "Cava: inactive"}'
}


# output dari pactl
status=$(pactl list sink-inputs short)

# kondisi aktif/nonaktif
if [ -n "$status" ]; then
	active
else
	inactive
fi
