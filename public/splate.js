var json  = {} ;

function load_data() {
    console.log( "loading" );
    new Ajax.Request('public/sample-report.json', {
        method:'get',
        onSuccess: function(transport){
            json = transport.responseText.evalJSON();
            console.log ( "loaded" , json );
            render_data( json );
        }
    });
}

function render_data ( json ) {
    // called when the data is loaded, this is the main processor
    var data = json.data ;
    console.log ( "loaded" , json );

    // get the list of places
    list_places( data );

    // and by default we will display the first record
    display_record( data[0] , json.categories );

}

function list_places ( data ) {
    // walk the array of data stores and produce a list

    // generate a hash for the menu to popukate
    //console.log ( "lp data" , data );

    // populate the menu
    dataToMenu( data , 'placelist' , 'tid' , 'name' , "" );

}

function selectRecord ( id , json ) {
    // reference the global data struct

    //console.log ( id , json );

    // find the record that matches the id
    json.data.each( function(rec) {
        if ( rec.tid === id ) {
            console.log ( "found record" , rec );
            display_record( rec , json.categories );
        }
    });
}

function display_record( rec , categories ) {
    // raw rendering functin for a single record,
    // we also pass a list of categories as an array

    console.log ( rec ) ;

    // dynamically walk the categories , and update some fields
    categories.each( function(categoryName){
        updateCategory( categoryName , rec );
        // send the main value
    });

    // then update the base fields
    $('name').update( rec.name );
    $('rating').update( rec.rating );
    $('score').update( rec.score );
}

function updateCategory( cat , rec ) {
    // update an individual line item, dynamically
    // pass the line and the overall record
    if ( ! $(cat) ) { return; }
    if ( ! rec ) { return; }

    // ok, continue
    console.log ( "in : updating line :" , cat );

    // Generate a URL for google charts
    var url = "http://chart.apis.google.com/chart?";
        url += "?chbh=a";
        url += "&chs=110x20";
        url += "&cht=bhs";
        url += "&chco=A2C180";
        //url += "&chd=t:5";
        url += "&chd=t:"+rec[cat].percentage;
        //url += "&chds=0,10";
        url += "&chds=0,"+rec[cat].max_points;

        console.log( rec[cat].percentage );
        console.log( rec[cat].max_points );

        // scaling : normalist and constant
        //url += "&chds=0,93.333";

/*

   &chbh=a
   &chs=300x225
   &cht=bhs
   &chco=A2C180
   &chd=t:10,50,60,80,40,60,30
        // now walk the values in the sub data to chart them
        // the 'NAME' is based on category title
        // and we just extract the values
        var scores = $H(rec[cat + '_detail']).values();
        var scoreString = scores.join();
        url += "&chd=t:"+scoreString;

        //url += "&chtt=Vertical+bar+chart";
*/

    var imgUrl = "<img src=" + url + ">";

    var chartID = "g_" + cat ;
     

    $(chartID).update( imgUrl );
    $(cat).update( rec[cat].points );

}

Event.observe(window, 'load', function() {

    load_data();

    // add observable behaviours
    $('placelist').observe('change' , function() {
        // 
        var id = $('placelist').getValue();
        console.log ( "select!!" , id );

        // we're going to assume the JSON is a global!!
        selectRecord( id , json );

    });

});

