mainInputId = 'main';

function input(el) {
    var container = document.getElementById(mainInputId);
    switch (container.className) {
        case 'cc_number':
            inputCCNumber(container, el);
            break;
        case 'pin':
            inputPin(container, el);
            break;
        case 'withdraw':
            inputWithdraw(container, el);
            break;
    }
}

function inputCCNumber(container, el) {
    var len = container.value.length;
    if (len <= 18) {
        container.value += el.value;
        origLen = container.value.replace(/-/g, '').length
        if (origLen % 4 == 0 && Math.floor(origLen / 4) <= 3) {
            container.value += '-'
        }
    }
}

function inputPin(container, el) {
    var len = container.value.length;
    if (len < 4) {
        container.value += el.value;
    }
}

function inputWithdraw(container, el) {
    container.value += el.value;
}

function clearInput() {
    document.getElementById(mainInputId).value = '';
}

function test(data) {
    document.getElementById(mainInputId).value = data;
}

function toggleVisibility(id) {
    var e = document.getElementById(id);
    if (e.style.display == 'block') {
        e.style.display = 'none';
    } else {
        e.style.display = 'block';
    }
}