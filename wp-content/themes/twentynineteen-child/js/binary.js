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

            console.log( JSON.parse( response ) );

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

});