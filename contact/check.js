// Form validate
function validate(form) {
    var name = form.n.value;
    var kana = form.k.value;
    var mail = form.m.value;
    var comment = form.c.value;
    var phone = form.t.value;
    if (name == "" || kana == "" || mail == "" || comment == "" || phone == "") {
        return false;
    }

    return true;
}
