
uses
GraphABC;

var
  c, t1, t2, s1, s2, e, p, k, q, m: integer;
  isdeletecircle: boolean;
  comp: integer;
{***********************************************************************}

type
  aray24 = array [1..24, 1..2] of integer;
  aray60 = array [1..3, 1..20] of integer;
  map24 = array [1..24] of integer;
  aray40 = array [1..20, 1..2] of integer;

var
  _3NumInLine: aray60;

var
  CircleCoord: aray24;

var
  three_in_line: aray60;

var
  maps: map24;

var
  mapsA_flag: aray40;

{***********************************************************************}

procedure WriteCentreCoordinates();
begin
  
  _3NumInLine[1, 1] := 8;
  _3NumInLine[2, 1] := 16;
  _3NumInLine[3, 1] := 24;
  _3NumInLine[1, 2] := 1;
  _3NumInLine[2, 2] := 2;
  _3NumInLine[3, 2] := 3;
  _3NumInLine[1, 3] := 3;
  _3NumInLine[2, 3] := 4;
  _3NumInLine[3, 3] := 5;
  _3NumInLine[1, 4] := 5;
  _3NumInLine[2, 4] := 6;
  _3NumInLine[3, 4] := 7;
  _3NumInLine[1, 5] := 7;
  _3NumInLine[2, 5] := 1;
  _3NumInLine[3, 5] := 8;
  _3NumInLine[1, 6] := 10;
  _3NumInLine[2, 6] := 9;
  _3NumInLine[3, 6] := 11;
  _3NumInLine[1, 7] := 12;
  _3NumInLine[2, 7] := 11;
  _3NumInLine[3, 7] := 13;
  _3NumInLine[1, 8] := 14;
  _3NumInLine[2, 8] := 13;
  _3NumInLine[3, 8] := 15;
  _3NumInLine[1, 9] := 16;
  _3NumInLine[2, 9] := 15;
  _3NumInLine[3, 9] := 9;
  _3NumInLine[1, 10] := 17;
  _3NumInLine[2, 10] := 18;
  _3NumInLine[3, 10] := 19;
  _3NumInLine[1, 11] := 19;
  _3NumInLine[2, 11] := 20;
  _3NumInLine[3, 11] := 21;
  _3NumInLine[1, 12] := 21;
  _3NumInLine[2, 12] := 22;
  _3NumInLine[3, 12] := 23;
  _3NumInLine[1, 13] := 24;
  _3NumInLine[2, 13] := 23;
  _3NumInLine[3, 13] := 17;
  _3NumInLine[1, 14] := 9;
  _3NumInLine[2, 14] := 1;
  _3NumInLine[3, 14] := 17;
  _3NumInLine[1, 15] := 2;
  _3NumInLine[2, 15] := 10;
  _3NumInLine[3, 15] := 18;
  _3NumInLine[1, 16] := 11;
  _3NumInLine[2, 16] := 3;
  _3NumInLine[3, 16] := 19;
  _3NumInLine[1, 17] := 4;
  _3NumInLine[2, 17] := 12;
  _3NumInLine[3, 17] := 20;
  _3NumInLine[1, 18] := 13;
  _3NumInLine[2, 18] := 5;
  _3NumInLine[3, 18] := 21;
  _3NumInLine[1, 19] := 6;
  _3NumInLine[2, 19] := 14;
  _3NumInLine[3, 19] := 22;
  _3NumInLine[1, 20] := 15;
  _3NumInLine[2, 20] := 7;
  _3NumInLine[3, 20] := 23;
  
  CircleCoord[1, 1] := 16 + 5 + 5; 
  CircleCoord[1, 2] := 16 + 5 + 20;
  CircleCoord[2, 1] := 210 + 5 + 5;
  CircleCoord[2, 2] := 16 + 5 + 20;
  CircleCoord[3, 1] := 400 + 5 + 5;
  CircleCoord[3, 2] := 16 + 5 + 20;
  CircleCoord[4, 1] := 400 + 5 + 5;
  CircleCoord[4, 2] := 208 + 5 + 20;
  CircleCoord[5, 1] := 400 + 5 + 5;
  CircleCoord[5, 2] := 400 + 5 + 20;
  CircleCoord[6, 1] := 210 + 5 + 5;
  CircleCoord[6, 2] := 400 + 5 + 20;
  CircleCoord[7, 1] := 10 + 6 + 5 + 5;
  CircleCoord[7, 2] := 400 + 5 + 20;
  CircleCoord[8, 1] := 16 + 5 + 5;
  CircleCoord[8, 2] := 208 + 5 + 20;
  CircleCoord[9, 1] := 60 + 5 + 5;
  CircleCoord[9, 2] := 60 + 5 + 20;
  CircleCoord[10, 1] := 210 + 5 + 5;
  CircleCoord[10, 2] := 60 + 5 + 20;
  CircleCoord[11, 1] := 350 + 5 + 5;
  CircleCoord[11, 2] := 60 + 5 + 20;
  CircleCoord[12, 1] := 350 + 5 + 5;
  CircleCoord[12, 2] := 208 + 5 + 20;
  CircleCoord[13, 1] := 350 + 5 + 5;
  CircleCoord[13, 2] := 350 + 5 + 20;
  CircleCoord[14, 1] := 210 + 5 + 5;
  CircleCoord[14, 2] := 350 + 5 + 20;  
  CircleCoord[15, 1] := 60 + 5 + 5;
  CircleCoord[15, 2] := 350 + 5 + 20;
  CircleCoord[16, 1] := 60 + 5 + 5;
  CircleCoord[16, 2] := 208 + 5 + 20;
  CircleCoord[17, 1] := 110 + 5 + 5;
  CircleCoord[17, 2] := 110 + 5 + 20;
  CircleCoord[18, 1] := 210 + 5 + 5;
  CircleCoord[18, 2] := 110 + 5 + 20;
  CircleCoord[19, 1] := 300 + 5 + 5;
  CircleCoord[19, 2] := 110 + 5 + 20;
  CircleCoord[20, 1] := 300 + 5 + 5;
  CircleCoord[20, 2] := 208 + 5 + 20;
  CircleCoord[21, 1] := 300 + 5 + 5;
  CircleCoord[21, 2] := 300 + 5 + 20;
  CircleCoord[22, 1] := 210 + 5 + 5;
  CircleCoord[22, 2] := 300 + 5 + 20;
  CircleCoord[23, 1] := 110 + 5 + 5;
  CircleCoord[23, 2] := 300 + 5 + 20;
  CircleCoord[24, 1] := 110 + 5 + 5;
  CircleCoord[24, 2] := 208 + 5 + 20;
  
  
