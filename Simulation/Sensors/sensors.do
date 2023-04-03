onerror {resume}
quietly virtual signal -install /sensors_tb/I_sensors {/sensors_tb/I_sensors/hallCount  } hallCount_0001
quietly virtual signal -install /sensors_tb/I_sensors { /sensors_tb/I_sensors/hallCount(15 downto 0)} hallcount_1
quietly virtual signal -install /sensors_tb/I_sensors { /sensors_tb/I_sensors/hallCount(31 downto 16)} hallCount2
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Gray60 -label Clock /sensors_tb/clock
add wave -noupdate -color Gray60 -label Reset /sensors_tb/reset
add wave -noupdate -color {Cornflower Blue} -label {Test Info} /sensors_tb/I_tester/testInfo
add wave -noupdate -divider Hall
add wave -noupdate -expand -group {Sensor 1} -color Gold -label {hallPulse - 1} /sensors_tb/hallPulses(1)
add wave -noupdate -expand -group {Sensor 1} -color Gold -label {zeroPos - 1} /sensors_tb/I_sensors/zeroPos(0)
add wave -noupdate -expand -group {Sensor 1} -label {hallCount - 1} -radix unsigned /sensors_tb/I_sensors/hallcount_1
add wave -noupdate -expand -group {Sensor 2} -color Gold -label {hallPulse - 2} /sensors_tb/hallPulses(2)
add wave -noupdate -expand -group {Sensor 2} -color Gold -label {zeroPos - 2} /sensors_tb/I_sensors/zeroPos(1)
add wave -noupdate -expand -group {Sensor 2} -label {hallCount - 2} -radix unsigned /sensors_tb/I_sensors/hallCount2
add wave -noupdate -divider Ultrasound
add wave -noupdate -color Gold -label distancePulse /sensors_tb/distancePulse
add wave -noupdate -label rangerDistance -radix unsigned /sensors_tb/I_sensors/rangerDistance
add wave -noupdate -radix decimal /sensors_tb/I_tester/tbRangerDistanceTarget
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 282
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {4743428081 ps}
run 100ms
