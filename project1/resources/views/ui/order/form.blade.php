<!-- Modal Form Create and Update -->
<div class="modal fade" id="modalForm">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header" id="form-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form role="form" id="form" autocomplete="off" method="POST">
                <div class="modal-body" id="form-body">
                    <input type="text" class="form-control" id="id" name="id" hidden>
                    <div class="form-group">
                        <label for="paymentMethod">Payment Method</label>
                        <select class="form-control" id="payment_method_id" name="payment_method_id" required></select>
                    </div>
                    <div class="form-group">
                        <label for="cardNumber">Card Number</label>
                        <input type="text" class="form-control" id="card_number" name="card_number">
                    </div>
                    <div class="form-group">
                        <label for="status">Status</label>
                        <select class="form-control" id="status" name="status" required></select>
                    </div>
                    <div class="form-group">
                        <label for="dueDate">Due Date</label>
                        <input type="text" class="form-control" id="due_date" name="due_date" disabled>
                    </div>
                    <div class="form-group">
                        <label for="totalAmount">Total Amount</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Rp</span>
                            </div>
                            <input type="text" class="form-control" id="total_amount" name="total_amount" disabled>
                        </div>
                    </div>
                </div>
                <div class="modal-footer" id="form-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->