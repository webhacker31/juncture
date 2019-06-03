$( document ).ready( function( $ ) {

    var columnDefs = [{
        data: "earning_id",
        title: "Earning ID",
        type: "readonly"
    },
    {
        data: "earning_type",
        title: "Earning Type"
    },
    {
        data: "earning_pair_left",
        title: "Pairing Left"
    },
    {
        data: "earning_pair_right",
        title: "Pairing Right"
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

    var request_regular_earning_url =  $home_url + '/request/regular-earnings/';

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
