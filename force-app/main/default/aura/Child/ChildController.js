({
	fireEvent : function(cmp, evt, hpr) {
        alert("Yes,I get Called");
        var e = cmp.getEvent("myEvt");
        e.setParams({"myText":"Last Class fro Aura"});
        e.fire();
		
	}
})