#!/bin/bash
cpu() {
	local user system idle cwait
	user=$(vmstat | awk 'NR==3{print $13}')
	system=$(vmstat | awk 'NR==3{print $14}')
	idle=$(vmstat | awk 'NR==3{print $15}')
	cwait=$(vmstat | awk 'NR==3{print $16}')
	echo "CPU用户占用:$user%"
	echo "CPU系统占用:$system%"
	echo "CPU空闲:$idle%"
	echo "CPU等待磁盘I/O相应占用:$cwait%"
}
cpu
