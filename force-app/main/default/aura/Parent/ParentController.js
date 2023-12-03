({
	handleEvent : function(cmp, evt, hpr) {
        alert("Yes, I am ready to handle the Event");
        var v = evt.getParam("myText");
        alert(v);
		
	}
})