end;
{***********************************************************************}

//рисование таблицы
procedure tablo();
var
  j: integer;
begin
  
  SetFontColor(rgb(126, 78, 199));
  textout(455, 10, 'Игрок 1');
   //setpencolor(clblack);
  setbrushcolor(clwhite);
  SetFontColor(clblack);
  
  textout(475, 30, s1);
  textout(475, 50, t1);
  
  
  SetFontColor(rgb(63, 229, 21));
  textout(525, 10, 'Игрок 2');
  setbrushcolor(clwhite);
  SetFontColor(clblack);
  
  textout(545, 30, s2);
  textout(545, 50, t2);
  
  rectangle(10 + 5 + 5, 10 + 5 + 20, 400 + 5 + 5, 400 + 5 + 20);
  rectangle(60 + 5 + 5, 60 + 5 + 20, 350 + 5 + 5, 350 + 5 + 20);
  rectangle(110 + 5 + 5, 110 + 5 + 20, 300 + 5 + 5, 300 + 5 + 20);
  
  line(210 + 5 + 5, 16 + 5 + 20, 210 + 5 + 5, 110 + 5 + 20);//2
  line(210 + 5 + 5, 300 + 5 + 20, 210 + 5 + 5, 400 + 5 + 20);//6
  line(16 + 5 + 5, 208 + 5 + 20, 110 + 5 + 5, 208 + 5 + 20);//8
  line(300 + 5 + 5, 208 + 5 + 20, 400 + 5 + 5, 208 + 5 + 20);//4
  line(10 + 5 + 5, 10 + 5 + 20, 110 + 5 + 5, 110 + 5 + 20);//1
  line(300 + 5 + 5, 300 + 5 + 20, 400 + 5 + 5, 400 + 5 + 20);//5
  line(10 + 5 + 5, 400 + 5 + 20, 110 + 5 + 5, 300 + 5 + 20);//7
  line(400 + 5 + 5, 10 + 5 + 20, 300 + 5 + 5, 110 + 5 + 20);//3
  
  for j := 1 to 24 do
  begin
    circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
  end;
  
  
  
end;


