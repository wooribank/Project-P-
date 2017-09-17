/*--------------------------------------------변수 정의----------------------------------------*/

var menuChk = false,	/*-메뉴 클릭시 유지값*/
	menuChkId,			/*-메뉴 클릭시 받은 ID 유지값*/
	canvas;				/*-나중에 캔버스 배열로 받아 유지해줄 값*/

/*--------------------------------------------함수 정의----------------------------------------*/
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

/*------------------------------상세 메뉴 클릭시  작업할 함수들------------------------------*/

/*새로운 파일 생성*/
document.getElementById("newFile").addEventListener("click", function(){
    
	
});
/*기존 이미지 파일 열기 생성*/
document.getElementById("openFile").addEventListener("click", function(){
	var fileSelector, img, context, iw, ih; 
	canvas = document.getElementById("canvas");
	context = canvas.getContext('2d');
	
	fileSelector = document.createElement("input");
	fileSelector.setAttribute("type", "file");
	fileSelector.click();
	
	/*경로 이미지 불러오기*/
	img = new Image();
	img.src = fileSelector.value;
	img.style.display = "";
	
	canvas.style.width = img.style.width;
	canvas.style.height = img.style.height;
	/*캔버스로 불러오기*/
	img.onload = function(){
		context.drawImage(img, 0, 0);
	}
	
});

