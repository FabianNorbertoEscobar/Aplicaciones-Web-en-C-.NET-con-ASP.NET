
function validarPalabras(sender, args) {
    var nombre = args.Value.toLowerCase();
    
    if (nombre.indexOf("administrador") != -1) {
        args.IsValid = false;
    }
    else {
        args.IsValid = true;
    }
}

