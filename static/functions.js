mainInputId = "main";

function input(e) {
    var cc = document.getElementById(mainInputId);
    var len = cc.value.length;
    if (len <= 18) {
        cc.value += e.value;
        origLen = cc.value.replace(/-/g, "").length
        if (origLen % 4 == 0 && Math.floor(origLen / 4) <= 3) {
            cc.value += "-"
        }
    }
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