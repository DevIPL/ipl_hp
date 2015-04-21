// Form validate
function validate(form) {
    var name = form.n.value;
    var kana = form.k.value;
    var mail = form.m.value;
    var address = form.a.value;
    var phone = form.t.value;
    var age = form.ag.value;
    var background = form.bg.value;
    var career = form.cr.value;
    if (name == "" || kana == "" || mail == "" || address == "" || phone == "" || age == "" || background == "" || career=="" ) {
        return false;
    }

    return true;
}
