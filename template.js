var name = data.nomeCompleto;
var words = name.substring(name.indexOf(" "), name.length).toLocaleLowerCase();
return words;