{***********************************************************************}
//ситуация три в ряд
function three_in_line_array(i: integer): integer;//процедура отвечающая за наличие трёх одинаковых фишек в ряд
begin
  
  var e, w, v, k, j, vv, ww, ee: integer;
  
  
  for j := 1 to 20 do 
  begin
    if ((_3NumInLine[1, j] = i) or (_3NumInLine[2, j] = i) or (_3NumInLine[3, j] = i)) then //проверка имеется ли кружок (в который только что поставили) во всех "трёх в ряд" на поле 
    begin
         //если поставил первый игрок
      if ((((maps[_3NumInLine[1, j]] - 1) * (maps[_3NumInLine[1, j]] - 1)) + ((maps[_3NumInLine[2, j]] - 1) * (maps[_3NumInLine[2, j]] - 1)) + ((maps[_3NumInLine[3, j]] - 1) * (maps[_3NumInLine[3, j]] - 1))) = 0) then // проверка поставленный кружок дополняет до трёх в ряд у первого ирока(голубого цвета)
      begin
        
            //этот цикл узнаёт номер строки в которой оказалось три в ряд первого        
        for v := 1 to 20 do
        begin
          if (_3NumInLine[1, j] = _3NumInLine[1, v]) then
          begin
            e := v;
            m := m + 1;
          end; 
        end;        
        
        
        
        if (mapsA_flag[e, 1] = 0) then
        begin
          t2 := t2 - 1; // из суммы на игровом поле и в запасе вычитаем 1
          
          setbrushcolor(clwhite);
          setfontcolor(clblack);
          textout(475, 50, t1);
          textout(545, 50, t2);
          
          
          if((c mod 2 = 1) and (s2 = 0)) then
          begin
            result := 1;
          end;
          
          
          
          if (s2 > 0) then // проверка нужно ли вычитать из фишек со стола 
          begin
            s2 := s2 - 1; //меняем в зависимости от хода s2
            
            
            setbrushcolor(clwhite);
            SetFontColor(clblack);
            textout(475, 30, s1);// выводим на экран s2 и s1, что бы узнать кол-во фищек на столе у каждого игрка на данный момент(ситуация - "три в ряд")
            textout(545, 30, s2);
            
          end;
          
          if (s2 = 0) then
          begin
            SetBrushColor(ClWhite);
            textout(1, 1, 'Заберите любую фишку Игрока2 с поля');
          end
        end;
        
        
            //цикл обозначает в массиве - карта_"трёх в ряд", что на этих "три в ряд" уже был игрок1     
        for w := 1 to 20 do
        begin
          if (_3NumInLine[1, j] = _3NumInLine[1, w]) then
          begin
            mapsA_flag[w, 1] := 1;
          end; 
        end;
      end
      
      
      
      
         //если поставил второй игрок    
           else
      if ((((maps[_3NumInLine[1, j]] - 2) * (maps[_3NumInLine[1, j]] - 2)) + ((maps[_3NumInLine[2, j]] - 2) * (maps[_3NumInLine[2, j]] - 2)) + ((maps[_3NumInLine[3, j]] - 2) * (maps[_3NumInLine[3, j]] - 2))) = 0) then // проверка поставленный кружок дополняет до трёх в ряд у второго ирока(лилового цвета)
      begin
        
            //этот цикл узнаёт номер строки, в которой оказалось три вряд второго игрока
        for vv := 1 to 20 do
        begin
          if (_3NumInLine[1, j] = _3NumInLine[1, vv]) then
          begin
            ee := vv;
            m := m + 1;
          end; 
        end;        
        
        
        
        if (mapsA_flag[ee, 2] = 0) then
        begin
          t1 := t1 - 1;
          
          setbrushcolor(clwhite);
          SetFontColor(clblack);
          textout(475, 50, t1);// выводим на экран s2 и s1, что бы узнать кол-во фищек на столе у каждого игрка на данный момент(ситуация - "три в ряд")
          textout(545, 50, t2);
          
          
          
          if((c mod 2 = 0) and (s1 = 0)) then
          begin
            result := 1;
          end;
          
          if (s1 > 0) then  
          begin
            s1 := s1 - 1; //меняем в зависимости с ходом s1
            
            setbrushcolor(clwhite);
            SetFontColor(clblack);
            textout(475, 30, s1); // выводим на экран s2 и s1, что бы узнать кол-во фищек на столе у каждого игрка на данный момент(ситуация - "три в ряд")
            textout(545, 30, s2);
            
          end;
          
          if (s1 = 0) then
          begin
            SetBrushColor(ClWhite);
            textout(1, 1, 'Заберите любую фишку Игрока1 с поля');
            
          end
        end;
            //цикл обозначает в массиве - карта_"трёх в ряд", что на этих "три в ряд" уже был игрок2 
        for ww := 1 to 20 do
        begin
          if (_3NumInLine[1, j] = _3NumInLine[1, ww]) then
          begin
            mapsA_flag[ww, 2] := 1;
          end; 
        end;        
        
        
      end;
    end;
  end;
end;
(***********************************************************************)
//Компьютерный ход
procedure CompStep();//переменная comp отвечает за номер под которым играет комп, если он 0 - то играют люди
var
  i, a1, a2, a3, zho, j, h: integer;
