# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_HZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLR_LOW_NS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESET_LOW_NS" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_HZ { PARAM_VALUE.CLK_HZ } {
	# Procedure called to update CLK_HZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_HZ { PARAM_VALUE.CLK_HZ } {
	# Procedure called to validate CLK_HZ
	return true
}

proc update_PARAM_VALUE.CLR_LOW_NS { PARAM_VALUE.CLR_LOW_NS } {
	# Procedure called to update CLR_LOW_NS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLR_LOW_NS { PARAM_VALUE.CLR_LOW_NS } {
	# Procedure called to validate CLR_LOW_NS
	return true
}

proc update_PARAM_VALUE.RESET_LOW_NS { PARAM_VALUE.RESET_LOW_NS } {
	# Procedure called to update RESET_LOW_NS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET_LOW_NS { PARAM_VALUE.RESET_LOW_NS } {
	# Procedure called to validate RESET_LOW_NS
	return true
}


proc update_MODELPARAM_VALUE.CLK_HZ { MODELPARAM_VALUE.CLK_HZ PARAM_VALUE.CLK_HZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_HZ}] ${MODELPARAM_VALUE.CLK_HZ}
}

proc update_MODELPARAM_VALUE.RESET_LOW_NS { MODELPARAM_VALUE.RESET_LOW_NS PARAM_VALUE.RESET_LOW_NS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET_LOW_NS}] ${MODELPARAM_VALUE.RESET_LOW_NS}
}

proc update_MODELPARAM_VALUE.CLR_LOW_NS { MODELPARAM_VALUE.CLR_LOW_NS PARAM_VALUE.CLR_LOW_NS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLR_LOW_NS}] ${MODELPARAM_VALUE.CLR_LOW_NS}
}

