function confirmAcceptInvoice(params) {
	//If the validation was successful, ask the user the confirmation
	if (params.returnValue) {
		try {
			var message = params.xml.getElementsByTagName("confirmationMessage").item(0).firstChild.data;
			if (!confirm(message)) {
				return false;
			}
		} catch (exception) {
		}
	}
}

Behaviour.register({
	'#backButton': function(button) {
		button.onclick = function() {
			var params = $H();
			params['memberId'] = memberId;
			params['owner'] = isEmpty(memberId) ? "0" : memberId;
			params['invoiceId'] = invoiceId;
			backToLastLocation(params);
		}
	},
	
	'img.print': function(img) {
		setPointer(img);
		img.onclick = function() {
			printResults(null, context + "/do/printInvoice?invoiceId=" + img.getAttribute("invoiceId"), 500, 300);
		}
	},
	
	'#acceptForm': function(form) {
		form.onsubmit = function() {
			this.elements["transferTypeId"].value = getValue("transferType");
		}
	},
	
	'#denyForm': function(form) {
		form.onsubmit = function() {
			return confirm(denyMessage);
		}
	},
	
	'#cancelForm': function(form) {
		form.onsubmit = function() {
			return confirm(cancelMessage);
		}
	},
	
	'#paymentLink': function(a) {
		setPointer(a);
		a.onclick = function() {
			self.location = pathPrefix + "/viewScheduledPayment?paymentId=" + a.getAttribute("paymentId");
		}
	},
	
	'#transferLink': function(a) {
		setPointer(a);
		a.onclick = function() {
			self.location = pathPrefix + "/viewTransaction?transferId=" + a.getAttribute("transferId");
		}
	}
	
});