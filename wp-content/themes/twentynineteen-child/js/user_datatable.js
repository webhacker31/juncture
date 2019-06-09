$( document ).ready( function( $ ) {

    var columnDefs = [{
        data: "user_info_id",
        title: "User ID",
        type: "readonly"
    },
    {
        data: "user_username",
        title: "Username",
        type: "text",
        pattern: "^(([a-z]|[A-Z]|[0-9])){1,}[ ]$",
        errorMsg: "This field should not be empty."

    },
    {
        data: "user_password",
        title: "Password",
        type: "text",
        pattern: "^(([a-z]|[A-Z]|[0-9])){1,}[ ]$",
        errorMsg: "This field should not be empty."

    },
    {
        data: "user_role",
        title: "Role",
        type: "select",
        options: ["Distributor"]
    },
    {
        data: "user_upline_id",
        title: "Upline ID",
        type: "text",
        pattern: "^(([a-z]|[A-Z]|[0-9])){1,}[ ]$",
        errorMsg: "This field should not be empty."

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

    var request_user_info = $home_url + '/request/admin-users/',
        request_add = $home_url + '/request/admin-add-user/',
        request_delete = $home_url + '/request/delete-user/',
        request_update = $home_url + '/request/update-user/';

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

                console.log( rowdata );

                // $.ajax({
                //     url: request_add,
                //     type: 'POST',
                //     data: rowdata,
                //     success: success,
                //     error: error
                // });
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