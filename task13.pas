program name;
var number,coppyNumber,countOfNumbers:integer ;isEmpty:boolean;
begin 
  write('Input your number : ');
  readln(number);//ввод цифры
  coppyNumber:=number;//копируем введенную цифру в переменную coppyNumber
  countOfNumbers:=0;//обнуляем счетчик цифр, этот счётчик будет считать кол-во цифр в числе
  isEmpty:=true;//переменная, в которой устанавливаем по умолчанию, что нет цифр кратным 3
      while (coppyNumber<>0) do//в цикле считаем кол-во цифр в числе, пока число не станет = 0
      begin
        coppyNumber:=coppyNumber div 10;//"отбрасываем" последнюю цифру в числе
        countOfNumbers:=countOfNumbers+1;//увеличиваем счётчик цифр
      end;
  println('Count of numbers = ',countOfNumbers);
      while (number<>0) do//цикл с поиском цифр кратных 3
      begin
        if (((number mod 10) mod 3) = 0 )//(number mod 10)-получение последней цифры,(mod 3)- проверка кратно ли 3 
          then begin
            println('Position : ',countOfNumbers);//если кратно то выводим позицию
            isEmpty:=false;//меняем значение на false, т.е. мы нашли цифру кратную 3 и нам больше не надо выводить , что таких цифр нет
            end;
        number:=number div 10;//отбрасываем поселднюю цифру числа 
        countOfNumbers:=countOfNumbers-1;//уменьшаем счётчик цифр(позицию)
      end;//конец цикла
  if (isEmpty) then //в конце проверям если isEmpty=true значит мы не нашли цифр кратным 3 и выводим сообщение
    writeln('No digits divisible by 3');
end.