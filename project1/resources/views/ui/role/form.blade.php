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
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter role name" required>
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