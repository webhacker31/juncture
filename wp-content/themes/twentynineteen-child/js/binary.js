$( document ).ready( function() {

    if ( $peek_user_binary_by_id != '' ) $user_id = $peek_user_binary_by_id;

    google.charts.load('current', {packages:["orgchart"]});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

        console.log( $home_url );

        $.ajax({
            method: 'POST',
            url: $home_url + '/request/user-downline/',
            data: {
                user_id : $user_id
            }
        }).done( function( response ) {

            var data = new google.visualization.DataTable();
    
            data.addColumn('string', 'Name');
            data.addColumn('string', 'Manager');
            data.addColumn('string', 'ToolTip');

            data.addRows( JSON.parse( response ) );

            var chart = new google.visualization.OrgChart(document.getElementById('binary'));

            chart.draw(data, {allowHtml:true});

            $( '#binary .google-visualization-orgchart-table tr td[title="Available"]' ).html( 'Available' ).css( 'opacity', '.3' );

            $( '.google-visualization-orgchart-node.google-visualization-orgchart-node-medium' ).on( 'click', function() {

                if ( $( this ).attr( 'title' ) != "Available" ) {

                    window.location.href = window.location.href.substring(0, window.location.href.indexOf('?')) + '?user_id=' + $user_id + '&peek_user_binary=' + $( this ).html();

                }
                
            });

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

    var request_regular_earning_url = $home_url + '/request/regular-pairing/';

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
                    url:  $home_url + '/request/admin-add-withdrawal/',
                    data: {
                        user_id : $user_id,
                        pairing_data: JSON.parse( response )
                    },
                    success: function( withdrawal_response ) {

                        var withdrawal_status = JSON.parse( withdrawal_response );

                        switch( withdrawal_status[ 'status' ] ) {

                            case 'Success':
                                $('#success-withdrawal-modal').modal('show')
                                break;

                            case 'Failed':
                                $('#failed-withdrawal-modal').modal('show')
                                break;

                        }

                    }
                });

            }
        })

    });

});