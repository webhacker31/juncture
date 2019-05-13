$( document ).ready( function( $ ) {

    var columnDefs = [{
        data: "withdrawal_id",
        title: "Withdrawal ID",
        type: "readonly"
    },
    {
        data: "user_info_id",
        title: "User ID"
    },
    {
        data: "withdrawal_amount",
        title: "Withdrawal Amount"
    },
    {
        data: "withdrawal_time",
        title: "Withdrawal Time"
    },
    {
        data: "withdrawal_status",
        title: "Withdrawal Status"
    }];

    var adminDataTable,
        regularDataTable;

    var request_admin_withdrawal_url = '/juncture/wp-content/themes/twentynineteen-child/request/admin_withdrawals.php',
        request_regular_withdrawal_url = '/juncture/wp-content/themes/twentynineteen-child/request/regular_withdrawals.php';

    // var url_ws_mock_ok = 'https://raw.githubusercontent.com/luca-vercelli/DataTable-AltEditor/master/example/03_ajax_objects/mock_svc_ok.json';

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
                text: 'Approve',
                name: 'edit'
            },
            {
                extend: 'selected',
                text: 'Reject',
                name: 'edit'
            }],
            onEditRow: function(datatable, rowdata, success, error) {
                $.ajax({
                    url: url_ws_mock_ok,
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