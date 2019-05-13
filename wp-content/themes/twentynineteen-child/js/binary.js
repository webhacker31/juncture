$( document ).ready( function() {

    $data_to_check = [];
    $soon_to_check = [];

    do {

        $.ajax({
            method: 'POST',
            url: '/juncture/wp-content/themes/twentynineteen-child/request/user_downline.php',
            data: {
                user_id : $user_id
            }
        }).done( function( response ) {
    
            console.log( response );
    
        });

    } while ()

});