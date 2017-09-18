<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<script>
	window.onload = function() {
		var cnvs = document.getElementById("cnvs");
		if (cnvs.getContext) {
			var ctx = cnvs.getContext('2d');
			// 이미지 객체 생성
			var img = new Image();
			// 이미지 링크 지정
			img.src = 'http://cfile3.uf.tistory.com/image/145FE01449E08B865E3B5B';
			// onload event handler
			img.onload = function() {
				// canvas의 크기를 이미지 크기와 동일하게 맞춤
				cnvs.width = img.width;
				cnvs.height = img.height;

				// 2d context에 이미지를 그림
				ctx.drawImage(img, 0, 0);

				// 그려진 context에 개판 치기
				// 불상을 좀 더 강해보이는 얼굴로
				ctx.beginPath();
				ctx.moveTo(190, 80);
				ctx.lineTo(220, 150);

				var x1 = 180, y1 = 100;
				var x2 = 210, y2 = 90;

				while (x1 <= 200) {
					ctx.moveTo(x1, y1);
					ctx.lineTo(x2, y2);

					x1 += 5;
					y1 += 10;
					x2 += 5;
					y2 += 10;
				}
				ctx.stroke();
			}

		} else
			alert('canvas를 지원하지 않는 브라우저입니다.');
	}
</script>
</HEAD>

<BODY>
	<canvas id="cnvs"></canvas>
</BODY>
</HTML>
