
	# Switch model type
	# set ModelType [format %s%s%s $LumpedMass $PanelZone $FiberColumnHinge];
	# 001 没有摇摆柱、没有节点板、使用纤维柱铰(无下降段材料)计算重力
	# 002 没有摇摆柱、没有节点板、使用纤维杆柱（adjust IMK材料）使用fiber铰建模splice  X
	#*011 没有摇摆柱、有节点板、使用纤维柱铰(无下降段材料)计算重力
	# 012 没有摇摆柱、有节点板、使用纤维杆柱（adjust IMK材料）使用fiber铰建模splice
	# 动力计算模型
	# 101 有摇摆柱、没有节点板、使用纤维柱铰（adjust IMK材料）使用fiber铰建模splice
	# 102 有摇摆柱、没有节点板、使用纤维杆柱
	# 100 有摇摆柱、没有节点板、使用bilin柱铰
	#*111 有摇摆柱、有节点板、使用纤维柱铰（adjust IMK材料）使用fiber铰建模splice
	# 112 有摇摆柱、有节点板、使用纤维杆柱
	# 110 有摇摆柱、有节点板、使用bilin柱铰

	switch $ModelType {
		000	{	puts $chanLog "# Defining nodes";
				source B1N_DefineNodes3DModel_NoPZ.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4a_DefineBeamHingeMaterials3DFiberModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5aN_DefineBeamHinges3DFiberModel_NoPZ.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7a_DefineColumnHingeMaterials3DFiberModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8aN_DefineColumnHinges3DFiberModel_NoPZ.tcl;
				puts $chanLog "# Defining column elements";
				source B9_DefineColumns3DModel.tcl;									
				puts $chanLog "# Defining masses";
				source B12_DefineMasses3DModel.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			}
		001	{	puts $chanLog "# Defining nodes";
				source B1N_DefineNodes3DModel_NoPZ.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4a_DefineBeamHingeMaterials3DFiberModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5aN_DefineBeamHinges3DFiberModel_NoPZ.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7a_DefineColumnHingeMaterials3DFiberModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8aN_DefineColumnHinges3DFiberModel_NoPZ.tcl;
				puts $chanLog "# Defining column elements";
				source B9_DefineColumns3DModel.tcl;				
				puts $chanLog "# Defining masses";
				source B12_DefineMasses3DModel.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			} 
		002	{	puts $chanLog "# Defining nodes";
				source B1N_DefineNodes3DModel_NoPZ.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";					
				source B5bN_DefineBeamHinges3DBilinModel_NoPZ.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column and column hinge material models";					
				source B7b_DefineColumnHingeMaterials3DAdjustFiberModel.tcl;					
				puts $chanLog "# Defining column hinges";
				source B8bF_DefineColumnHinges3DAdjustFiberModel_ColFE.tcl;				
				puts $chanLog "# Defining column elements";
				source B9F_DefineColumns3DModel_ColFE.tcl;						
				puts $chanLog "# Defining masses";
				source B12_DefineMasses3DModel.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;	
			}
		010	{	puts $chanLog "# Defining nodes";
				source B1_DefineNodes3DModel.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5b_DefineBeamHinges3DBilinModel.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7c_DefineColumnHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8c_DefineColumnHinges3DBilinModel.tcl;
				puts $chanLog "# Defining column elements";
				source B9_DefineColumns3DModel.tcl;	
				puts $chanLog "# Defining panel zone hinges";
				source B10_DefinePanelZoneHinges3DModel.tcl;
				puts $chanLog "# Defining panel zone elements";
				source B11_DefinePanelZones3DModel.tcl;					
				puts $chanLog "# Defining masses";
				source B12_DefineMasses3DModel.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			}		
		011	{	puts $chanLog "# Defining nodes";
				source B1_DefineNodes3DModel.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				# source B4a_DefineBeamHingeMaterials3DFiberModel.tcl;
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				# source B5a_DefineBeamHinges3DFiberModel.tcl;
				source B5b_DefineBeamHinges3DBilinModel.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7b_DefineColumnHingeMaterials3DAdjustFiberModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8b_DefineColumnHinges3DAdjustFiberModel.tcl;
				puts $chanLog "# Defining column elements";
				source B9_DefineColumns3DModel.tcl;	
				puts $chanLog "# Defining panel zone hinges";
				source B10_DefinePanelZoneHinges3DModel.tcl;
				puts $chanLog "# Defining panel zone elements";
				source B11_DefinePanelZones3DModel.tcl;					
				puts $chanLog "# Defining masses";
				source B12_DefineMasses3DModel.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			} 
		012	{	puts $chanLog "# Defining nodes";
				source B1_DefineNodes3DModel.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5b_DefineBeamHinges3DBilinModel.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7b_DefineColumnHingeMaterials3DAdjustFiberModel.tcl;
				source B7a_DefineColumnHingeMaterials3DFiberModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8bF_DefineColumnHinges3DAdjustFiberModel_ColFE.tcl;
				puts $chanLog "# Defining column elements";
				source B9F_DefineColumns3DModel_ColFE.tcl;	
				puts $chanLog "# Defining panel zone hinges";
				source B10_DefinePanelZoneHinges3DModel.tcl;
				puts $chanLog "# Defining panel zone elements";
				source B11_DefinePanelZones3DModel.tcl;					
				puts $chanLog "# Defining masses";
				source B12_DefineMasses3DModel.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			}				
		100	{	puts $chanLog "# Defining nodes";
				source B1N_DefineNodes3DModel_NoPZ.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5bN_DefineBeamHinges3DBilinModel_NoPZ.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7c_DefineColumnHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8cN_DefineColumnHinges3DBilinModel_NoPZ.tcl;
				puts $chanLog "# Defining column elements";
				source B9_DefineColumns3DModel.tcl;	
				# source B9a_DefineLeaningColumn3DModel.tcl;					
				puts $chanLog "# Defining masses";
				source B12M_DefineMasses3DModel_LMass.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;
				
			}
		101	{	puts $chanLog "# Defining nodes";
				source B1N_DefineNodes3DModel_NoPZ.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5bN_DefineBeamHinges3DBilinModel_NoPZ.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7b_DefineColumnHingeMaterials3DAdjustFiberModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8bN_DefineColumnHinges3DAdjustFiberModel_NoPZ.tcl;
				puts $chanLog "# Defining column elements";
				source B9_DefineColumns3DModel.tcl;	
				# source B9a_DefineLeaningColumn3DModel.tcl;					
				puts $chanLog "# Defining masses";
				source B12M_DefineMasses3DModel_LMass.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			}
		102	{	puts $chanLog "# Defining nodes";
				source B1N_DefineNodes3DModel_NoPZ.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5bN_DefineBeamHinges3DBilinModel_NoPZ.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7b_DefineColumnHingeMaterials3DAdjustFiberModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8bF_DefineColumnHinges3DAdjustFiberModel_ColFE.tcl;
				puts $chanLog "# Defining column elements";
				source B9F_DefineColumns3DModel_ColFE.tcl;	
				# source B9a_DefineLeaningColumn3DModel.tcl;					
				puts $chanLog "# Defining masses";
				source B12M_DefineMasses3DModel_LMass.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			}
		110	{	puts $chanLog "# Defining nodes";
				source B1_DefineNodes3DModel.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5b_DefineBeamHinges3DBilinModel.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7c_DefineColumnHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8c_DefineColumnHinges3DBilinModel.tcl;
				puts $chanLog "# Defining column elements";
				source B9_DefineColumns3DModel.tcl;	
				# source B9a_DefineLeaningColumn3DModel.tcl;					
				puts $chanLog "# Defining panel zone hinges";
				source B10_DefinePanelZoneHinges3DModel.tcl;
				puts $chanLog "# Defining panel zone elements";
				source B11_DefinePanelZones3DModel.tcl;		
				puts $chanLog "# Defining masses";
				source B12M_DefineMasses3DModel_LMass.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			}
		111	{	puts $chanLog "# Defining nodes";
				source B1_DefineNodes3DModel.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5b_DefineBeamHinges3DBilinModel.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7b_DefineColumnHingeMaterials3DAdjustFiberModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8b_DefineColumnHinges3DAdjustFiberModel.tcl;
				puts $chanLog "# Defining column elements";
				source B9_DefineColumns3DModel.tcl;	
				# source B9a_DefineLeaningColumn3DModel.tcl;					
				puts $chanLog "# Defining panel zone hinges";
				source B10_DefinePanelZoneHinges3DModel.tcl;
				puts $chanLog "# Defining panel zone elements";
				source B11_DefinePanelZones3DModel.tcl;		
				puts $chanLog "# Defining masses";
				source B12M_DefineMasses3DModel_LMass.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			}
		112	{	puts $chanLog "# Defining nodes";
				source B1_DefineNodes3DModel.tcl;
				puts $chanLog "# Defining rigid floor diaphragm constraints";
				source B2_DefineRigidFloorDiaphragm3DModel.tcl;
				puts $chanLog "# Defining node fixities";
				source B3_DefineFixities3DModel.tcl;
				puts $chanLog "# Defining beam hinge material models";
				source B4c_DefineBeamHingeMaterials3DBilinModel.tcl;
				puts $chanLog "# Defining beam hinges";
				source B5b_DefineBeamHinges3DBilinModel.tcl;
				puts $chanLog "# Defining beam elements";
				source B6_DefineBeams3DModel.tcl;
				puts $chanLog "# Defining column hinge material models";
				source B7b_DefineColumnHingeMaterials3DAdjustFiberModel.tcl;
				puts $chanLog "# Defining column hinges";
				source B8bF_DefineColumnHinges3DAdjustFiberModel_ColFE.tcl;
				puts $chanLog "# Defining column elements";
				source B9F_DefineColumns3DModel_ColFE.tcl;	
				# source B9a_DefineLeaningColumn3DModel.tcl;					
				puts $chanLog "# Defining panel zone hinges";
				source B10_DefinePanelZoneHinges3DModel.tcl;
				puts $chanLog "# Defining panel zone elements";
				source B11_DefinePanelZones3DModel.tcl;		
				puts $chanLog "# Defining masses";
				source B12M_DefineMasses3DModel_LMass.tcl;
				puts $chanLog "# Defining gravity loads";
				source B13_DefineGravityLoads3DModel.tcl;					
			}	
	}
