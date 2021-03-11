﻿// MIT License
// Copyright (c) 2020 vasvl123
// https://github.com/vasvl123/useyourmind

using System;

namespace onesharp.lib
{
	class Объекты : Onesharp
	{

		public Объекты() : base("Объекты") {}

		public object УзелСвойство(Структура Узел, string Свойство)
		{
			object УзелСвойство = null;
			if (!(Узел == Неопределено))
			{
				Узел.Свойство(Свойство, out УзелСвойство);
			}
			return УзелСвойство;
		} // УзелСвойство(Узел)


		public Узел ИмяЗначение(string Имя = "", object _Значение = null)
		{
			var Значение = (_Значение is null) ? "" : _Значение;
			return Узел.Новый("Имя, Значение", Имя, Значение);
		}


		public string НоваяФорма(string Имя)
		{
			var ткст =
			@"
			|Форма.
			|	name: '+Имя+' 
			|	form: 'box'
			|	role: 'thing'
			|	movable: true
			|	color: 0x555555
			|	transparent: true
			|	opacity: 0.3
			|	position_x: 0
			|	position_y: 0
			|	position_z: 0
			|	scale_x: 2
			|	scale_z: 2
			";
			ткст = Стр.Заменить(ткст, "+Имя+", Имя);
			return ткст;
		} // НоваяФорма()


		public string Субъект_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст = 
			@"
			|События
			|+НоваяФорма+
			|	camera_x: 0
			|	camera_y: 50
			|	camera_z: 100
			|	role: 'player'
			";
			ткст = Стр.Заменить(ткст, "+НоваяФорма+", НоваяФорма("Субъект"));
			return ткст;
		}


