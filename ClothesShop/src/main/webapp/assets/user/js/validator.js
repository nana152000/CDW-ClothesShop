// Đối tượng `Validator`
function Validator(options) {
	function getParent(element, selector) {
		while (element.parentElement) {
			if (element.parentElement.matches(selector)) {
				return element.parentElement;
			}
			element = element.parentElement;
		}
	}

	var selectorRules = {};

	// Hàm thực hiện validate
	function validate(inputElement, rule) {
		var errorElement = getParent(inputElement, options.formGroupSelector).querySelector(options.errorSelector);
		var errorMessage;

		// Lấy ra các rules của selector
		var rules = selectorRules[rule.selector];

		// Lặp qua từng rule & kiểm tra
		// Nếu có lỗi thì dừng việc kiểm
		for (var i = 0; i < rules.length; ++i) {
			switch (inputElement.type) {
				case 'radio':
				case 'checkbox':
					errorMessage = rules[i](
						formElement.querySelector(rule.selector + ':checked')
					);
					break;
				default:
					errorMessage = rules[i](inputElement.value);
			}
			if (errorMessage) break;
		}

		if (errorMessage) {
			errorElement.innerText = errorMessage;
			getParent(inputElement, options.formGroupSelector).classList.add('invalid');
		} else {
			errorElement.innerText = '';
			getParent(inputElement, options.formGroupSelector).classList.remove('invalid');
		}

		return !errorMessage;
	}

	// Lấy element của form cần validate
	var formElement = document.querySelector(options.form);
	if (formElement) {
		// Khi submit form
		formElement.onsubmit = function(e) {
			e.preventDefault();
			var isFormValid = true;

			// Lặp qua từng rules và validate
			options.rules.forEach(function(rule) {
				var inputElement = formElement.querySelector(rule.selector);
				var isValid = validate(inputElement, rule);
				if (!isValid) {
					isFormValid = false;
				}
			});

			if (isFormValid) {
				// Trường hợp submit với javascript
				if (typeof options.onSubmit === 'function') {
					var enableInputs = formElement.querySelectorAll('[name]');
					var formValues = Array.from(enableInputs).reduce(function(values, input) {

						switch (input.type) {
							case 'radio':
								values[input.name] = formElement.querySelector('input[name="' + input.name + '"]:checked').value;
								break;
							case 'checkbox':
								if (!input.matches(':checked')) {
									values[input.name] = '';
									return values;
								}
								if (!Array.isArray(values[input.name])) {
									values[input.name] = [];
								}
								values[input.name].push(input.value);
								break;
							case 'file':
								values[input.name] = input.files;
								break;
							default:
								values[input.name] = input.value;
						}

						return values;
					}, {});
					options.onSubmit(formValues);
				}
				// Trường hợp submit với hành vi mặc định
				else {
					formElement.submit();
				}
			}
		}

		// Lặp qua mỗi rule và xử lý (lắng nghe sự kiện blur, input, ...)
		options.rules.forEach(function(rule) {

			// Lưu lại các rules cho mỗi input
			if (Array.isArray(selectorRules[rule.selector])) {
				selectorRules[rule.selector].push(rule.test);
			} else {
				selectorRules[rule.selector] = [rule.test];
			}

			var inputElements = formElement.querySelectorAll(rule.selector);

			Array.from(inputElements).forEach(function(inputElement) {
				// Xử lý trường hợp blur khỏi input
				inputElement.onblur = function() {
					validate(inputElement, rule);
				}

				// Xử lý mỗi khi người dùng nhập vào input
				inputElement.oninput = function() {
					var errorElement = getParent(inputElement, options.formGroupSelector).querySelector(options.errorSelector);
					errorElement.innerText = '';
					getParent(inputElement, options.formGroupSelector).classList.remove('invalid');
				}
			});
		});
	}

}


Validator.isRequired = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			return value ? undefined : message || 'Vui lòng nhập trường này'
		}
	};
}
Validator.isBirthDay = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			var regex = /^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$/;
			return regex.test(value) ? undefined : message || 'Trường này phải là ngày sinh có định dạng dd/mm/yyyy';
		}
	};
}
Validator.isEmail = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			return regex.test(value) ? undefined : message || 'Trường này phải là email';
		}
	};
}

Validator.minLength = function(selector, min, message) {
	return {
		selector: selector,
		test: function(value) {
			return value.length >= min ? undefined : message || `Vui lòng nhập tối thiểu ${min} kí tự`;
		}
	};
}

Validator.isName = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			var regex = /[a-zỳọáầảấờễàạằệếýộậốũứĩõúữịỗìềểẩớặòùồợãụủíỹắẫựỉỏừỷởóéửỵẳẹèẽổẵẻỡơôưăêâđ']/;
			return regex.test(value) ? undefined : message || 'Trường này phải là mmmm';
		}
	};
}

Validator.isNumber = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			var regex = /^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$/;
			return regex.test(value) ? undefined : message || 'Số điện thoại gồm 10 số nếu có nhập số 0 ở đầu tiên. Nếu không nhập 0 thì còn 9 số.';
		}
	};
}

Validator.isConfirmed = function(selector, getConfirmValue, message) {
	return {
		selector: selector,
		test: function(value) {
			return value === getConfirmValue() ? undefined : message || 'Giá trị nhập vào không chính xác';
		}
	}
}
