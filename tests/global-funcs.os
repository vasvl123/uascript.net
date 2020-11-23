﻿///////////////////////////////////////////////////////////////////////
//
// Тест проверки поведения некоторых глобальных функций
// 
//
///////////////////////////////////////////////////////////////////////

Перем юТест;

////////////////////////////////////////////////////////////////////
// Программный интерфейс

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_ВидетьБулевоЗаполненным");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьКорректностьПриведенияОперацииИ");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьКорректностьПриведенияОперацииИли");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьПустыеСтрокиДатыЧислаНеопределено");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьНеПустыеСтрокиДатыЧисла");
	ВсеТесты.Добавить("ТестДолжен_РазличатьТекущийИСтартовыйСценарий");
	
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_Совпадающие");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_Отличающиеся");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_УказаныОтдельныеСвойстваДляЗаполнения");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_УказаныСвойстваИсключения");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_ИгнорироватьИсключенияЕслиУказаныСвойства");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НесуществующееСвойство");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НесуществующееСвойствоПриУказанномИсключении");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НесуществующееСвойствоИсключениеБезУказанияСвойств");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_ИгнорироватьНесуществующееИсключениеЕслиУказаныСвойства");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НеверныйТипСвойстваДляЗаполнения");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НеверныйТипСвойстваИсключения");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_ДляТаблицыЗначений");

	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаБулево");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаСтрока");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаЧисло");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаДата");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаДвоичныеДанные");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаСтрокаИзПеременной");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLЗначениеДвоичныеДанные");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЗаписьВBase64");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтениеИзBase64");
	
	ВсеТесты.Добавить("Тест_ДолженПроверитьМатематическиеФункции");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМинСравниваетЧисла");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМаксСравниваетЧисла");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМинСравниваетСтроки");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМаксСравниваетСтроки");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМинНеСравниваетРазнотипныеЗначения");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМаксНеСравниваетРазнотипныеЗначения");

	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоКопированиеФайлаРаботаетПоHTTP");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоКопированиеФайлаРаботаетПоHTTPS");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоПеремещениеФайлаРаботаетПоHTTP");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоКопированиеФайлаПоОтносительномуПутиРаботаетКорректно");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоПеремещениеФайлаПоОтносительномуПутиРаботаетКорректно");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоКопированиеФайлаПерезаписываетПриемник");
	ВсеТесты.Добавить("Тест_ДолженПроверитьСтрЧислоВхожденийВхожденийНет");
	ВсеТесты.Добавить("Тест_ДолженПроверитьСтрЧислоВхождений");
	
	ВсеТесты.Добавить("Тест_ДолженПроверитьОписаниеОшибки");
	ВсеТесты.Добавить("Тест_ДолженПроверитьИнформацияОбОшибкеОписание");
	ВсеТесты.Добавить("Тест_ДолженПроверитьКраткоеПредставлениеОшибки");
	ВсеТесты.Добавить("Тест_ДолженПроверитьПодробноеПредставлениеОшибки");
	
	ВсеТесты.Добавить("Тест_ДолженПроверитьОбъединениеПутей");
	ВсеТесты.Добавить("Тест_ДолженПроверитьНеобязательныйПараметрФункцииКодСимвола");
	
	ВсеТесты.Добавить("Тест_ДолженПроверитьФункциюСтрЧислоСтрок");
	ВсеТесты.Добавить("Тест_ДолженПроверитьФункциюСтрПолучитьСтроку");
	
	ВсеТесты.Добавить("Тест_ДолженПроверитьКодированиеURL");
	ВсеТесты.Добавить("Тест_ДолженПроверитьКодированиеURLвКодировкеURL");
	ВсеТесты.Добавить("Тест_ДолженПроверитьДекодированиеURL");
	ВсеТесты.Добавить("Тест_ДолженПроверитьДекодированиеURLвКодировкеURL");
	
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоПоискФайловВНеизвестномКаталогеВозвращаетПустойМассив");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоУдалениеВНеизвестномКаталогеНеПадает");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоПоискФайловПоИмениСуществующегоФайлаВозвращаетМассив");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоПоискФайловРаботает");
	//ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоПоискФайловРазрешаетСсылкиВПутях");
	ВсеТесты.Добавить("Тест_ДолженПроверитьНСтрВозвращаетПервуюСтроку");
	ВсеТесты.Добавить("Тест_ДолженПроверитьПолучениеТекущейДатыВМиллисекундах");
	ВсеТесты.Добавить("Тест_ДолженПроверитьОкруглениеТекущейДатыДоСекунд");
	Возврат ВсеТесты;
