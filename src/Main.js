exports.filter = function( pred ) {
    return function( arr ) {
        return arr.filter( pred );
    };
};