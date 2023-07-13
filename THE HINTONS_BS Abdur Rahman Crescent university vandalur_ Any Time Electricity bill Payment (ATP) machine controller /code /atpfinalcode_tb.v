module atpfinalcode_tb;

  // Inputs
  reg clk;
  reg rst;
  reg place_voucher;
  reg scan_voucher;
  reg display_parameter;
  reg select_payment;
  reg confirm_amount;
  reg insert_cash_or_cheque;
  reg validate_payment;
  reg provide_bill;
  
  // Outputs
  wire voucher_placed;
  wire voucher_scanned;
  wire parameter_displayed;
  wire payment_selected;
  wire amount_confirmed;
  wire cash_or_cheque_inserted;
  wire payment_validated;
  wire bill_provided;

  // Instantiate the ATP controller module
  atpfinalcode dut (
    .clk(clk),
    .rst(rst),
    .place_voucher(place_voucher),
    .scan_voucher(scan_voucher),
    .display_parameter(display_parameter),
    .select_payment(select_payment),
    .confirm_amount(confirm_amount),
    .insert_cash_or_cheque(insert_cash_or_cheque),
    .validate_payment(validate_payment),
    .provide_bill(provide_bill),
    .voucher_placed(voucher_placed),
    .voucher_scanned(voucher_scanned),
    .parameter_displayed(parameter_displayed),
    .payment_selected(payment_selected),
    .amount_confirmed(amount_confirmed),
    .cash_or_cheque_inserted(cash_or_cheque_inserted),
    .payment_validated(payment_validated),
    .bill_provided(bill_provided)
  );
  
    initial
  begin 
   // Clock Generation
   clk = 0;
   forever
    #10 clk = ~clk;
  end

  initial begin
  
  //initial conditions
   clk=0;
   rst=1;
   place_voucher=0;
   scan_voucher=0;
   display_parameter=0;
   select_payment=0;
   confirm_amount=0;
   insert_cash_or_cheque=0;
   validate_payment=0;
   provide_bill=0;
   // test case 1 payment validated
  #10 rst=0;
  #10 place_voucher=1;
  #10 scan_voucher=1;
  #10 display_parameter=1;
  #10 select_payment=1;
  #10 confirm_amount=1;
  #10 insert_cash_or_cheque=1;
  #10 validate_payment=1;
  #10 provide_bill=1;
  // payment not validated  
  #10 rst=0;
  #10 place_voucher=1;
  #10 scan_voucher=1;
  #10 display_parameter=1;
  #10 select_payment=1;
  #10 confirm_amount=1;
  #10 insert_cash_or_cheque=1;
  #10 validate_payment=0;
  #10 provide_bill=0;
  
  #100 $finish();
    
 end
endmodule
