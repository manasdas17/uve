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
 * Here are described slave sequences.
 ****************************************************************************/

`ifndef $@FILENAME@$
`define $@FILENAME@$

`include "uvm_macros.svh"


class $@vip_name@$_simple_seq_do extends uvm_sequence #($@vip_transfer@$);

	rand int count;
	constraint c1 { count >0; count <50; }

	// Constructor
    function new(string name="$@vip_name@$_simple_seq_do");
		super.new(name);
	endfunction

	// UVM automation macros for sequences
    `uvm_object_utils($@vip_name@$_simple_seq_do)

	//`uvm_sequence_utils(simple_seq_do,p_sequencer)
	// The body() task is the actual logic of the sequence.
	virtual task body();
		req=new;
		repeat(count) begin
		//	wait_for_grant();
		//	req.randomize();
		//	send_request(req);
			`uvm_do(req);
		//	get_response(rsp);
		end
	endtask : body




    // Raise in pre_body so the objection is only raised for root sequences.
    // There is no need to raise for sub-sequences since the root sequence
    // will encapsulate the sub-sequence.
    virtual task pre_body();
            if(starting_phase != null) begin
                `uvm_info(get_type_name(),
                                    $psprintf("%s pre_body() raising %s objection",
                                    get_sequence_path(), starting_phase.get_name()),
                                    UVM_MEDIUM);

                starting_phase.raise_objection(this);

            end
    endtask : pre_body

        // Drop the objection in the post_body so the objection is removed when
        // the root sequence is complete.
        virtual task post_body();
                if (starting_phase != null) begin

                `uvm_info(get_type_name(),
                                        $psprintf("%s post_body() dropping %s objection",
                                        get_sequence_path(), starting_phase.get_name()),
                                        UVM_MEDIUM);

                starting_phase.drop_objection(this);

                end
        endtask : post_body

endclass : $@vip_name@$_simple_seq_do


`endif /* $@FILENAME@$ */
