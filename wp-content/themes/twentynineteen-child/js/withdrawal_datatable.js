$( document ).ready( function( $ ) {

    var columnDefs = [{
        data: "withdrawal_id",
        title: "Withdrawal ID",
        type: "readonly"
    },
    {
        data: "user_info_id",
        title: "User ID",
        type: "readonly"
    },
    {
        data: "withdrawal_amount",
        title: "Withdrawal Amount",
        type: "readonly"
    },
    {
        data: "withdrawal_time",
        title: "Withdrawal Time",
        type: "readonly"
    },
    {
        data: "withdrawal_status",
        title: "Withdrawal Status",
        type: 'select',
        options: ['Approve', 'Reject']
    }];

    var adminDataTable,
        regularDataTable;

    var request_admin_withdrawal_url = '/juncture/wp-content/themes/twentynineteen-child/request/admin_withdrawals.php',
        request_regular_withdrawal_url = '/juncture/wp-content/themes/twentynineteen-child/request/regular_withdrawals.php';

    var request_update_withdrawal = request_update_withdrawal = '/juncture/wp-content/themes/twentynineteen-child/request/update_withdrawal.php';

    adminDataTable = $('#_user-admin-table-list').DataTable({
            "sPaginationType": "full_numbers",
            ajax: {
                url : request_admin_withdrawal_url,
                dataSrc : ''
            },
            columns: columnDefs,
            dom: 'Bfrtip',
            select: 'single',
            responsive: true,
            altEditor: true,
            buttons: [{
                extend: 'selected',
                text: 'Update',
                name: 'edit'
            }],
            onEditRow: function(datatable, rowdata, success, error) {
                $.ajax({
                    url: request_update_withdrawal,
                    type: 'GET',
                    data: rowdata,
                    success: success,
                    error: error
                });
            }
    });

    regularDataTable = $('#_user-regular-table-list').DataTable({
        "sPaginationType": "full_numbers",
        ajax: {
            url : request_regular_withdrawal_url,
            dataSrc : '',
            data : {
                user_id : $user_id
            }
        },
        columns: columnDefs,
        select: 'single',
        responsive: true,
    });

});