begin
  
  if ((c mod 2 = 0) and (s2 > 0) and (comp = 2)) then 
  begin
    m := 0;
    for i := 1 to 20 do
    begin
      a1 := _3NumInLine[1, i];
      a2 := _3NumInLine[2, i];
      a3 := _3NumInLine[3, i];  
      
      if ((maps[a1] = 2) and (maps[a2] = 2) and (maps[a3] = 0) and (mapsA_flag[i, 2] <> 1)) then
      begin
        SetBrushColor(rgb(63, 229, 21));
        sleep(500);
        circle(CircleCoord[a3, 1], CircleCoord[a3, 2], 20); 
        s2 := s2 - 1;
        SetBrushColor(clwhite);
        SetFontColor(clblack);
        textout(545, 30, s2);
        maps[a3] := 2;
        zho := 1;
        if(three_in_line_array(a3) = 1) then
        begin
          textout(1, 1, 'Какую фишку хотите забрать?');
          
          if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
          begin
            for h := 1 to m do
            begin
              for j := 1 to 24 do 
              begin
                if(maps[j] = 1) then
                begin
                  SetBrushColor(clwhite);
                  circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                  maps[j] := 0;
                  SetBrushColor(clWhite);
                  textout(1, 1, 'Игрок1, переставьте фишку!');
                  break;
                end;
              end;
            end;
          end
        end;
        break;
      end
                 else
      if ((maps[a1] = 2) and (maps[a2] = 0) and (maps[a3] = 2) and (mapsA_flag[i, 2] <> 1)) then
      begin
        SetBrushColor(rgb(63, 229, 21));
        sleep(500);
        circle(CircleCoord[a2, 1], CircleCoord[a2, 2], 20);
        s2 := s2 - 1;
        SetBrushColor(clwhite);
        SetFontColor(clblack);
        textout(545, 30, s2);
        maps[a2] := 2;
        zho := 1;
        if(three_in_line_array(a2) = 1) then
        begin
          textout(1, 1, 'Какую фишку хотите забрать?');
          if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
          begin
            for h := 1 to m do
            begin
              for j := 1 to 24 do 
              begin
                if(maps[j] = 1) then
                begin
                  SetBrushColor(clwhite);
                  circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                  maps[j] := 0;
                  SetBrushColor(clWhite);
                  textout(1, 1, 'Игрок1, переставьте фишку!');
                  break;
                end;
              end;
            end;
          end
        end;
        break;
      end
                 else
      if ((maps[a1] = 0) and (maps[a2] = 2) and (maps[a3] = 2) and (mapsA_flag[i, 2] <> 1)) then
      begin
        SetBrushColor(rgb(63, 229, 21));
        sleep(500);
        circle(CircleCoord[a1, 1], CircleCoord[a1, 2], 20);
        s2 := s2 - 1;
        SetBrushColor(clwhite);
        SetFontColor(clblack);
        textout(545, 30, s2);
        maps[a1] := 2;
        zho := 1;
        if(three_in_line_array(a1) = 1) then
        begin
          textout(1, 1, 'Какую фишку хотите забрать?');
          if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
          begin
            for h := 1 to m do
            begin
              for j := 1 to 24 do 
              begin
                if(maps[j] = 1) then
                begin
                  SetBrushColor(clwhite);
                  circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                  maps[j] := 0;
                  SetBrushColor(clWhite);
                  textout(1, 1, 'Игрок1, переставьте фишку!');
                  break;
                end;
              end;
            end;
          end
        end;
        break;
      end;
    end;
    if(zho = 0) then
    begin
      for i := 1 to 20 do
      begin
        a1 := _3NumInLine[1, i];
        a2 := _3NumInLine[2, i];
        a3 := _3NumInLine[3, i];  
        if ((maps[a1] = 1) and (maps[a2] = 1) and (maps[a3] = 0)) then
        begin
          SetBrushColor(rgb(63, 229, 21));
          sleep(500);
          circle(CircleCoord[a3, 1], CircleCoord[a3, 2], 20); 
          s2 := s2 - 1;
          SetBrushColor(clwhite);
          SetFontColor(clblack);
          textout(545, 30, s2);
          maps[a3] := 2;
          zho := 1;
          if(three_in_line_array(a3) = 1) then
          begin
            textout(1, 1, 'Какую фишку хотите забрать?');
            if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
            begin
              for h := 1 to m do
              begin
                for j := 1 to 24 do 
                begin
                  if(maps[j] = 1) then
                  begin
                    SetBrushColor(clwhite);
                    circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                    maps[j] := 0;
                    SetBrushColor(clWhite);
                    textout(1, 1, 'Игрок1, переставьте фишку!');
                    break;
                  end;
                end;
              end;
            end
          end;
          break;
        end
            else
        if ((maps[a1] = 1) and (maps[a2] = 0) and (maps[a3] = 1)) then
        begin
          SetBrushColor(rgb(63, 229, 21));
          sleep(500);
          circle(CircleCoord[a2, 1], CircleCoord[a2, 2], 20);
          s2 := s2 - 1;
          SetBrushColor(clwhite);
          SetFontColor(clblack);
          textout(545, 30, s2);
          maps[a2] := 2;
          zho := 1;
          if(three_in_line_array(a2) = 1) then
          begin
            textout(1, 1, 'Какую фишку хотите забрать?');
            if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
            begin
              for h := 1 to m do
              begin
                for j := 1 to 24 do 
                begin
                  if(maps[j] = 1) then
                  begin
                    SetBrushColor(clwhite);
                    circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                    maps[j] := 0;
                    SetBrushColor(clWhite);
                    textout(1, 1, 'Игрок1, переставьте фишку!');
                    break;
                  end;
                end;
              end;
            end
          end;
          break;
        end
            else
        if ((maps[a1] = 0) and (maps[a2] = 1) and (maps[a3] = 1)) then
        begin
          SetBrushColor(rgb(63, 229, 21));
          sleep(500);
          circle(CircleCoord[a1, 1], CircleCoord[a1, 2], 20);
          s2 := s2 - 1;
          SetBrushColor(clwhite);
          SetFontColor(clblack);
          textout(545, 30, s2);
          maps[a1] := 2;
          zho := 1; 
          if(three_in_line_array(a1) = 1) then
          begin
            textout(1, 1, 'Какую фишку хотите забрать?');
            if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
            begin
              for h := 1 to m do
              begin
                for j := 1 to 24 do 
                begin
                  if(maps[j] = 1) then
                  begin
                    SetBrushColor(clwhite);
                    circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                    maps[j] := 0;
                    SetBrushColor(clWhite);
                    textout(1, 1, 'Игрок1, переставьте фишку!');
                    break;
                  end;
                end;
              end;
            end
          end;
          break;
        end; 
      end;
    end;
    if (zho = 0) then
    begin
      for i := 1 to 24 do 
      begin
        if(maps[i] = 0) then
        begin
          SetBrushColor(rgb(63, 229, 21));
          sleep(500);
          circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
          s2 := s2 - 1;
          SetBrushColor(clwhite);
          SetFontColor(clblack);
          textout(545, 30, s2);
          maps[i] := 2;
          break;
        end;
      end;
      if(three_in_line_array(i) = 1) then
      begin
        textout(1, 1, 'Какую фишку хотите забрать?');
        if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
        begin
          for h := 1 to m do
          begin
            for i := 1 to 24 do 
            begin
              if(maps[i] = 1) then
              begin
                SetBrushColor(clwhite);
                circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
                maps[i] := 0;
                SetBrushColor(clWhite);
                textout(1, 1, 'Игрок1, переставьте фишку!');
                break;
              end;
            end;
          end;
        end;
      end;
    end;
  end
       else
  if((c mod 2 = 0) and (s2 = 0) and (comp = 2)) then
  begin
    m := 0;
    textout(1, 1, 'Игрок2, переставьте фишку!');
    for j := q to 24 do 
    begin
      if((maps[j] = 2) and (p <> -1)) then
      begin
        SetBrushColor(clwhite);
        sleep(500);
        circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
        maps[j] := 0;
        p := -1;
        q := j;
        break;
      end;
      if(q = 24) then
        q := 1;
    end;
    if(p = -1) then
    begin
      for i := 1 to 20 do
      begin
        a1 := _3NumInLine[1, i];
        a2 := _3NumInLine[2, i];
        a3 := _3NumInLine[3, i];  
        
        if ((maps[a1] = 2) and (maps[a2] = 2) and (maps[a3] = 0) and (q <> a3) and (mapsA_flag[i, 2] <> 1)) then
        begin
          SetBrushColor(rgb(63, 229, 21));
          sleep(500);
          circle(CircleCoord[a3, 1], CircleCoord[a3, 2], 20); 
          maps[a3] := 2;
          zho := 1;
          p := 0;
          if(three_in_line_array(a3) = 1) then
          begin
            textout(1, 1, 'Какую фишку хотите забрать?');
            if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
            begin
              for h := 1 to m do
              begin
                for j := 1 to 24 do 
                begin
                  if(maps[j] = 1) then
                  begin
                    SetBrushColor(clwhite);
                    circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                    maps[j] := 0;
                    SetBrushColor(clWhite);
                    textout(1, 1, 'Игрок1, переставьте фишку!');
                    break;
                  end;
                end;
              end;
            end
          end;
          break;
        end
                 else
        if ((maps[a1] = 2) and (maps[a2] = 0) and (maps[a3] = 2) and (q <> a2) and (mapsA_flag[i, 2] <> 1)) then
        begin
          SetBrushColor(rgb(63, 229, 21));
          sleep(500);
          circle(CircleCoord[a2, 1], CircleCoord[a2, 2], 20);
          maps[a2] := 2;
          zho := 1;
          p := 0;
          if(three_in_line_array(a2) = 1) then
          begin
            textout(1, 1, 'Какую фишку хотите забрать?');
            if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
            begin
              for h := 1 to m do
              begin
                for j := 1 to 24 do 
                begin
                  if(maps[j] = 1) then
                  begin
                    SetBrushColor(clwhite);
                    circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                    maps[j] := 0;
                    SetBrushColor(clWhite);
                    textout(1, 1, 'Игрок1, переставьте фишку!');
                    break;
                  end;
                end;
              end;
            end
          end;
          break;
        end
                 else
        if ((maps[a1] = 0) and (maps[a2] = 2) and (maps[a3] = 2) and (q <> a1) and (mapsA_flag[i, 2] <> 1)) then
        begin
          SetBrushColor(rgb(63, 229, 21));
          sleep(500);
          circle(CircleCoord[a1, 1], CircleCoord[a1, 2], 20);
          maps[a1] := 2;
          zho := 1; 
          p := 0;
          if(three_in_line_array(a1) = 1) then
          begin
            textout(1, 1, 'Какую фишку хотите забрать?');
            if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
            begin
              for h := 1 to m do
              begin
                for j := 1 to 24 do 
                begin
                  if(maps[j] = 1) then
                  begin
                    SetBrushColor(clwhite);
                    circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                    maps[j] := 0;
                    SetBrushColor(clWhite);
                    textout(1, 1, 'Игрок1, переставьте фишку!');
                    break;
                  end;
                end;
              end;
            end
          end;
          break;
        end;
      end;
      if(zho = 0) then
      begin
        for i := 1 to 20 do
        begin
          a1 := _3NumInLine[1, i];
          a2 := _3NumInLine[2, i];
          a3 := _3NumInLine[3, i];
          if ((maps[a1] = 1) and (maps[a2] = 1) and (maps[a3] = 0) and (q <> a3)) then
          begin
            SetBrushColor(rgb(63, 229, 21));
            sleep(500);
            circle(CircleCoord[a3, 1], CircleCoord[a3, 2], 20); 
            maps[a3] := 2;
            zho := 1;
            p := 0;
            if(three_in_line_array(a3) = 1) then
            begin
              textout(1, 1, 'Какую фишку хотите забрать?');
              if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
              begin
                for h := 1 to m do
                begin
                  for j := 1 to 24 do 
                  begin
                    if(maps[j] = 1) then
                    begin
                      SetBrushColor(clwhite);
                      circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                      maps[j] := 0;
                      SetBrushColor(clWhite);
                      textout(1, 1, 'Игрок1, переставьте фишку!');
                      break;
                    end;
                  end;
                end;
              end
            end;
            break;
          end
               else
          if ((maps[a1] = 1) and (maps[a2] = 0) and (maps[a3] = 1) and (q <> a2)) then
          begin
            SetBrushColor(rgb(63, 229, 21));
            sleep(500);
            circle(CircleCoord[a2, 1], CircleCoord[a2, 2], 20);
            maps[a2] := 2;
            zho := 1;
            p := 0;
            if(three_in_line_array(a2) = 1) then
            begin
              textout(1, 1, 'Какую фишку хотите забрать?');
              if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
              begin
                for h := 1 to m do
                begin
                  for j := 1 to 24 do 
                  begin
                    if(maps[j] = 1) then
                    begin
                      SetBrushColor(clwhite);
                      circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                      maps[j] := 0;
                      SetBrushColor(clWhite);
                      textout(1, 1, 'Игрок1, переставьте фишку!');
                      break;
                    end;
                  end;
                end;
              end;
            end;
            break;
          end
               else
          if ((maps[a1] = 0) and (maps[a2] = 1) and (maps[a3] = 1) and (q <> a1)) then
          begin
            SetBrushColor(rgb(63, 229, 21));
            sleep(500);
            circle(CircleCoord[a1, 1], CircleCoord[a1, 2], 20);
            maps[a1] := 2;
            p := 0;
            zho := 1; 
            if(three_in_line_array(a1) = 1) then
            begin
              textout(1, 1, 'Какую фишку хотите забрать?');
              if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
              begin
                for h := 1 to m do
                begin
                  for j := 1 to 24 do 
                  begin
                    if(maps[j] = 1) then
                    begin
                      SetBrushColor(clwhite);
                      circle(CircleCoord[j, 1], CircleCoord[j, 2], 20);
                      maps[j] := 0;
                      SetBrushColor(clWhite);
                      textout(1, 1, 'Игрок1, переставьте фишку!');
                      break;
                    end;
                  end;
                end;
              end;
            end;
            break;
          end;  
        end;
      end;
      if (zho = 0) then
      begin
        for i := 1 to 24 do 
        begin
          if(maps[i] = 0) then
          begin
            if((p = -1) and (i <> q)) then
            begin
              SetBrushColor(rgb(63, 229, 21));
              sleep(500);
              circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
              maps[i] := 2;
              p := 0;
              break;
            end
          end;
        end;
        if(three_in_line_array(i) = 1) then
        begin
          textout(1, 1, 'Какую фишку хотите забрать?');
          if((c mod 2 = 0) and (s1 = 0) and (comp = 2)) then
          begin
            for h := 1 to m do
            begin
              for i := 1 to 24 do 
              begin
                if(maps[i] = 1) then
                begin
                  SetBrushColor(clwhite);
                  circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
                  maps[i] := 0;
                  SetBrushColor(clWhite);
                  textout(1, 1, 'Игрок1, переставьте фишку!');
                  break;
                end;
              end;
            end;
          end
               else
          if((c mod 2 = 1) and (s2 = 0) and (comp = 1)) then
          begin
            for i := 1 to 24 do 
            begin
              if(maps[i] = 2) then
              begin
                SetBrushColor(clwhite);
                circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
                maps[i] := 0;
                SetBrushColor(clWhite);
                textout(1, 1, 'Игрок1, переставьте фишку!');
                break;
              end;
            end;
          end;
        end;
      end;
    end;
    SetBrushColor(clWhite);
    textout(1, 1, 'Игрок1, переставьте фишку!');
  end;
  if(q = 24) then
    q := 1
  else
    q := q + 1;
  if(t2 = 2) then
  begin
    ClearWindow();
    FloodFill(1, 1, rgb(126, 78, 199));
    SetBrushColor(rgb(126, 78, 199));
    SetFontColor(clWhite);
    SetFontSize(60); 
    writeln('ВЫ');
    write('ВЫИГРАЛИ');
    exit;
  end
      else
  if(t1 = 2) then
  begin
    ClearWindow();
    FloodFill(1, 1, rgb(63, 229, 21));
    SetBrushColor(rgb(63, 229, 21));
    SetFontColor(clblack);
    SetFontSize(60); 
    writeln('ВЫИГРАЛ');
    write('КОМПЬЮТЕР');
    exit;
  end