		public string Предмет_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст = 
			@"
			|События
			|+НоваяФорма+
			";
			ткст = Стр.Заменить(ткст, "+НоваяФорма+", НоваяФорма("Предмет"));
			return ткст;
		}


		public string Комната_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст =
			@"
			|События
			|+НоваяФорма+
			|	role: 'room'
			|	movable: false
			";
			ткст = Стр.Заменить(ткст, "+НоваяФорма+", НоваяФорма("Комната"));
			return ткст;
		}


		public string Кнопка_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст =
			@"
			|События
			|Текст
			|Вид
			|	button	class=btn btn - primary	onclick=addcmd(this); return false	type=button
			|		Значение: Текст
			";
			return ткст;
		}


		public string Надпись_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст = 
			@"
			|События
			|Текст
			|Вид
			";
			return ткст;
		}


		public string Задача_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст = 
			@"
			|События
			|Условие
			|Параметры.
			|Вид
			";
			return ткст;
		}

		public void Задача_Модель(pagedata Данные, Узел Свойства, Соответствие Изменения)
		{
			var Условие = Данные.ЗначениеСвойства(Свойства.д.Условие);
			if (!(Изменения.Получить(Свойства.Родитель) as bool? == Истина))
			{
				if (Изменения.Получить(Свойства.д.Условие) == Истина)
				{
					if (Условие)
					{
						Узел Параметры = Узел.Новый();
						foreach (КлючИЗначение элПар in Свойства.д.Параметры.д)
						{
							Параметры.Вставить(элПар.Ключ as string, Данные.ЗначениеСвойства(элПар.Значение as Структура));
						}
						Данные.Процесс.НоваяЗадача(Параметры, "Служебный");
					}
				}
			}
		}


		// Выполнить
		public string Выполнить_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст = 
			@"
			|События
			|Условие
			|Тогда
			|Иначе
			|Результат
			";
			return ткст;
		}

		public void Выполнить_Модель(pagedata Данные, Узел Свойства, Соответствие Изменения)
		{
			var Инициализация = (Изменения.Получить(Свойства.Родитель) as bool? == Истина);
			if (Инициализация || Изменения.Получить(Свойства.д.Условие) == Истина)
			{
				object Результат;
				var Условие = Данные.ЗначениеСвойства(Свойства.д.Условие);
				if (Условие)
				{
					Результат = Данные.ЗначениеСвойства(Свойства.д.Тогда);
				}
				else
				{
					Результат = Данные.ЗначениеСвойства(Свойства.д.Иначе);
				}
                Данные.НовоеЗначениеУзла(Свойства.д.Результат, ИмяЗначение(ТипЗнч(Результат), Результат), Истина);
				Изменения.Вставить(Свойства.д.Результат, Истина);
			}

		}


		public string ИсточникДанных_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст =
			@"
			|События
			|ЗапросДанных.
			|	БазаДанных
			|	УсловияОтбора
			|	Обновление: Авто
			|	ЧислоЗаписей: 10
			|	СписокПолей.
			|	Команда: НайтиЗаголовок
			|	Задача
			|Результат
			|Записи.
			";
			return ткст;
		}

		public void ИсточникДанных_Модель(pagedata Данные, Узел Свойства, Соответствие Изменения)
		{
			var Инициализация = (Изменения.Получить(Свойства.Родитель) as bool? == Истина);
			var НовыйЗапрос = Инициализация || (Изменения.Получить(Свойства.д.ЗапросДанных.д.БазаДанных) == Истина);
			НовыйЗапрос = НовыйЗапрос || (Изменения.Получить(Свойства.д.ЗапросДанных) == Истина);

			if (Инициализация)
			{
				Данные.НовыйДочерний(Свойства.д.ЗапросДанных, ИмяЗначение("Направление"), Истина, Истина);
				Данные.НовыйДочерний(Свойства.д.ЗапросДанных, ИмяЗначение("НачальнаяПозиция"), Истина, Истина);
				Данные.НовыйДочерний(Свойства.д.ЗапросДанных, ИмяЗначение("КонечнаяПозиция"), Истина, Истина);
			}

			if (НовыйЗапрос)
			{
				var БазаДанных = Данные.ЗначениеСвойства(Свойства.д.ЗапросДанных.д.БазаДанных);
				var сЗадача = Данные.ЗначениеСвойства(Свойства.д.ЗапросДанных.д.Задача);
				if (!(сЗадача == ""))
				{
					// завершить задачу
					var Параметры = Структура.Новый("сЗадача, cmd", сЗадача, "ЗавершитьЗадачу");
					Данные.Процесс.НоваяЗадача(Параметры, "Служебный");
				}
				//Если БазаДанныхИзменена Тогда // очистить записи
				var кУзел = Свойства.д.Записи.Дочерний;
				while (!(кУзел == Неопределено))
				{
					кУзел.Значение = Данные.Пустой;
					Изменения.Вставить(кУзел, Истина);
					кУзел = кУзел.Соседний;
				}
				//КонецЕсли;
				var Запрос = Структура.Новый("Данные, Свойства, ЗапросДанных, cmd", Данные, Свойства, Данные.СвойстваВСтуктуру(Свойства.д.ЗапросДанных), "ЗапросДанных");
				var ИдЗадачи = Данные.Процесс.НоваяЗадача(Запрос, "Служебный").ИдЗадачи;
				Данные.НовоеЗначениеУзла(Свойства.д.ЗапросДанных.д.Задача, ИмяЗначение("Строка", ИдЗадачи), Истина);
				//Изменения.Вставить(Свойства.д.ЗапросДанных.д.Задача, Истина);
			}

			if (Изменения.Получить(Свойства.д.Результат) == Истина)
			{
				Узел дУзел = Свойства.д.Результат.Дочерний;
				while (!(дУзел == Неопределено))
				{
					var ЗапросДанные = дУзел.Значение as Структура;
					var ИмяЗаписи = "з" + ЗапросДанные.с.Позиция;
					Узел Запись = УзелСвойство(Свойства.д.Записи._д, ИмяЗаписи);
					if (!(Запись == Неопределено))
					{
						Запись.Значение = ЗапросДанные.с.Заголовок;
						Изменения.Вставить(Запись, Истина);
					}
					else
					{
						Запись = Узел.Новый("Имя, Значение", "з" + ЗапросДанные.с.Позиция, ЗапросДанные.с.Заголовок);
						var кУзел = Данные.НовыйДочерний(Свойства.д.Записи, Запись, Истина, Истина);
					}
					дУзел = дУзел.Соседний;
				}
				// удалить результаты
				дУзел = Свойства.д.Результат.Дочерний;
				if (!(дУзел == Неопределено))
				{
					Данные.УдалитьУзел(дУзел, Истина, Истина);
				}
				Изменения.Вставить(Свойства.д.Записи, Истина);
			}

		}

		public string ПанельДанных_Кнопка(int Начало, string Позиция)
		{
			var ткст =
			@"
			|*button	class=btn btn-light btn-sm	А=ПриНажатии	type=button	role=pos	pos=" + Позиция + @"
			|	Строка: " + Начало;

			return ткст;
		} ///

		// Панель данных
		public string ПанельДанных_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст =
			@"
			|События
			|ИсточникДанных
			|Количество: 10
			|Направление: Назад
			|*Начало
			|*кПозиция
			|*Страницы.
			|*Вид
			|	div
			|		div	class=btn-group
			|			button	class=btn btn-light btn-sm	А=ПриНажатии	type=button	role=bck
			|				Строка: +
			|			З: Страницы
			|			button	class=btn btn-light btn-sm	А=ПриНажатии	type=button	role=pos	pos=
			|				Строка: 0
			";
			return ткст;
		}

		public void ПанельДанных_Модель(pagedata Данные, Узел Свойства, Соответствие Изменения)
		{

			var ИсточникДанных = Данные.ЗначениеСвойства(Свойства.д.ИсточникДанных);
			var Инициализация = (Изменения.Получить(Свойства.Родитель) as bool? == Истина);

			// Конструктор
			if (Инициализация)
			{
				ИсточникДанных.Свойства.д.ЗапросДанных.д.ЧислоЗаписей.Значение = Свойства.д.Количество.Значение;
				//ИсточникДанных.Свойства.д.ЗапросДанных.д.Направление.Значение = Свойства.д.Направление.Значение;
			}

			if (Изменения.Получить(Свойства.д.События) == Истина)
			{
				var дУзел = Свойства.д.События.Дочерний;
				if (!(дУзел == Неопределено))
				{
					var мСобытие = Стр.Разделить(дУзел.Значение, Символы.Таб);
					var Узел = Данные.ПолучитьУзел(мСобытие[1]);
					if (!(Узел == Неопределено))
					{
						var кПозиция = Свойства.д.кПозиция.Значение;
						var икПозиция = ИсточникДанных.Свойства.д.ЗапросДанных.д.КонечнаяПозиция.Значение;
						if (кПозиция == "" || Число(икПозиция) < Число(кПозиция))
						{
							кПозиция = икПозиция;
						}
						var Роль = "" + Данные.НайтиАтрибут(Узел, "role").Значение;
						if (Роль == "pos")
						{
							var Позиция = "" + Данные.НайтиАтрибут(Узел, "pos").Значение;
							ИсточникДанных.Свойства.д.ЗапросДанных.д.НачальнаяПозиция.Значение = Позиция;
						}
						else
						{
							var Количество = (int)Число(Свойства.д.Количество.Значение);
							var Начало = Свойства.д.Начало.Значение as object;
							if (Начало as string == "")
							{
								Начало = Количество;
							}
							else
							{
								Начало = Число(Начало);
							}
							Данные.СоздатьСвойства(Свойства.д.Страницы, ПанельДанных_Кнопка((int)Начало, кПозиция), Истина, Ложь);
							if (Роль == "bck")
							{
								ИсточникДанных.Свойства.д.ЗапросДанных.д.НачальнаяПозиция.Значение = кПозиция;
								Начало = (int)Начало + Количество;
								Свойства.д.Начало.Значение = "" + Начало;
							}
						}
						Свойства.д.кПозиция.Значение = кПозиция;
					}
					ИсточникДанных.Изменения.Вставить(ИсточникДанных.Свойства.д.ЗапросДанных, Истина);
					Данные.ОбъектыОбновить.Добавить(ИсточникДанных);
				}
				Данные.УдалитьУзел(дУзел, Истина, Истина);
				Изменения.Вставить(Свойства.д.События, Истина);
			}
		}

		// Таблица

		public string Таблица_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст =
			@"
			|События
			|СвойстваСтроки.
			|СписокПолей.
			|ИсточникСтрок
			|Вид
			";
			return ткст;
		}

		public void Таблица_Модель(pagedata Данные, Узел Свойства, Соответствие Изменения)
		{

			var Инициализация = (Изменения.Получить(Свойства.Родитель) as bool? == Истина);
			var ИсточникСтрокИзменен = (Изменения.Получить(Свойства.д.ИсточникСтрок) == Истина);

			var УзелЗаголовок = Свойства.Соседний;

			// Конструктор
			if (Инициализация)
			{
				if (УзелЗаголовок == Неопределено)
				{ // создать заголовок
					УзелЗаголовок = Данные.НовыйСоседний(Свойства, ИмяЗначение("thread", ""), Истина);
					var Узел = Данные.НовыйДочерний(УзелЗаголовок, ИмяЗначение("tr", ""), Истина);
					foreach (КлючИЗначение элПоле in Свойства.д.СписокПолей.д)
					{
						Узел Поле = элПоле.Значение as Узел;
						var стрУзел = ИмяЗначение("th", Данные.ЗначениеСвойства(Поле.д.Заголовок));
						Данные.НовыйДочерний(Узел, стрУзел, Истина, Истина);
					}
				}
			}

			var ИсточникСтрок = Данные.ЗначениеСвойства(Свойства.д.ИсточникСтрок);

			if (ИсточникСтрокИзменен)
			{
				var Строки = Соответствие.Новый();
				var УзелСтроки = Свойства;
				УзелЗаголовок = УзелСтроки.Соседний;
				while (!(УзелЗаголовок == Неопределено))
				{
					УзелСтроки = УзелЗаголовок;
					Строки.Вставить(УзелСтроки.Значение, "");
					УзелЗаголовок = УзелЗаголовок.Соседний;
				}
				// добавить строки
				if (!(ИсточникСтрок == Неопределено))
				{
					ИсточникСтрок = ИсточникСтрок.Дочерний;
					while (!(ИсточникСтрок == Неопределено))
					{
						var ИмяСтроки = "СтрокаТаблицы " + ИсточникСтрок.Имя;
						var оСтрока = Строки.Получить(ИмяСтроки);
						if (оСтрока == Неопределено)
						{
							УзелСтроки = Данные.НовыйСоседний(УзелСтроки, ИмяЗначение("О", ИмяСтроки), Истина);
							var СвойстваСтроки = Данные.ОбработатьОбъект(УзелСтроки, Истина) as Узел;
							// дополнительные свойства
							if (Свойства.д.Свойство("СвойстваСтроки"))
							{
								Узел стСвойстваСтроки = null;
								Узел Узел = СвойстваСтроки.Дочерний;
								while (!(Узел == Неопределено))
								{
									стСвойстваСтроки = Узел;
									Узел = Узел.Соседний;
								}
								foreach (КлючИЗначение элСвойство in Свойства.д.СвойстваСтроки.д)
								{
									var свУзел = Данные.КопироватьВетку(элСвойство.Значение as Узел, Данные.ЭтотОбъект, стСвойстваСтроки, СвойстваСтроки);
									стСвойстваСтроки = Данные.НовыйСоседний(стСвойстваСтроки, свУзел, Истина);
								}
							}
							Данные.НовоеЗначениеУзла(СвойстваСтроки.д.Источник, ИмяЗначение("С", "у " + ИсточникСтрок.Код), Истина);
							var сУзел = Данные.НовыйДочерний(Свойства.д.Вид.Дочерний, ИмяЗначение("tr", ""), Истина, Истина);
							Данные.НовыйДочерний(сУзел, ИмяЗначение("З", "у " + СвойстваСтроки.д.Поля.Код), Истина, Истина);
						}
						ИсточникСтрок = ИсточникСтрок.Соседний;
					}
				}
			}
		}

		// СтрокаТаблицы
		public string СтрокаТаблицы_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст =
			@"
			|События
			|Источник
			|Поля
			";
			return ткст;
		}

		public void СтрокаТаблицы_Модель(pagedata Данные, Узел Свойства, Соответствие Изменения)
		{

			var Инициализация = (Изменения.Получить(Свойства.Родитель) as bool? == Истина);
			var ИсточникИзменен = (Изменения.Получить(Свойства.д.Источник) == Истина);

			if (ИсточникИзменен)
			{
				// удалить прежние поля
				var сУзел = Свойства.д.Поля.Дочерний;
				if (!(сУзел == Неопределено))
				{
					Данные.УдалитьУзел(сУзел, Истина, Истина);
				}
			}

			// Конструктор
			if (Инициализация || ИсточникИзменен)
			{
				var оУзел = Свойства.Родитель;
				var Источник = Данные.ЗначениеСвойства(Свойства.д.Источник); // получить узел по ссылке
				if (!(Источник.Значение == Данные.Пустой))
				{
					var Узел = Свойства.д.Поля;
					foreach (КлючИЗначение элПоле in оУзел.Родитель.с.Свойства.д.СписокПолей.д)
					{
						Узел свПоле = элПоле.Значение as Узел;
						Узел стрУзел = null;
						var Шаблон = УзелСвойство(свПоле.д, "Шаблон");
						if (!(Шаблон == Неопределено))
						{
							стрУзел = Данные.КопироватьВетку(Шаблон.Дочерний, Данные.ЭтотОбъект, Узел, Свойства.д.Поля);
						}
						else
						{
							var Поле = элПоле.Ключ as string;
							var ПолеЗначение = УзелСвойство(Источник.Значение, Поле) as string;
							стрУзел = ИмяЗначение("td", ПолеЗначение);
						}
						Узел = Данные.НовыйДочерний(Свойства.д.Поля, стрУзел, Истина, Истина);
					}
				}
				Данные.ОбъектыОбновитьДобавить(оУзел.Родитель); // обновить таблицу
			}

		}


		public string Загрузить_Свойства(pagedata Данные, Узел оУзел)
		{
			var ткст =
			@"
			|События
			|Файл
			|Сохранен
			";
			return ткст;
		}


		public void Загрузить_Модель(pagedata Данные, Узел Свойства, Соответствие Изменения)
		{

			if (Изменения.Получить(Свойства.д.События) == Истина)
			{

				Узел дУзел = Свойства.д.События.Дочерний;
				if (!(дУзел == Неопределено))
				{
					var мСобытие = Стр.Разделить(дУзел.Значение as string, Символы.Таб);
					if (мСобытие[0] == "ПриОтправке")
					{
						if (дУзел.с.Параметры.Свойство("filename"))
						{
                            string[] расш = Стр.Разделить(дУзел.с.Параметры.filename, ".");
                            var уФайл = Свойства.д.Файл as Узел;
                            уФайл.Значение = "" + Цел(ТекущаяУниверсальнаяДатаВМиллисекундах()) + "." + расш[расш.Length - 1];
							Данные.Процесс.ПередатьДанныеД(Структура.Новый("ИстДанных, БазаДанных, Заголовок, Команда, дДанные, неОбратныйЗапрос", Данные.Процесс.Субъект, "inbox", Структура.Новый("ИмяДанных, ТипДанных", Свойства.д.Файл.Значение, 2), "ЗаписатьДанные", дУзел.с.Параметры.fl, Неопределено));
						}
						Изменения.Вставить(Свойства.д.Файл, Истина);
					}
					Данные.УдалитьУзел(дУзел);
				}

			}
		}



	}
}