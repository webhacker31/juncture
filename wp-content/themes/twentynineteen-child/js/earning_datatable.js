$( document ).ready( function( $ ) {

    var columnDefs = [{
        data: "earning_id",
        title: "Earning ID",
        type: "readonly"
    },
    {
        data: "user_info_id",
        title: "User ID"
    },
    {
        data: "earning_type",
        title: "Earning Type"
    },
    {
        data: "earning_amount",
        title: "Earning Amount"
    },
    {
        data: "earning_date",
        title: "Earning Date"
    }];

    var regularDataTable;

    var request_regular_earning_url = '/juncture/wp-content/themes/twentynineteen-child/request/regular_earnings.php';

    regularDataTable = $('#_user-regular-table-list').DataTable({
        "sPaginationType": "full_numbers",
        ajax: {
            url : request_regular_earning_url,
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
