$( document ).ready( function( $ ) {

    var columnDefs = [{
        data: "transaction_id",
        title: "Transaction ID",
        type: "readonly"
    },
    {
        data: "withdrawal_id",
        title: "Withdrawal ID"
    },
    {
        data: "user_info_id",
        title: "User ID"
    },
    {
        data: "transaction_amount",
        title: "Transaction Amount"
    },
    {
        data: "transaction_type",
        title: "Transaction Type"
    },
    {
        data: "transaction_date",
        title: "Transaction Date"
    }];

    var adminDataTable,
        regularDataTable;

    var request_admin_transaction_url = $home_url + '/request/admin-transactions/',
        request_regular_transaction_url = $home_url + '/request/regular-transactions/';

    adminDataTable = $('#_user-admin-table-list').DataTable({
            "sPaginationType": "full_numbers",
            ajax: {
                url : request_admin_transaction_url,
                dataSrc : ''
            },
            columns: columnDefs,
            select: 'single',
            responsive: true
    });

    regularDataTable = $('#_user-regular-table-list').DataTable({
        "sPaginationType": "full_numbers",
        ajax: {
            url : request_regular_transaction_url,
            dataSrc : '',
            data : {
                user_id : $user_id
            }
        },
        columns: columnDefs,
        select: 'single',
        responsive: true
    });

});