КонецФункции

// 
////////////////////////////////////////////////////////////////////

Процедура ТестДолжен_ВидетьБулевоЗаполненным() Экспорт
	юТест.ПроверитьИстину(ЗначениеЗаполнено(Истина), "Проверка для True");
	юТест.ПроверитьИстину(ЗначениеЗаполнено(Ложь), "Проверка для False");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьКорректностьПриведенияОперацииИ() Экспорт
	юТест.ПроверитьИстину(ТипЗнч(0 и 1) = Тип("Булево"), "Проверка для операции И");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьКорректностьПриведенияОперацииИли() Экспорт
	юТест.ПроверитьИстину(ТипЗнч(0 или 2) = Тип("Булево"), "Проверка для операции ИЛИ");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьПустыеСтрокиДатыЧислаНеопределено() Экспорт
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(Неопределено), "Проверка для Неопределено");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(""), "Проверка для """"");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(""   ""), "Проверка для ""   """);
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(" " + Символы.ПС + Символы.Таб + "   "), "Проверка для спецсимволов");

	юТест.ПроверитьЛожь(ЗначениеЗаполнено('00010101'), "Проверка для Даты 1");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено('000101010000'), "Проверка для Даты 2");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено('00010101000000'), "Проверка для Даты 3");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено('00000000'), "Проверка для Нулевой Даты 1");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено('000000000000'), "Проверка для Нулевой Даты 2");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено('00000000000000'), "Проверка для Нулевой Даты 3");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(Дата("00000000")), "Проверка для Нулевой Даты из Строки 1");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(Дата("000000000000")), "Проверка для Нулевой Даты из Строки 2");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(Дата("00000000000000")), "Проверка для Нулевой Даты из Строки 3");

	юТест.ПроверитьЛожь(ЗначениеЗаполнено(0), "Проверка для 0");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(Новый Массив), "Проверка для коллекции");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНеПустыеСтрокиДатыЧисла() Экспорт
	юТест.ПроверитьИстину(ЗначениеЗаполнено("   Привет   "), "Проверка для строки");
	юТест.ПроверитьИстину(ЗначениеЗаполнено(ТекущаяДата()), "Проверка для Даты");
	юТест.ПроверитьИстину(ЗначениеЗаполнено(1000), "Проверка для Числа");
	М = Новый Массив;
	М.Добавить(1);
	юТест.ПроверитьИстину(ЗначениеЗаполнено(М), "Проверка для Коллекции");
КонецПроцедуры

Процедура ТестДолжен_РазличатьТекущийИСтартовыйСценарий() Экспорт
	
	Стартовый = Новый Файл(СтартовыйСценарий().Источник).Имя;
	Текущий = Новый Файл(ТекущийСценарий().Источник).Имя;
	
	юТест.ПроверитьРавенство(Стартовый, "testrunner.os");
	юТест.ПроверитьРавенство(Текущий, "global-funcs.os");
	
