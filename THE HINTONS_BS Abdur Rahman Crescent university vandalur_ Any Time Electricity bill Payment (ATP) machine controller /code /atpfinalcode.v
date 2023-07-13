module atpfinalcode(
  input wire clk,
  input wire rst,
  input wire place_voucher,
  input wire scan_voucher,
  input wire display_parameter,
  input wire select_payment,
  input wire confirm_amount,
  input wire insert_cash_or_cheque,
  input wire validate_payment,
  input wire provide_bill,
  
  output reg voucher_placed,
  output reg voucher_scanned,
  output reg parameter_displayed,
  output reg payment_selected,
  output reg amount_confirmed ,
  output reg cash_or_cheque_inserted,
  output reg payment_validated,
  output reg bill_provided 

);

  //  the states
  parameter START = 3'b000;
  parameter VOUCHER_SCAN = 3'b001;
  parameter DISPLAY = 3'b010;
  parameter PAYMENT_SELECTION =3'b011;
  parameter AMOUNT_CONFIRMATION= 3'b100;
  parameter INSERTION= 3'b101;
  parameter PAYMENT_VALIDATION= 3'b110;
  parameter ACKNOWLEDGEMENT= 3'b111;

 //  the current state and next state register
  reg [2:0] current_state;
  reg [2:0] next_state;
  
  //always block to update state
  always @(posedge clk)
  begin
  if(rst)
  current_state<=START;
  else
  current_state<=next_state;
  end

  //always block to compute the outputs based on the current state and inputs
  always@(current_state,place_voucher,scan_voucher,display_parameter,select_payment,confirm_amount,insert_cash_or_cheque,validate_payment,provide_bill)
    begin
	 case (current_state)

START:
	 if(place_voucher) 
	 next_state<=VOUCHER_SCAN;
	 else
	 next_state<=START;
VOUCHER_SCAN:
	 if(scan_voucher) 
	 next_state<=DISPLAY;
	 else
	 next_state<=VOUCHER_SCAN;

DISPLAY:
	 if(display_parameter) 
	 next_state<=PAYMENT_SELECTION;
	 else
	 next_state<=VOUCHER_SCAN;

PAYMENT_SELECTION:
	 if(select_payment) 
	 next_state<=AMOUNT_CONFIRMATION;
	 else
	 next_state<=PAYMENT_SELECTION;

AMOUNT_CONFIRMATION:
	 if(confirm_amount) 
	 next_state<=INSERTION;
	 else
	 next_state<=AMOUNT_CONFIRMATION;

INSERTION:
	 if(insert_cash_or_cheque) 
	 next_state<=PAYMENT_VALIDATION;
	 else
	 next_state<=START;

PAYMENT_VALIDATION:
	 if(validate_payment) 
	 next_state<= ACKNOWLEDGEMENT;
	 else
	 next_state<=INSERTION;

ACKNOWLEDGEMENT:
	 if(provide_bill) 
	 next_state<=START;
	 else
	 next_state<= ACKNOWLEDGEMENT;

default:next_state<=START;
	 endcase
	 end
always @(current_state, place_voucher, scan_voucher, display_parameter, select_payment, confirm_amount, insert_cash_or_cheque, validate_payment, provide_bill)
begin
  case (current_state)
    START:
      begin
        voucher_placed = place_voucher;
        voucher_scanned = 0;
        parameter_displayed = 0;
        payment_selected = 0;
        amount_confirmed = 0;
        cash_or_cheque_inserted = 0;
        payment_validated = 0;
        bill_provided = 0;
      end

    VOUCHER_SCAN:
      begin
        voucher_placed = 0;
        voucher_scanned = scan_voucher;
        parameter_displayed = 0;
        payment_selected = 0;
        amount_confirmed = 0;
        cash_or_cheque_inserted = 0;
        payment_validated = 0;
        bill_provided = 0;
      end

    DISPLAY:
      begin
        voucher_placed = 0;
        voucher_scanned = 0;
        parameter_displayed = display_parameter;
        payment_selected = 0;
        amount_confirmed = 0;
        cash_or_cheque_inserted = 0;
        payment_validated = 0;
        bill_provided = 0;
      end

    PAYMENT_SELECTION:
      begin
        voucher_placed = 0;
        voucher_scanned = 0;
        parameter_displayed = 0;
        payment_selected = select_payment;
        amount_confirmed = 0;
        cash_or_cheque_inserted = 0;
        payment_validated = 0;
        bill_provided = 0;
      end

    AMOUNT_CONFIRMATION:
      begin
        voucher_placed = 0;
        voucher_scanned = 0;
        parameter_displayed = 0;
        payment_selected = 0;
        amount_confirmed = confirm_amount;
        cash_or_cheque_inserted = 0;
        payment_validated = 0;
        bill_provided = 0;
      end

    INSERTION:
      begin
        voucher_placed = 0;
        voucher_scanned = 0;
        parameter_displayed = 0;
        payment_selected = 0;
        amount_confirmed = 0;
        cash_or_cheque_inserted = insert_cash_or_cheque;
        payment_validated = 0;
        bill_provided = 0;
      end

    PAYMENT_VALIDATION:
      begin
        voucher_placed = 0;
        voucher_scanned = 0;
        parameter_displayed = 0;
        payment_selected = 0;
        amount_confirmed = 0;
        cash_or_cheque_inserted = 0;
        payment_validated = validate_payment;
        bill_provided = 0;
      end

    ACKNOWLEDGEMENT:
      begin
        voucher_placed = 0;
        voucher_scanned = 0;
        parameter_displayed = 0;
        payment_selected = 0;
        amount_confirmed = 0;
        cash_or_cheque_inserted = 0;
        payment_validated = 0;
        bill_provided = provide_bill;
      end

    default:
      begin
        voucher_placed = 0;
        voucher_scanned = 0;
        parameter_displayed = 0;
        payment_selected = 0;
        amount_confirmed = 0;
        cash_or_cheque_inserted = 0;
        payment_validated = 0;
        bill_provided = 0;
      end
  endcase
end
endmodule
