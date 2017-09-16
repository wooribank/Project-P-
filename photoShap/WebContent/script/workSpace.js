/*--------------------------------------------변수 정의----------------------------------------*/

var menuChk = false,	/*-메뉴 클릭시 유지값*/
	menuChkId;			/*-메뉴 클릭시 받은 ID 유지값*/



/*--------------------------------------------이벤트 발생시 잡아오기----------------------------------------*/
$(document).ready(function(){
	$('.topChiElm').click(function(){
		
		alert("여기는 받나?");
	});
});


/*--------------------------------------------함수 정의----------------------------------------*/
function newFile(){
	
	
}
function topnavView() {/*화면 크기 조절에 의향 메뉴 조정*/
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

function menuItemView(id){/*메뉴 클릭 관련 보여주기 함수 */
	var i, allTopChi
	
	allTopChi = document.getElementsByClassName("topChi");
	for(i=0; i<allTopChi.length; i++){
		allTopChi[i].style.display = "none";
	}

	if(menuChkId !== id){
		document.getElementById(id).style.display = "block";
		menuChk = true;
		menuChkId = id;
	}else{
		menuChk = false;
		menuChkId = "";
	}
	
}