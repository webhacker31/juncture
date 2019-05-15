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
        title: "Role"
    },
    {
        data: "user_referral_id",
        title: "Referral ID"
    },
    {
        data: "user_upline_id",
        title: "Upline ID"
    },
    {
        data: "user_authentication_code",
        title: "Authentication Code",
        type: "readonly"
    }];

    var myTable;

    var request_user_info = '/juncture/wp-content/themes/twentynineteen-child/request/admin_users.php';
    var request_add = '/juncture/wp-content/themes/twentynineteen-child/request/add_user.php';

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
                    error: error,
                    done: function ( response ) {
                        console.log( response )
                    }
                });
            },
            onDeleteRow: function(datatable, rowdata, success, error) {
                $.ajax({
                    url: request_add,
                    type: 'GET',
                    data: rowdata,
                    success: success,
                    error: error
                });
            },
            onEditRow: function(datatable, rowdata, success, error) {
                $.ajax({
                    url: request_add,
                    type: 'GET',
                    data: rowdata,
                    success: success,
                    error: error
                });
            }
    });

} );