#!/bin/bash
jetson_clocks
DATE=$(date +"%Y-%m-%d_%H%M")
python3 /home/nvidia/nvme/minifi-jetson-xavier/demoxavier.py --camera /dev/video0 --network googlenet /home/nvidia/nvme/images/$DATE.jpg
