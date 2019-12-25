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
            <form role="form" id="form" autocomplete="off">
                <div class="modal-body" id="form-body">
                    <input type="text" class="form-control" id="id" name="id" hidden>
                    <input type="text" class="form-control" id="updated_by" name="updated_by" hidden>
                    <div class="form-group">
                        <label for="item">Item</label>
                        <select class="form-control" id="item_id" name="item_id" required></select>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="purchase">Purchase</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Rp</span>
                                    </div>
                                    <input type="text" class="form-control" id="purchase" name="purchase" placeholder="Enter item history purchase price" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="price">Price</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Rp</span>
                                    </div>
                                    <input type="text" class="form-control" id="price" name="price" placeholder="Enter item history selling price" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="discount">Discount</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="discount" name="discount" placeholder="Enter item history discount" required>
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="currentQuantity">Current Quantity</label>
                                <input type="number" class="form-control" id="current_quantity" min="0" name="current_quantity"  disabled>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="quantity">Quantity (+/-)</label>
                                <input type="number" class="form-control" id="quantity" name="quantity" min="" placeholder="Enter item history stock" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer" id="form-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->