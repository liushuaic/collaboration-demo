$(function() {
	var TxtRotate = function(el, toRotate, period) {
		this.toRotate = toRotate;
		this.el = el;
		this.loopNum = 0;
		this.period = parseInt(period, 10) || 2000;
		this.txt = '';
		this.tick();
		this.isDeleting = false;
	};

	TxtRotate.prototype.tick = function() {
		var i = this.loopNum % this.toRotate.length;
		var fullTxt = this.toRotate[i];

		if(this.isDeleting) {
			this.txt = fullTxt.substring(0, this.txt.length - 1);
		} else {
			this.txt = fullTxt.substring(0, this.txt.length + 1);
		}
		$(".js_show_input").text(this.txt);
		//		this.el.innerHTML = '<span class="wrap">' + this.txt + '</span>';

		var that = this;
		var delta = 300 - Math.random() * 100;

		if(this.isDeleting) {
			delta /= 2;
		}

		//		if(!this.isDeleting && this.txt === fullTxt) {
		//			delta = this.period;
		//			this.isDeleting = true;
		//		} else if(this.isDeleting && this.txt === '') {
		//			this.isDeleting = false;
		//			this.loopNum++;
		//			delta = 500;
		//		}

		setTimeout(function() {
			that.tick();
		}, 300);
		setTimeout(function() {
			$(".js_show_input").css("border","0");
		}, 6000);
	};

	window.onload = function() {
		var elements = $('.js_txt-rotate');
		for(var i = 0; i < elements.length; i++) {
			var toRotate = elements[i].getAttribute('data-rotate');
			var period = elements[i].getAttribute('data-period');
			if(toRotate) {
				new TxtRotate(elements[i], JSON.parse(toRotate), period);
			}
		}
		// INJECT CSS
	};
})