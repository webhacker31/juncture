$( document ).ready( function( $ ) {

    var columnDefs = [{
        data: "transaction_id",
        title: "Transaction ID",
        type: "readonly"
    },
    {
        data: "user_id",
        title: "User ID"
    },
    {
        data: "transaction_type",
        title: "Transaction Type"
    },
    {
        data: "transaction_date",
        title: "Transaction Date"
    }];

    var myTable;

    // local URL's are not allowed
    var url_ws_mock_get = '/juncture/wp-content/themes/twentynineteen-child/request/admin_transactions.php';
    // var url_ws_mock_ok = 'https://raw.githubusercontent.com/luca-vercelli/DataTable-AltEditor/master/example/03_ajax_objects/mock_svc_ok.json';

    myTable = $('#_user-table-list').DataTable({
            "sPaginationType": "full_numbers",
            ajax: {
                url : url_ws_mock_get,
                // our data is an array of objects, in the root node instead of /data node, so we need 'dataSrc' parameter
                dataSrc : ''
            },
            columns: columnDefs,
            select: 'single',
            responsive: true
    });

} );