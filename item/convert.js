//パース済み配列を
//htmlにチェンジするプログラム



function parse(str){
  list = str.split("\n")
  
  ret = []
  danraku = []


  for(var i=0; i < list.length; i++){
    line = list[i];
    
    if(line.match(/^＋/)){
      ret.push(danraku);
      danraku = [];
      ret.push(line);
      continue;
    }

    if(line.match(/^■/)){
      ret.push(danraku);
      danraku = [];
      ret.push(line);
      continue;
    }

    if(line == ""){
      ret.push(danraku);
      danraku = [];
      continue;
    }
    danraku.push(line);
  }
  ret.push(danraku);

  return ret;
}


function print(str){
  WScript.Echo(str);
//	document.getElementById("converted").innerHTML += str;
}

//TAGS
function h2(value){
  return "<h2>"+value+"</h2>";
}

function h3(value){
  return "<h3>"+value+"</h3>";
}

function div(list){
  str = "";
  if(list.length == 0){
    return str
  }

  str += "<div>\n";
  for(i = 0; i < list.length; i++){
    str += list[i];
  }
  str += "</div>\n";
  
  return str;
}

function p(list){
  for(i = 0; i < list.length; i++){
    list[i] = "\t"+list[i];
  }
  return "<p>\n"+list.join("<br />\n")+"\n</p>\n";
}

function convert(text){
  list = parse(text);
  divlist = [];
  
  for(var i=0; i < list.length; i++){
    line = list[i];
    if(typeof(line)=="object"){
      if(line.length > 0){
          divlist.push(p(line));
      }
      continue;
    }
    if(line.match(/^■/)){
      print(div(divlist)+"\n");
      divlist = [];
      line = line.replace(/^■/,"");
      print(h2(line)+"\n");
      continue;
    }
    if(line.match(/^＋/)){
      print(div(divlist)+"\n");
      divlist = [];
      line = line.replace(/^＋/,"");
      print(h3(line)+"\n");
      continue;
    }
  }
  print(div(divlist)+"\n");
}




