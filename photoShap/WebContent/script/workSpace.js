function topnavView() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

function menuItemView(id){
	var i, allTopChi
	allTopChi = document.getElementsByClassName("topChi");
	for(i=0; i<allTopChi.length; i++){
		allTopChi[i].style.display = "none";
	}
	
	document.getElementById(id).style.display = "block";
}