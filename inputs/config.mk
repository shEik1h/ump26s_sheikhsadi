export DESIGN_NICKNAME = txn_risk
export DESIGN_NAME     = txn_risk_engine
export PLATFORM        = ihp-sg13g2

export VERILOG_FILES = $(sort $(wildcard $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraints.sdc

export USE_FILL         = 1
export CORE_UTILIZATION = 30
export TNS_END_PERCENT  = 100