end;
{***********************************************************************}

procedure MouseDown(x, y, mb: integer);
begin
  var i, ii, pos, j: integer;
  
  pos := -1;
  for i := 1 to 24 do 
    if (((x - CircleCoord[i, 1]) * (x - CircleCoord[i, 1])) + ((y - CircleCoord[i, 2]) * (y - CircleCoord[i, 2])) < 20 * 20 + 1) then begin
      pos := i;
    end;
  if (pos = -1) then 
    exit;
  
  
  begin
    setbrushcolor(clwhite);
    setpencolor(clwhite);
    rectangle(1, 1, 400, 18);
    setpencolor(clblack);
  end;
  if (isdeletecircle) then 
  begin
    SetBrushColor(ClWhite);
    textout(1, 1, 'Какую фишку хотите забрать?');
    if((c mod 2 = 0) and (s1 = 0) and (comp <> 2)) then
    begin
      for j := 1 to m do
      begin
        for i := 1 to 24 do 
        begin
          if (((x - CircleCoord[i, 1]) * (x - CircleCoord[i, 1])) + ((y - CircleCoord[i, 2]) * (y - CircleCoord[i, 2])) < 20 * 20 + 1) then
          begin
            if(maps[i] = 1) then
            begin
              SetBrushColor(clwhite);
              circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
              maps[i] := 0;
              c := c + 1;
              isdeletecircle := false;
              p := 0;
              break;
            end
            else
              exit;
          end;
        end;
      end;
    end
      else
    if((c mod 2 = 1) and (s2 = 0) and (comp <> 1)) then
    begin
      for j := 1 to m do
      begin
        for i := 1 to 24 do 
        begin
          if (((x - CircleCoord[i, 1]) * (x - CircleCoord[i, 1])) + ((y - CircleCoord[i, 2]) * (y - CircleCoord[i, 2])) < 20 * 20 + 1) then
          begin
            if(maps[i] = 2) then
            begin
              SetBrushColor(clwhite);
              circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
              maps[i] := 0;
              c := c + 1;
              isdeletecircle := false;
              p := 0;
              break;
            end
            else
              exit;
          end;
        end;
      end;
    end;
    if(t2 = 2) then
    begin
      ClearWindow();
      FloodFill(1, 1, rgb(126, 78, 199));
      SetBrushColor(rgb(126, 78, 199));
      SetFontColor(clWhite);
      SetFontSize(60); 
      writeln('ВЫ');
      write('ВЫИГРАЛИ');
      exit;
    end
      else
    if(t1 = 2) then
    begin
      ClearWindow();
      FloodFill(1, 1, rgb(63, 229, 21));
      SetBrushColor(rgb(63, 229, 21));
      SetFontColor(clblack);
      SetFontSize(60); 
      writeln('ВЫИГРАЛ');
      write('КОМПЬЮТЕР');
      exit;
    end
    else
      SetBrushColor(clWhite);
    textout(1, 1, 'Игрок1, переставьте фишку!');
    CompStep();
    c := c + 1;
    m := 0;
  end;
  if(m = 0) then
  begin
    for i := 1 to 24 do 
    begin
      if (((x - CircleCoord[i, 1]) * (x - CircleCoord[i, 1])) + ((y - CircleCoord[i, 2]) * (y - CircleCoord[i, 2])) < 20 * 20 + 1) then
      begin
        if((c mod 2 = 1) and (s1 > 0) and (comp <> 1)) then
        begin
          
          if(maps[i] = 0) then
          begin
            SetBrushColor(rgb(126, 78, 199));
            circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
            
            s1 := s1 - 1;
            
            SetBrushColor(clwhite);
            SetFontColor(clblack);
            textout(475, 30, s1);
            maps[i] := 1;
          end
               else
          begin
            exit;
          end;
          break;
        end
        
        
            else
        if((c mod 2 = 0) and (s2 > 0) and (comp <> 2)) then
        begin
          if(maps[i] = 0) then
          begin
            SetBrushColor(rgb(63, 229, 21));
            circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
            
            s2 := s2 - 1;
            SetBrushColor(clwhite);
            SetFontColor(clblack);
            textout(545, 30, s2);
            
            maps[i] := 2;
          end
               else
          begin
            exit;
          end;
          break;
        end;       
        
        if((c mod 2 = 1) and (s1 = 0) and (comp <> 1)) then
        begin
          SetBrushColor(ClWhite);
          textout(1, 1, 'Игрок1, переставьте фишку!');
          if((maps[i] = 1) and (p <> -1)) then
          begin
            SetBrushColor(clwhite);
            circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
            maps[i] := 0;
            k := i;
            p := -1;
            c := c - 1;
          end
               else
          if((maps[i] = 0) and (k <> i)) then
          begin
            if(p = -1) then
            begin
              SetBrushColor(rgb(126, 78, 199));
              circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
              maps[i] := 1;
              p := 0;
            end
            else
              exit;
          end
          else
            exit;
          SetBrushColor(ClWhite);
          textout(1, 1, 'Игрок1, переставьте фишку!');
          break;
        end
        
        
            else
        if((c mod 2 = 0) and (s2 = 0) and (comp <> 2)) then
        begin
          SetBrushColor(ClWhite);
          textout(1, 1, 'Игрок2, переставьте фишку!');
          if(maps[i] = 2) then
          begin
            SetBrushColor(clwhite);
            circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
            maps[i] := 0;
            c := c - 1;
            k := i;
            p := -1;
          end
               else
          if((maps[i] = 0) and (k <> i)) then
          begin
            if(p = -1) then
            begin
              SetBrushColor(rgb(63, 229, 21));
              circle(CircleCoord[i, 1], CircleCoord[i, 2], 20);
              maps[i] := 2;
              p := 0;
            end
            else
              exit;
          end;
          if(maps[i] = 1) then
          begin
            c := c - 1;
          end;
          
          break;
        end;
      end;
      if(i = 24) then
      begin
        c := c - 1;
      end;
    end;
    if(three_in_line_array(i) = 1) then
    begin
      SetBrushColor(ClWhite);
      textout(1, 1, 'Какую фишку хотите забрать?');
      isdeletecircle := true;
      c := c - 1;
      p := -1;
    end;
  end;
  c := c + 1;
  if((c mod 2 = 1) and (comp = 1)) then
  begin
    CompStep();
    c := c + 1;
    m := 0;
  end;
  if((c mod 2 = 0) and (comp = 2)) then
  begin
    CompStep();
    m := 0;
    c := c + 1;
  end;
end;

{******************************************************************************}


procedure Color();
begin
  
  OnMouseDown := MouseDown;
  while((t1 > 2) or (t2 > 2)) do
  begin
    
    //SetBrushColor(clwhite);
    //println(t1,' ',t2);
    
  end;
  
end;

{************************************************************************}

begin
  writeln('Введите 2,чтобы компьютер ходил вторым');
  read(comp);
  ClearWindow();
  t1 := 9;
  t2 := 9;
  s1 := 9;
  s2 := 9;
  c := 1;
  e := 0;
  m := 0;
  isdeletecircle := false;
  p := 0;
  WriteCentreCoordinates();
  tablo();
  Color();
  
end.