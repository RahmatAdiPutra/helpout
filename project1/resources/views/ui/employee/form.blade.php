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
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="idCardNumber">ID Card Number</label>
                                <input type="text" class="form-control" id="id_card_number" name="id_card_number"
                                    placeholder="Enter employee id card number" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter employee name" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="position">Position</label>
                        <select class="form-control" id="position_id" name="position_id" required></select>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <label for="gender">Gender</label>
                            <div class="form-group clearfix">
                                <div class="icheck-primary d-inline">
                                    <input type="radio" id="Male" name="gender" value="Male" required>
                                    <label for="Male">Male</label>
                                </div>
                                <div class="icheck-primary d-inline">
                                    <input type="radio" id="Female" name="gender" value="Female" required>
                                    <label for="Female">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="birthday">Birthday</label>
                                <input type="text" class="form-control" id="birthday" name="birthday"
                                    placeholder="Enter employee birthday" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="religion">Religion</label>
                                <select class="form-control" id="religion" name="religion" required></select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="status">Status</label>
                                <select class="form-control" id="status" name="status" required></select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="phoneNumber">Phone Number</label>
                                <input type="text" class="form-control" id="phone_number" name="phone_number"
                                    placeholder="Enter employee phone number" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email"
                                    placeholder="Enter employee email" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="city">City</label>
                                <input type="text" class="form-control" id="city" name="city" placeholder="Enter employee city" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="address">Address</label>
                                <textarea class="form-control" id="address" name="address" rows="3" placeholder="Enter employee address" required></textarea>
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
