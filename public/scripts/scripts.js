
var slectedSeats = 0;
function showDiv() {
	
	
		document.getElementById('seat').className = "visibleDiv";
	
}

function blockticket(elementid)
{
	
	var wanttoselect = document.getElementById('cmbQty').value
	if(elementid)
	{
		var index = elementid.lastIndexOf('_')+1;
		var seatindex = elementid.substring(index,index+2);
		var seatcharacter = document.getElementById(elementid).parentNode.childNodes[0].innerHTML;

		var seat = seatcharacter + seatindex
		
		var currentimage = document.getElementById(elementid).childNodes[0].src.substring(41,43);
		if(currentimage == "W_")
		{
			if(wanttoselect > slectedSeats)
			{
				slectedSeats = slectedSeats+1;
				document.getElementById('selectedtickets').value = document.getElementById('selectedtickets').value +  seat  +"," 
				document.getElementById(elementid).childNodes[0].src = "//cnt.in.bookmyshow.com/bmsin/seats/G_chair.gif?v1";				
			}
			else
			{
				alert('You have already selected required seats.')
			}
		}
		else
		{
			document.getElementById('selectedtickets').value =document.getElementById('selectedtickets').value.replace(seat +",",'');			
			slectedSeats = slectedSeats-1;
			document.getElementById(elementid).childNodes[0].src = "//cnt.in.bookmyshow.com/bmsin/seats/W_chair.gif?v1";
		}
		
		
	}	
}

function togglemoviestheatres()
{

}

$(document).ready(function() {
$('#bookingtype_Movie').bind('click', function() {
	document.getElementById('cmbMovie').className = "cmbBox";
	document.getElementById('cmbTheatre').className =" hiddenDiv";
});
$('#bookingtype_Cinema').bind('click', function() {
	document.getElementById('cmbTheatre').className = "cmbBox";
	document.getElementById('cmbMovie').className =" hiddenDiv";
});
});