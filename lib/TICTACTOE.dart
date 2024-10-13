import 'dart:io';
void main(List<String> args) {

  var aBusy = false;
  var bBusy = false;
  var cBusy = false;
  var dBusy = false;
  var eBusy = false;
  var fBusy = false;
  var gBusy = false;
  var hBusy = false;
  var iBusy = false;

   var a = " ";
   var b = " ";
   var c = " ";
   var d = " ";
   var e = " ";
   var f = " ";
   var g = " ";
   var h = " ";
   var i = " ";

  print(" " + a + " | " + b + " | " + c +" ");
  print("---|---|---");
  print(" " + d + " | " + e + " | " + f +" ");
  print("---|---|---");
  print(" " + g + " | " + h + " | " + i +" ");

  while(!((a == "O")&&(b == "O")&&(c == "O") || 
    (d == "O")&&(e == "O")&&(f == "O") ||
    (g == "O")&&(h == "O")&&(i == "O") ||
    
    (a == "O")&&(d == "O")&&(g == "O") ||
    (b == "O")&&(e == "O")&&(h == "O") ||
    (c == "O")&&(f == "O")&&(i == "O") ||
    
    (a == "O")&&(e == "O")&&(i == "O") ||
    (c == "O")&&(e == "O")&&(g == "O")) ||


    !((a == "X")&&(b == "X")&&(c == "X") || 
    (d == "X")&&(e == "X")&&(f == "X") ||
    (g == "X")&&(h == "X")&&(i == "X") ||
    
    (a == "X")&&(d == "X")&&(g == "X") ||
    (b == "X")&&(e == "X")&&(h == "X") ||
    (c == "X")&&(f == "X")&&(i == "X") ||
    
    (a == "X")&&(e == "X")&&(i == "X") ||
    (c == "X")&&(e == "X")&&(g == "X") ) ||

    !(aBusy && bBusy && cBusy && dBusy && eBusy && fBusy && gBusy && hBusy && iBusy)
    ){

  


  print("jugador < X > elegir una de las nueve posiciones del tablero (digitos del 1 al 9)");
  var inputX = stdin.readLineSync();
  var posX = int.tryParse(inputX??''); //Stdin.readLineSync(); elegir del usuario
  switch(posX){
    case 1:
      if(aBusy == true){   //  <== cambiar todo a true
        print("posicion ocupada");
        continue;
      }else{
        a = "X";
        aBusy = true;
      }
      break;
    case 2:
      if(bBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        b = "X";
        bBusy = true;
      }
      break;
    case 3:
      if(cBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        c = "X";
        cBusy = true;
      }
      break;
    case 4:
      if(dBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        d = "X";
        dBusy = true;
      }
      break;
    case 5:
      if(eBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        e = "X";
        eBusy = true;
      }
      break;
    case 6:
      if(fBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        f = "X";
        fBusy = true;
      }
      break;
    case 7:
      if(gBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        g = "X";
        gBusy = true;
      }
      break;
    case 8:
      if(hBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        h = "X";
        hBusy = true;
      }
      break;
    case 9:
      if(iBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        i = "X";
        iBusy = true;
      }
      break;
    default:
      print("posicion por fuera del tablero");
      return;

  }


  print(" " + a + " | " + b + " | " + c +" ");
  print("---|---|---");
  print(" " + d + " | " + e + " | " + f +" ");
  print("---|---|---");
  print(" " + g + " | " + h + " | " + i +" ");

    if((a == "X")&&(b == "X")&&(c == "X") || 
    (d == "X")&&(e == "X")&&(f == "X") ||
    (g == "X")&&(h == "X")&&(i == "X") ||
    
    (a == "X")&&(d == "X")&&(g == "X") ||
    (b == "X")&&(e == "X")&&(h == "X") ||
    (c == "X")&&(f == "X")&&(i == "X") ||
    
    (a == "X")&&(e == "X")&&(i == "X") ||
    (c == "X")&&(e == "X")&&(g == "X") ){
      print("============================");
      print("ganador el jugador < X >");
      print("============================");
      break;
    }

    if((aBusy && bBusy && cBusy && dBusy && eBusy && fBusy && gBusy && hBusy && iBusy)){
      print("============================");
      print("empate");
      print("============================");
      break;
    }


  print("jugador < O > elegir una de las nueve posiciones del tablero (digitos del 1 al 9)");
  var inputO = stdin.readLineSync();
  var posO = int.tryParse(inputO??' ');
  switch(posO){
    case 1:
      if(aBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        a = "O";
        aBusy = true;
      }
      break;
    case 2:
      if(bBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        b = "O";
        bBusy = true;
      }
      break;
    case 3:
      if(cBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        c = "O";
        cBusy = true;
      }
      break;
    case 4:
      if(dBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        d = "O";
        dBusy = true;
      }
      break;
    case 5:
      if(eBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        e = "O";
        eBusy = true;
      }
      break;
    case 6:
      if(fBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        f = "O";
        fBusy = true;
      }
      break;
    case 7:
      if(gBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        g = "O";
        gBusy = true;
      }
      break;
    case 8:
      if(hBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        h = "O";
        hBusy = true;
      }
      break;
    case 9:
      if(iBusy == true){
        print("posicion ocupada");
         continue;
      }else{
        i = "O";
        iBusy = true;
      }
      break;
    default:
      print("posicion por fuera del tablero");
      return;

  }

  print(" " + a + " | " + b + " | " + c +" ");
  print("---|---|---");
  print(" " + d + " | " + e + " | " + f +" ");
  print("---|---|---");
  print(" " + g + " | " + h + " | " + i +" ");

  if((a == "O")&&(b == "O")&&(c == "O") || 
    (d == "O")&&(e == "O")&&(f == "O") ||
    (g == "O")&&(h == "O")&&(i == "O") ||
    
    (a == "O")&&(d == "O")&&(g == "O") ||
    (b == "O")&&(e == "O")&&(h == "O") ||
    (c == "O")&&(f == "O")&&(i == "O") ||
    
    (a == "O")&&(e == "O")&&(i == "O") ||
    (c == "O")&&(e == "O")&&(g == "O")){

      print("============================");
      print("ganador es el jugador < O >");
      print("============================");
      break;
    }

    if((aBusy && bBusy && cBusy && dBusy && eBusy && fBusy && gBusy && hBusy && iBusy)){
      print("============================");
      print("empate");
      print("============================");
      break;
    }

    }
}