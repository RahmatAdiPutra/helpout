<div id="invoice" style="display: none">
    <div class="row">
        <div class="col-sm-6">
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Invoice Number</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_invoice_number"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Payment Method</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_payment_method"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Card Number</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_card_number"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Cashier Name</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_cashier_name"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Customer Name</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_customer_name"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Print Date</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_date"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Due Date</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_due_date"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Payment Date</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_payment_date"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="float-sm-left">Payment Status</div>
                </div>
                <div class="col-sm-7">
                    <div class="float-sm-left" id="print_payment_status"></div>
                </div>
            </div>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <img src="{{ asset('img/kizaru.png') }}" alt="KIZARU Logo" class="brand-image float-sm-right img-circle elevation-3"
            style="width:100px;opacity: .8">
        </div><!-- /.col -->
    </div><!-- /.row -->
    <div class="auto-scroll">
        <table id="detailedTableSecond" class="table table-striped">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Item</th>
                    <th>Quantity</th>
                    <th>Price/item</th>
                    <th>Discount/item %</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody></tbody>
            <tfoot>
                <tr>
                    <th colspan="5">Sub Total</th>
                    <th id="print_total_price"></th>
                    <th id="print_total_discount"></th>
                    <th id="print_total_amount"></th>
                </tr>
            </tfoot>
        </table>
    </div>
</div>