КонецПроцедуры


Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_Совпадающие() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя,Отчество");

	ЗаполнитьЗначенияСвойств(Приемник, Источник);
	юТест.ПроверитьРавенство(Источник.Фамилия, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Источник.Имя, Приемник.Имя);
	юТест.ПроверитьРавенство(Источник.Отчество, Приемник.Отчество);
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_Отличающиеся() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя");
	
	ЗаполнитьЗначенияСвойств(Приемник, Источник);
	юТест.ПроверитьРавенство(Источник.Фамилия, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Источник.Имя, Приемник.Имя);
	юТест.ПроверитьЛожь(Приемник.Свойство("Отчество"));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_УказаныОтдельныеСвойстваДляЗаполнения() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя,Отчество");

	ЗаполнитьЗначенияСвойств(Приемник, Источник, "Фамилия,Имя");
	юТест.ПроверитьРавенство(Источник.Фамилия, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Источник.Имя, Приемник.Имя);
	юТест.ПроверитьРавенство(Неопределено, Приемник.Отчество);
		
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_УказаныСвойстваИсключения() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя,Отчество");

	ЗаполнитьЗначенияСвойств(Приемник, Источник, , "Фамилия,Имя");
	юТест.ПроверитьРавенство(Неопределено, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Неопределено, Приемник.Имя);
	юТест.ПроверитьРавенство(Источник.Отчество, Приемник.Отчество);
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_ИгнорироватьИсключенияЕслиУказаныСвойства() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя,Отчество");

	ЗаполнитьЗначенияСвойств(Приемник, Источник, "Фамилия,Имя", "Имя");
	юТест.ПроверитьРавенство(Источник.Фамилия, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Источник.Имя, Приемник.Имя);
	юТест.ПроверитьРавенство(Неопределено, Приемник.Отчество);
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НесуществующееСвойство() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя");
	
	Попытка
		ЗаполнитьЗначенияСвойств(Приемник, Источник, "НетТакогоСвойства");
	Исключение
		возврат;
	КонецПопытки;
	
	юТест.ПрерватьТест("Заполнение несуществующего свойства должно выдавать исключение, но не выдало");
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НесуществующееСвойствоПриУказанномИсключении() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя");
	
	Попытка
		ЗаполнитьЗначенияСвойств(Приемник, Источник, "НетТакогоСвойства","НетТакогоСвойства");
	Исключение
		возврат;
	КонецПопытки;
	юТест.ПрерватьТест("Заполнение несуществующего свойства должно выдавать исключение, но не выдало");
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НесуществующееСвойствоИсключениеБезУказанияСвойств() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя,Отчество");

	ЗаполнитьЗначенияСвойств(Приемник, Источник, , "Несуществующее");
	юТест.ПроверитьРавенство(Источник.Фамилия, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Источник.Имя, Приемник.Имя);
	юТест.ПроверитьРавенство(Источник.Отчество, Приемник.Отчество);
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_ИгнорироватьНесуществующееИсключениеЕслиУказаныСвойства() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя,Отчество");

	ЗаполнитьЗначенияСвойств(Приемник, Источник, "Фамилия,Имя", "Несуществующее");
	юТест.ПроверитьРавенство(Источник.Фамилия, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Источник.Имя, Приемник.Имя);
	юТест.ПроверитьРавенство(Неопределено, Приемник.Отчество);
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НеверныйТипСвойстваДляЗаполнения() Экспорт
	Источник = Новый Структура("Нет", "!");
	Приемник = Новый Структура("Нет");
	
	Попытка
		ЗаполнитьЗначенияСвойств(Приемник, Источник, ложь );
	Исключение
		возврат;
	КонецПопытки;
	юТест.ПрерватьТест("Неверный тип свойства для заполнения должен выдавать исключение, но не выдал");
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НеверныйТипСвойстваИсключения() Экспорт
	Источник = Новый Структура("Нет", "!");
	Приемник = Новый Структура("Нет");
	
	Попытка
		ЗаполнитьЗначенияСвойств(Приемник, Источник, , ложь );
	Исключение
		возврат;
	КонецПопытки;
	юТест.ПрерватьТест("Неверный тип свойства-исключения для заполнения должен выдавать исключение, но не выдал");
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_ДляТаблицыЗначений() Экспорт
	
	Источник = Новый ТаблицаЗначений;
	Источник.Колонки.Добавить("Имя");
	Источник.Колонки.Добавить("Фамилия");
	
	Стр = Источник.Добавить();
	Стр.Имя = "Иван";
	Стр.Фамилия = "Иванов";
	
	Стр = Источник.Добавить();
	Стр.Имя = "Петр";
	Стр.Фамилия = "Петров";
	
	Приемник = Источник.СкопироватьКолонки();
	Для Каждого СтрИсточник Из Источник Цикл
		СтрПриемник = Приемник.Добавить();
		ЗаполнитьЗначенияСвойств(СтрПриемник, СтрИсточник);
	КонецЦикла;
	
	Для Сч = 0 По Источник.Количество() - 1 Цикл
		
		СтрИсточник = Источник[Сч];
		СтрПриемник = Приемник[Сч];
		
		юТест.ПроверитьРавенство(СтрИсточник.Имя, СтрПриемник.Имя, "Сравнение строки " + Сч + " - Имя");
		юТест.ПроверитьРавенство(СтрИсточник.Фамилия, СтрПриемник.Фамилия, "Сравнение строки " + Сч + " - Фамилия");
		
	КонецЦикла;
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаБулево() Экспорт
	
	юТест.ПроверитьРавенство("true", XMLСтрока(Истина));
	юТест.ПроверитьРавенство("false", XMLСтрока(Ложь));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаСтрока() Экспорт
	
	юТест.ПроверитьРавенство("", XMLСтрока(""));
	юТест.ПроверитьРавенство("строка1", XMLСтрока("строка1"));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаСтрокаИзПеременной() Экспорт
	ПеременнаяСтрока = "строка2";
	юТест.ПроверитьРавенство("строка2", XMLСтрока(ПеременнаяСтрока));

	ПеременнаяСтрока = "";
	юТест.ПроверитьРавенство("", XMLСтрока(ПеременнаяСтрока));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLЗначениеДвоичныеДанные() Экспорт
	
	ДД = Новый ДвоичныеДанные(ТекущийСценарий().Источник);
	СтрокаДанных = XMLСтрока(ДД);
	ДДИзXMLСтроки = XMLЗначение(Тип("ДвоичныеДанные"), СтрокаДанных);
	юТест.ПроверитьРавенство(ТипЗнч(ДДИзXMLСтроки), ТипЗнч(ДД));

КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаДата() Экспорт
	
	юТест.ПроверитьРавенство("2014-01-01T00:00:00", XMLСтрока('20140101'));
	юТест.ПроверитьРавенство("2014-01-01T12:27:30", XMLСтрока('20140101122730'));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаЧисло() Экспорт
	
	юТест.ПроверитьРавенство("100", XMLСтрока(100));
	юТест.ПроверитьРавенство("200.85", XMLСтрока(200.85));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаДвоичныеДанные() Экспорт
	
	ДДСкрипта = Новый ДвоичныеДанные(ТекущийСценарий().Источник);
	СтрокаДД = XMLСтрока(ДДСкрипта);
	
	юТест.ПроверитьЛожь(ПустаяСтрока(СтрокаДД));
	
КонецПроцедуры

Функция ПрочитатьФайлСкрипта(Знач Файл)
	
	Ч = Новый ЧтениеТекста(Файл);
	Текст = Ч.Прочитать();
	Ч.Закрыть();
	
	Возврат Текст;
	
КонецФункции

Функция ЗаписатьФайлСкрипта()
	ДД = Новый ДвоичныеДанные(ТекущийСценарий().Источник);
	base = Base64Строка(ДД);
	Возврат base;
КонецФункции

Процедура ТестДолжен_ПроверитьЗаписьВBase64() Экспорт

	base = ЗаписатьФайлСкрипта();
	юТест.ПроверитьЛожь(ПустаяСтрока(base));

КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтениеИзBase64() Экспорт

	base = ЗаписатьФайлСкрипта();
	ДД = Base64Значение(base);
	
	ВремФайл = КаталогВременныхФайлов() + "/base64test_temp.os";
	ДД.Записать(ВремФайл);
	
	ТекстИз64 = ПрочитатьФайлСкрипта(ВремФайл);
	ТекстИсходный = ПрочитатьФайлСкрипта(ТекущийСценарий().Источник);
	
	УдалитьФайлы(ВремФайл);
	
	юТест.ПроверитьРавенство(ТекстИсходный, ТекстИз64);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьМатематическиеФункции() Экспорт

	// В 1С точность больше и аналогичные результаты получаются применением округления
	
	юТест.ПроверитьРавенство( 5.54517744447956, Log(256),"Log");
	юТест.ПроверитьРавенство( 3, Log10(1000),"Log10");
	юТест.ПроверитьРавенство(-0.988031624092862, Sin(30),"Sin");
	юТест.ПроверитьРавенство( 0.52532198881773, Cos(45),"Cos");
	юТест.ПроверитьРавенство( 1.61977519054386, Tan(45),"Tan");
	юТест.ПроверитьРавенство( 0.594385800001062, ASin(0.56),"ASin");
	юТест.ПроверитьРавенство( 0.976410526793834, ACos(0.56),"ACos");
	юТест.ПроверитьРавенство( 0.510488321916776, ATan(0.56),"ATan");
	юТест.ПроверитьРавенство( 8103.0839275754, Окр(Exp(9),10),"Exp");
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМинСравниваетЧисла() Экспорт
	
	юТест.ПроверитьРавенство(1, Мин(3,1,2,5,4));
	юТест.ПроверитьРавенство(3, Мин(3));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМаксСравниваетЧисла() Экспорт
	
	юТест.ПроверитьРавенство(5, Макс(1,3,2,5,4));
	юТест.ПроверитьРавенство(5, Макс(5));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМинСравниваетСтроки() Экспорт
	
	юТест.ПроверитьРавенство("А", Мин("Б","В","А","Г"));
	юТест.ПроверитьРавенство("Б", Мин("Б"));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМаксСравниваетСтроки() Экспорт
	
	юТест.ПроверитьРавенство("Г", Макс("Б","В","А","Г"));
	юТест.ПроверитьРавенство("Б", Макс("Б"));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМинНеСравниваетРазнотипныеЗначения() Экспорт
	
	Попытка
		зн = Мин(1, "F", Неопределено);
	Исключение
		Если Найти(ОписаниеОшибки(), "Сравнение на больше/меньше") = 0 Тогда
			ВызватьИсключение;
		КонецЕсли;
		
		Возврат;
		
	КонецПопытки;
	
	юТест.ПрерватьТест("Ожидалось исключение ""Сравнение несовместимых типов""");
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМаксНеСравниваетРазнотипныеЗначения() Экспорт
	Попытка
		зн = Макс(1, "F", Неопределено);
	Исключение
		Если Найти(ОписаниеОшибки(), "Сравнение на больше/меньше") = 0 Тогда
			ВызватьИсключение;
		КонецЕсли;
		
		Возврат;
		
	КонецПопытки;
	
	юТест.ПрерватьТест("Ожидалось исключение ""Сравнение несовместимых типов""");
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоКопированиеФайлаРаботаетПоHTTP() Экспорт

	Приемник = ПолучитьИмяВременногоФайла();

	КопироватьФайл("http://httpbin.org/image", Приемник);

	Попытка
		ДД = Новый ДвоичныеДанные(Приемник);
		юТест.Проверить(ДД.Размер() > 0, "Файл должен быть скопирован");
	Исключение
		УдалитьФайлы(Приемник);
		ВызватьИсключение;
	КонецПопытки;

	УдалитьФайлы(Приемник);

КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоКопированиеФайлаРаботаетПоHTTPS() Экспорт

	Приемник = ПолучитьИмяВременногоФайла();

	КопироватьФайл("https://httpbin.org/image", Приемник);

	Попытка
		ДД = Новый ДвоичныеДанные(Приемник);
		юТест.Проверить(ДД.Размер() > 0, "Файл должен быть скопирован");
	Исключение
		УдалитьФайлы(Приемник);
		ВызватьИсключение;
	КонецПопытки;

	УдалитьФайлы(Приемник);

КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоПеремещениеФайлаРаботаетПоHTTP() Экспорт

	Приемник = ПолучитьИмяВременногоФайла();

	Попытка
		ПереместитьФайл("http://httpbin.org/image", Приемник);
	Исключение
		//Отвалится по 405, значит delete метод отрабатывает
		Описание = ОписаниеОшибки();
		Если СтрНайти(Описание, 405) = 0 Тогда
			ВызватьИсключение;
		КонецЕсли;

		ДД = Новый ДвоичныеДанные(Приемник);
		УдалитьФайлы(Приемник);
		юТест.Проверить(ДД.Размер() > 0, "Файл должен быть перемещен");
	КонецПопытки;

КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоКопированиеФайлаПоОтносительномуПутиРаботаетКорректно() Экспорт

	Путь = ВременныйОтносительныйФайл();
	Путь2 = ПолучитьИмяВременногоФайла();

	Попытка
		КопироватьФайл(Путь, Путь2);
	Исключение 
		УдалитьФайлы(Путь);
		УдалитьФайлы(Путь2);
		ВызватьИсключение;
	КонецПопытки;

	Попытка
		КопироватьФайл(Путь2, Путь);
	Исключение 
		УдалитьФайлы(Путь);
		УдалитьФайлы(Путь2);
		ВызватьИсключение;
	КонецПопытки;

	УдалитьФайлы(Путь);
	УдалитьФайлы(Путь2);

КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоПеремещениеФайлаПоОтносительномуПутиРаботаетКорректно() Экспорт

	Путь = ВременныйОтносительныйФайл();
	Путь2 = ПолучитьИмяВременногоФайла();

	Попытка
		ПереместитьФайл(Путь, Путь2);
	Исключение 
		УдалитьФайлы(Путь);
		УдалитьФайлы(Путь2);
		ВызватьИсключение;
	КонецПопытки;

	Попытка
		ПереместитьФайл(Путь2, Путь);
	Исключение 
		УдалитьФайлы(Путь);
		УдалитьФайлы(Путь2);
		ВызватьИсключение;
	КонецПопытки;

	УдалитьФайлы(Путь);
	УдалитьФайлы(Путь2);

КонецПроцедуры

