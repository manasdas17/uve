/****************************************************************************
 *	Copyright 2012 HES-SO HEIG-VD
 *	Copyright 2011 HES-SO Valais Wallis
 *	Copyright 2007-2010 Mentor Graphics Corporation
 *	Copyright 2007-2010 Cadence Design Systems, Inc.
 *	Copyright 2010 Synopsys, Inc.
 *	All Rights Reserved Worldwide
 *
 *	Licensed under the Apache License, Version 2.0 (the "License");
 *	you may not use this file except in compliance with the License.
 *	You may obtain a copy of the License at
 *
 *		http://www.apache.org/licenses/LICENSE-2.0
 *
 *	Unless required by applicable law or agreed to in writing, software
 *	distributed under the License is distributed on an "AS IS" BASIS,
 *	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *	See the License for the specific language governing permissions and
 *	limitations under the License.
 ****************************************************************************
 * This file has been generated by UVE version $@uve_version@$
 * Date of generation: $@date@$
 *
 * Project : $@projectname@$
 * File : $@filename@$
 * Version : 1.0
 ****************************************************************************
 * Description :
 * This class represents the virtual sequencer of a VIP.
 ****************************************************************************/

`ifndef $@FILENAME@$
`define $@FILENAME@$

`include "uvm_macros.svh"

class $@ClassName@$ extends uvm_sequencer #($@vip_transfer@$);
	//UVM factory registration marco
	`uvm_component_utils($@ClassName@$)
	
	$@ subsequencers
	
    function new (string name="$@ClassName@$", uvm_component parent=null);
   		super.new(name, parent);
    endfunction : new

endclass : $@ClassName@$


`endif /* $@FILENAME@$ */
