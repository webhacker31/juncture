$( document ).ready( function() {

    google.charts.load('current', {packages:["orgchart"]});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

        $.ajax({
            method: 'POST',
            url: '/juncture/wp-content/themes/twentynineteen-child/request/user_downline.php',
            data: {
                user_id : $user_id
            }
        }).done( function( response ) {

            var data = new google.visualization.DataTable();
    
            data.addColumn('string', 'Name');
            data.addColumn('string', 'Manager');
            data.addColumn('string', 'ToolTip');

            data.addRows( JSON.parse( response ) );

            // Create the chart.
            var chart = new google.visualization.OrgChart(document.getElementById('binary'));
            // Draw the chart, setting the allowHtml option to true for the tooltips.
            chart.draw(data, {allowHtml:true});

            $( '#binary .google-visualization-orgchart-table tr td[title="Available"]' ).html( 'Available' ).css( 'opacity', '.3' );

        });

    }

    var columnDefs = [{
        data: "earning_type",
        title: "Earning Type"
    },
    {
        data: "earning_pair_left",
        title: "Pair Left"
    },
    {
        data: "earning_pair_right",
        title: "Pair Right"
    },
    {
        data: "earning_amount",
        title: "Earning Amount"
    }];

    var regularDataTable;

    var request_regular_earning_url = '/juncture/wp-content/themes/twentynineteen-child/request/regular_pairing.php';

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

    $( '#earnings-table ._request-withdrawal-btn' ).on( 'click', function() {

        $.ajax({
            url: request_regular_earning_url,
            data : {
                user_id : $user_id,
                purpose : 'request_withdrawal'
            },
            success: function( response ) {

                $.ajax({
                    url: '/juncture/wp-content/themes/twentynineteen-child/request/add_withdrawal_request.php',
                    data: {
                        user_id : $user_id,
                        pairing_data: JSON.parse( response )
                    },
                    success: function( response ) {

                        // console.log( response );

                    }
                });

            }
        })

    });

});