Функция ВременныйОтносительныйФайл()
	
	Путь = "test.txt";

	ЗаписьТекста = Новый ЗаписьТекста(Путь);
	ЗаписьТекста.ЗаписатьСтроку("Some text");
	ЗаписьТекста.Закрыть();

	Возврат Путь;

КонецФункции

Процедура Тест_ДолженПроверитьЧтоКопированиеФайлаПерезаписываетПриемник() Экспорт

	Источник = ТекущийСценарий().Источник;
	Приемник = ПолучитьИмяВременногоФайла();
	
	КопироватьФайл(Источник, Приемник);
	
	ТекстИсходный = ПрочитатьФайлСкрипта(Источник);
	ТекстКопии    = ПрочитатьФайлСкрипта(Приемник);
	
	Попытка
		юТест.ПроверитьРавенство(ТекстИсходный, ТекстКопии, "файл должен быть скопирован");
	Исключение
		УдалитьФайлы(Приемник);
		ВызватьИсключение;
	КонецПопытки;
	
	Источник = Приемник;
	Приемник = ПолучитьИмяВременногоФайла();
	
	Запись = Новый ЗаписьТекста(Источник);
	Запись.ЗаписатьСтроку("ЭтоНоваяСтрока");
	Запись.Закрыть();

	КопироватьФайл(Источник, Приемник);
	
	ТекстИсходный = ПрочитатьФайлСкрипта(Источник);
	ТекстКопии    = ПрочитатьФайлСкрипта(Приемник);
	
	Попытка
		юТест.ПроверитьРавенство(ТекстИсходный, ТекстКопии, "файл должен быть скопирован");
	Исключение
		УдалитьФайлы(Приемник);
		УдалитьФайлы(Источник);
		ВызватьИсключение;
	КонецПопытки;
	
	УдалитьФайлы(Приемник);
	УдалитьФайлы(Источник);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьСтрЧислоВхожденийВхожденийНет() Экспорт
	
	ГдеИскать = "Здесь был Ежик. Ежик любит грибы, Я Ежик!!!";
	ЧтоИскать = "колбаса";
	
	юТест.ПроверитьРавенство(0, СтрЧислоВхождений(ГдеИскать, ЧтоИскать));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьСтрЧислоВхождений() Экспорт
	
	ГдеИскать = "Здесь был Ежик. Ежик любит грибы, Я Ежик!!!";
	ЧтоИскать = "Ежик";
	
	юТест.ПроверитьРавенство(3, СтрЧислоВхождений(ГдеИскать, ЧтоИскать));
	
КонецПроцедуры

Процедура ВыброситьТестовоеИсключение()
	ВызватьИсключение "тест-тест-тест";
КонецПроцедуры

Процедура Тест_ДолженПроверитьОписаниеОшибки() Экспорт

	Попытка
		ВыброситьТестовоеИсключение();
	Исключение
		Префикс = "{Модуль";
		Описание = ОписаниеОшибки();
		юТест.ПроверитьРавенство(Префикс, Лев(Описание, СтрДлина(Префикс)), "Сообщение должно содержать имя модуля");
		юТест.ПроверитьИстину(Найти(Описание, "Ошибка в строке:") > 0, "Сообщение должно содержать номер строки");
		юТест.ПроверитьИстину(Найти(Описание, "тест-тест-тест}") > 0, "Сообщение должно содержать текст исключения");
		юТест.ПроверитьЛожь(Найти(Описание, "ВызватьИсключение") > 0, "Сообщение НЕ должно содержать фрагмент кода");
		Возврат;
	КонецПопытки;

	ВызватьИсключение "Исключение не было брошено";
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьИнформацияОбОшибкеОписание() Экспорт

	Попытка
		ВыброситьТестовоеИсключение();
	Исключение
		юТест.ПроверитьРавенство("тест-тест-тест", ИнформацияОбОшибке().Описание);
		Возврат;
	КонецПопытки;

	ВызватьИсключение "Исключение не было брошено";
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьКраткоеПредставлениеОшибки() Экспорт

	Попытка
		ВыброситьТестовоеИсключение();
	Исключение
		юТест.ПроверитьРавенство("тест-тест-тест", КраткоеПредставлениеОшибки(ИнформацияОбОшибке()));
		Возврат;
	КонецПопытки;

	ВызватьИсключение "Исключение не было брошено";
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьПодробноеПредставлениеОшибки() Экспорт
	Попытка
		ВыброситьТестовоеИсключение();
	Исключение
		Префикс = "{Модуль";
		Описание = ПодробноеПредставлениеОшибки(ИнформацияОбОшибке());
		юТест.ПроверитьРавенство(Префикс, Лев(Описание, СтрДлина(Префикс)), "Сообщение должно содержать имя модуля");
		юТест.ПроверитьИстину(Найти(Описание, "Ошибка в строке:") > 0, "Сообщение должно содержать номер строки");
		юТест.ПроверитьИстину(Найти(Описание, "тест-тест-тест}") > 0, "Сообщение должно содержать текст исключения");
		юТест.ПроверитьИстину(Найти(Описание, "ВызватьИсключение") > 0, "Сообщение должно содержать фрагмент кода");
		Возврат;
	КонецПопытки;

	ВызватьИсключение "Исключение не было брошено";
