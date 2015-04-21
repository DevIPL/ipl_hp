// Form validate
function validate(form) {
    var name = form.n.value;
    var kana = form.k.value;
    var mail = form.m.value;
    var address = form.a.value;
    var phone = form.t.value;
    var school = form.sl.value;
    var gakka = form.ka.value;
    if (name == "" || kana == "" || mail == "" || address == "" || phone == "" || school == "" || gakka == "" ) {
        return false;
    }

    return true;
}
