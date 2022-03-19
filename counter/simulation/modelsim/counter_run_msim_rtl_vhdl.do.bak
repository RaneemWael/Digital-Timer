transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/user/Desktop/Edu/Guc/5/CSEN 605 (DSD)/counter/clk_generator.vhd}
vcom -93 -work work {C:/Users/user/Desktop/Edu/Guc/5/CSEN 605 (DSD)/counter/sixty_counter.vhd}
vcom -93 -work work {C:/Users/user/Desktop/Edu/Guc/5/CSEN 605 (DSD)/counter/seven_seg_dec.vhd}
vcom -93 -work work {C:/Users/user/Desktop/Edu/Guc/5/CSEN 605 (DSD)/counter/counter.vhd}

vcom -93 -work work {C:/Users/user/Desktop/Edu/Guc/5/CSEN 605 (DSD)/counter/simulation/modelsim/counter.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  test_counter

add wave *
view structure
view signals
run -all