КонецПроцедуры

Процедура Тест_ДолженПроверитьОбъединениеПутей() Экспорт
	СИ = Новый СистемнаяИнформация();
	Если Найти(СИ.ВерсияОС,"Windows") > 0 Тогда
		Разделитель = "\";
	Иначе
		Разделитель = "/";
	КонецЕсли;
	
	Путь1 = "КаталогА" + Разделитель;
	Путь2 = "КаталогБ";
	
	юТест.ПроверитьРавенство(Путь1 + Путь2, ОбъединитьПути(Путь1, Путь2));
	
	Путь1 = "КаталогА";
	Путь2 = "КаталогБ";
	
	юТест.ПроверитьРавенство(Путь1 + Разделитель + Путь2, ОбъединитьПути(Путь1, Путь2));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьНеобязательныйПараметрФункцииКодСимвола() Экспорт
	
	Строка = "АБВ"; //Символ(1040) + Символ(1041) + Символ(1042);
	
	юТест.ПроверитьРавенство(1040, КодСимвола(Строка));
	юТест.ПроверитьРавенство(1040, КодСимвола(Строка, 1));
	юТест.ПроверитьРавенство(1041, КодСимвола(Строка, 2));
	юТест.ПроверитьРавенство(1042, КодСимвола(Строка, 3));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьФункциюСтрЧислоСтрок() Экспорт
	
	СтрокаДляТеста = "Это одна строка";
	
	юТест.ПроверитьРавенство(1, СтрЧислоСтрок(СтрокаДляТеста));
	
	СтрокаДляТеста = СтрокаДляТеста + "
	|Это две строки
	|И даже три строки";
	
	юТест.ПроверитьРавенство(3, СтрЧислоСтрок(СтрокаДляТеста));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьФункциюСтрПолучитьСтроку() Экспорт
	СтрокаДляТеста = "Это одна строка";
	
	юТест.ПроверитьРавенство(СтрокаДляТеста, СтрПолучитьСтроку(СтрокаДляТеста, 1));
	
	СтрокаДляТеста = СтрокаДляТеста + "
	|Это две строки
	|И даже три строки";
	
	юТест.ПроверитьРавенство("Это одна строка"  , СтрПолучитьСтроку(СтрокаДляТеста, 1));
	юТест.ПроверитьРавенство("Это две строки"   , СтрПолучитьСтроку(СтрокаДляТеста, 2));
	юТест.ПроверитьРавенство("И даже три строки", СтрПолучитьСтроку(СтрокаДляТеста, 3));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьКодированиеURL() Экспорт
	Эталон = "%251Script%20%D1%80%D1%83%D0%BB%D0%B8%D1%82%21%25";
	
	Результат = КодироватьСтроку("%1Script рулит!%", СпособКодированияСтроки.КодировкаURL);
	юТест.ПроверитьРавенство(Эталон, Результат);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьКодированиеURLВКодировкеURL() Экспорт
	Эталон = "%1Script%20%D1%80%D1%83%D0%BB%D0%B8%D1%82!%";
	Результат = КодироватьСтроку("%1Script рулит!%", СпособКодированияСтроки.URLВКодировкеURL);
	юТест.ПроверитьРавенство(Эталон, Результат);
КонецПроцедуры

