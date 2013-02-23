//Proptotype utilities for makikng stuff fancier

function clearChildren(elem) {
    // Clear ALL the DOM elements out of a node
    parent = $(elem);
    $A(parent.childNodes).each(function(e){
            e.parentNode.removeChild(e);
    });
}

function addMenu(elem,id,text) {
    // add an element to a menu item
    //console.log ( "ok add el" , elem , id , text );

    var el = new Element('option', { 'value': id });
    el.update(text);
    // append it to the parent menu list
    $(elem).insert(el);
}

function dataToMenu( data , mydom , myval , mytext , empty ) {
    // fill a menu with a JSON hash
    // the 'mydom' value is in the menu (DOM object)
    // the 'myval' is the field to go into value in the menu
    // the 'mytext' is the field to go into the display text in the menu

    // clear out the menu first
    clearChildren(mydom);

    // prepend an empty value
    if ( empty ) {
        addMenu($(mydom), "", empty );
    }

    //console.log ( "dataToMenu, here..." , mydom , data );

    // assume we are passed an array

    // walk the key/value adding them to the menu
    // walk the array of hashes
    data.each( function (rec) { 
        var mval = $H(rec).get(myval);
        var mtext = $H(rec).get(mytext);
        addMenu( mydom, mval, mtext );

        //console.log ( "dtoM : add " , mydom , mval , mtext );

    } );
}



