$( document ).ready( function( $ ) {

    var columnDefs = [{
        data: "user_info_id",
        title: "User ID",
        type: "readonly"
    },
    {
        data: "user_username",
        title: "Username"
    },
    {
        data: "user_password",
        title: "Password"
    },
    {
        data: "user_role",
        title: "Role",
        type: "select",
        options: ["Admin", "Regular"]
    },
    {
        data: "user_upline_id",
        title: "Upline ID"
    },
    {
        data: "user_position",
        title: "Position",
        type: "select",
        options: ["Left", "Right"]
    },
    {
        data: "user_authentication_code",
        title: "Authentication Code",
        type: "readonly"
    }];

    var myTable;

    var request_user_info = '/juncture/wp-content/themes/twentynineteen-child/request/admin_users.php',
        request_add = '/juncture/wp-content/themes/twentynineteen-child/request/add_user.php',
        request_delete = '/juncture/wp-content/themes/twentynineteen-child/request/delete_user.php',
        request_update = '/juncture/wp-content/themes/twentynineteen-child/request/update_user.php';

    myTable = $('#_user-table-list').DataTable({
            "sPaginationType": "full_numbers",
            ajax: {
                url : request_user_info,
                dataSrc : ''
            },
            columns: columnDefs,
            dom: 'Bfrtip',
            select: 'single',
            responsive: true,
            altEditor: true,
            buttons: [{
                text: 'Add',
                name: 'add'
            },
            {
                extend: 'selected',
                text: 'Edit',
                name: 'edit'
            },
            {
                extend: 'selected',
                text: 'Delete',
                name: 'delete'
            },
            {
                text: 'Refresh',
                name: 'refresh'
            }],
            onAddRow: function(datatable, rowdata, success, error) {
                $.ajax({
                    url: request_add,
                    type: 'POST',
                    data: rowdata,
                    success: success,
                    error: error
                });
            },
            onDeleteRow: function(datatable, rowdata, success, error) {
                $.ajax({
                    url: request_delete,
                    type: 'GET',
                    data: rowdata,
                    success: success,
                    error: error
                });
            },
            onEditRow: function(datatable, rowdata, success, error) {
                $.ajax({
                    url: request_update,
                    type: 'GET',
                    data: rowdata,
                    success: success,
                    error: error
                });
            }
    });

} );