Процедура Тест_ДолженПроверитьДекодированиеURL() Экспорт
	Строка = "%251Script%20%D1%80%D1%83%D0%BB%D0%B8%D1%82%21%25";
	
	Результат = РаскодироватьСтроку(Строка, СпособКодированияСтроки.КодировкаURL);
	юТест.ПроверитьРавенство("%1Script рулит!%", Результат);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьДекодированиеURLВКодировкеURL() Экспорт
	Строка = "%1Script%20%D1%80%D1%83%D0%BB%D0%B8%D1%82!%";
	Результат = РаскодироватьСтроку(Строка, СпособКодированияСтроки.URLВКодировкеURL);
	юТест.ПроверитьРавенство("%1Script рулит!%", Результат);
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоПоискФайловВНеизвестномКаталогеВозвращаетПустойМассив() Экспорт
	
	ПлохойКаталог = ОбъединитьПути(КаталогВременныхФайлов(), Строка(Новый УникальныйИдентификатор));
	
	Файлы = НайтиФайлы(ПлохойКаталог, ПолучитьМаскуВсеФайлы());
	юТест.ПроверитьРавенство(0, Файлы.Количество());
	
	Файлы = НайтиФайлы(ПлохойКаталог);
	юТест.ПроверитьРавенство(0, Файлы.Количество());
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоУдалениеВНеизвестномКаталогеНеПадает() Экспорт
	
	СИ = Новый СистемнаяИнформация();
	Если Найти(СИ.ВерсияОС,"Windows") > 0 Тогда
		Каталог = "C:\нет такого пути";
	Иначе
		Каталог = "/none/path";
	КонецЕсли;
	
	// На всякий случай, проверим, вдруг каталог есть
	Файл = Новый Файл(Каталог);
	Если Файл.Существует() Тогда
		ВызватьИсключение "В текущем окружении каталог " + Каталог + " существует. Не выполняем тест";
	КонецЕсли;
	
	УдалитьФайлы(Каталог, "*.txt");
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоПоискФайловПоИмениСуществующегоФайлаВозвращаетМассив() Экспорт
	
	ВФ = юТест.ИмяВременногоФайла();
	
	ТекстДок = Новый ТекстовыйДокумент;
	ТекстДок.Записать(ВФ);
	
	Массив = НайтиФайлы(ВФ);
	
	юТест.ПроверитьРавенство(1, Массив.Количество());
	юТест.ПроверитьРавенство(ВФ, Массив[0].ПолноеИмя);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоПоискФайловРаботает() Экспорт
	
	ВФ = Новый Файл(юТест.ИмяВременногоФайла());
	
	ТекстДок = Новый ТекстовыйДокумент;
	ТекстДок.Записать(ВФ.ПолноеИмя);
	
	Массив = НайтиФайлы(КаталогВременныхФайлов(), ВФ.Имя);
	
	юТест.ПроверитьРавенство(1, Массив.Количество());
	юТест.ПроверитьРавенство(ВФ.ПолноеИмя, Массив[0].ПолноеИмя);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьНСтрВозвращаетПервуюСтроку() Экспорт
	
	Тест = НСтр("ru = 'Я на русском'; en = 'Я на английском, хехе'", "ru");
	
	юТест.ПроверитьРавенство("Я на русском", Тест);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоПоискФайловРазрешаетСсылкиВПутях() Экспорт
	
	Корень = ТекущийСценарий().Каталог+"\..";
	Сообщить(Корень);
	НайденныеФайлы = НайтиФайлы(Корень, "*.os", Истина);
	
	юТест.ПроверитьНеРавенство(0, НайденныеФайлы.Количество());
	
КонецПроцедуры


Процедура Тест_ДолженПроверитьПолучениеТекущейДатыВМиллисекундах() Экспорт

	ДатаВМиллисекундах1 = ТекущаяУниверсальнаяДатаВМиллисекундах();
	Дата1 = ТекущаяДата();

	// Создаём задержку не менее 1 секунды
	Пока ТекущаяДата() - Дата1 < 2 Цикл
	КонецЦикла;

	// и убеждаемся, что в миллисекундах набежало не меньше 1000
	ДатаВМиллисекундах2 = ТекущаяУниверсальнаяДатаВМиллисекундах();
	юТест.ПроверитьИстину(ДатаВМиллисекундах2 - ДатаВМиллисекундах1 > 1000, "Задержка в секунду не сработала!");

КонецПроцедуры

Процедура Тест_ДолженПроверитьОкруглениеТекущейДатыДоСекунд() Экспорт
	ДатаИсходная = ТекущаяДата();
	ДатаСозданнаяВручную = Дата(Формат(ДатаИсходная, "ДФ=ггггММддЧЧммсс"));
	юТест.ПроверитьРавенство(ДатаИсходная, ДатаСозданнаяВручную);
КонецПроцедуры
