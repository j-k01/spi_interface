# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LDAC_CLKS" -parent ${Page_0}


}

proc update_PARAM_VALUE.LDAC_CLKS { PARAM_VALUE.LDAC_CLKS } {
	# Procedure called to update LDAC_CLKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LDAC_CLKS { PARAM_VALUE.LDAC_CLKS } {
	# Procedure called to validate LDAC_CLKS
	return true
}


proc update_MODELPARAM_VALUE.LDAC_CLKS { MODELPARAM_VALUE.LDAC_CLKS PARAM_VALUE.LDAC_CLKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LDAC_CLKS}] ${MODELPARAM_VALUE.LDAC_CLKS}
}

