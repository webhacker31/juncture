$( document ).ready( function() {

    // $data_to_check = [];
    // $soon_to_check = [];

    // do {

    //     $.ajax({
    //         method: 'POST',
    //         url: '/juncture/wp-content/themes/twentynineteen-child/request/user_downline.php',
    //         data: {
    //             user_id : $user_id
    //         }
    //     }).done( function( response ) {
    
    //         console.log( response );
    
    //     });

    // } while ()

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

            var user_data_dl = JSON.parse( response );

            console.log( user_data_dl[0]['user_dl_left_id'] );

            var data = new google.visualization.DataTable();
    
            data.addColumn('string', 'Name');
            data.addColumn('string', 'Manager');
            data.addColumn('string', 'ToolTip');

            data.addRows([
                ['1', '', $user_id],
                ['2', $user_id, user_data_dl[0]['user_dl_left_id']],
                ['3', $user_id, user_data_dl[0]['user_dl_right_id']]
            ]);

            // Create the chart.
            var chart = new google.visualization.OrgChart(document.getElementById('binary'));
            // Draw the chart, setting the allowHtml option to true for the tooltips.
            chart.draw(data, {allowHtml:true});

        });

        // For each orgchart box, provide the name, manager, and tooltip to show.
        // data.addRows([
        //         ['1', '', ''],
        //         ['3', '1', ''],
        //         ['4', '2', ''],
        //         ['5', '2', ''],
        //         ['6', '3', ''],
        //         ['7', '3', ''],
        //         ['8', '4', ''],
        //         ['9', '4', ''],
        //         ['2', '1', ''],
        //         ['10', '5', ''],
        //         ['11', '5', ''],
        //         ['12', '6', ''],
        //         ['13', '6', ''],
        //         ['14', '7', ''],
        //         ['15', '7', ''],
        //         ['16', '8', ''],
        //         ['17', '8', ''],
        //         ['18', '9', ''],
        //         ['19', '9', ''],
        //         ['20', '10', ''],
        //         ['21', '10', ''],
        //         ['22', '11', ''],
        //         ['23', '11', ''],
        //         ['24', '12', ''],
        //         ['25', '12', ''],
        //         ['26', '13', ''],
        //         ['27', '13', ''],
        //         ['28', '14', ''],
        //         ['29', '14', ''],
        //         ['30', '15', ''],
        //         ['31', '15', '']
        //     ]);

    }

});