
/**
* @author whutchinson
*/
// Example page: http://health.ucsd.edu/specialties/surgery/bariatric/
// This JS is grabbing the number of global nav items and adjusting the padding on each so that the nav spans the full distance with out running over.
// This is useful because our sites are set up using templates and we use one template for all of our main sub sites,
// but each sub site can have any number of nav items.
// Also, our users can add items to the nav but they do not have access to adjust the styles,
// so this keeps us from having to constantly adjust the navigation styles.
$(function() {
// Get the current width of all nav items
function currentWidth() {
var total = 0;
$('#globalNav ul.rmRootGroup > li.rmItem').each(function() {
total += parseInt($(this).outerWidth(), 10);
});
return total;
}
// Get the total number of nav items
function totalItems() {
var total = $('#globalNav ul.rmRootGroup > li.rmItem').length;
return total;
}
// Get the current padding on nav items
function currentPadding() {
return parseInt($('#globalNav ul.rmRootGroup > li.rmItem > a.rmLink').css('padding-left'), 10);
}
// Get glabal nav overall width
// Had to subtract one because FF on Mac was pushing the last item out if the total item width matched the global nav width
var width = $('#globalNav').width()-1;
var cw = currentWidth();
var ti = totalItems();
var cp = currentPadding();
var difference = Math.abs(cw - width);
var shorten = 0;
var widen = 0;
var shorterPadding = 0;
var widerPadding = 0;
// if current width is greater than the global nav width, shorten the padding
if (cw > width) {
shorten = Math.ceil((difference/ti)/2);
shorterPadding = (cp - shorten);
$('#globalNav ul.rmRootGroup > li.rmItem > a.rmLink').css({'padding-left' : shorterPadding + 'px', 'padding-right' : shorterPadding + 'px'});
// if current width is less than the global nav width, add to padding
} else if (cw < width) {
widen = Math.floor((difference/ti)/2);
widerPadding = (cp + widen);
$('#globalNav ul.rmRootGroup > li.rmItem > a.rmLink').css({'padding-left' : widerPadding + 'px', 'padding-right' : widerPadding + 'px'});
}
});
