﻿using System;
using ScriptEngine.Machine;
using ScriptEngine.Machine.Contexts;
using System.IO;
using Newtonsoft.Json;

namespace ScriptEngine.HostedScript.Library.Json
{
    /// <summary>
    /// 
    /// Предназначен для последовательного чтения JSON-данных из файла или строки.
    /// </summary>
    [ContextClass("ЧтениеJSON", "JSONReader")]
    class JSONReader : AutoContext<JSONReader>
    {

        private StringReader _stringReader; // Используется, если json текст задан с помощью функции "УстановитьСтрока"
        private StreamReader _fileReader; // Используется, если json текст задан с помощью функции "ОткрытьФайл"
        private JsonTextReader _reader; // Объект из библиотеки Newtonsoft для работы с форматом JSON 

        /// <summary>
        /// 
        /// Возвращает true если для объекта чтения json был задан текст для парсинга.
        /// </summary>
        private bool IsOpen()
        {
            return _reader != null;
        }

        public JSONReader()
        {
        }

        [ScriptConstructor]
        public static IRuntimeContextInstance Constructor()
        {
            return new JSONReader();
        }

        /// <summary>
        /// 
        /// Указывает на позицию, находящуюся сразу после прочитанного значения.
        /// При ошибке чтение остается на позиции последнего успешно считанного символа.
        /// </summary>
        /// <value>Число (Number), Неопределено (Undefined)</value>
        [ContextProperty("ТекущаяПозиция", "CurrentPosition")]
        public IValue CurrentPosition
        {
            get
            {
                if (IsOpen())
                {
                    return ValueFactory.Create(_reader.LinePosition);
                }
                else
                    return ValueFactory.Create(); // Неопределено 
            }

        }


        /// <summary>
        /// 
        /// Указывает на позицию сразу после прочитанного значения.
        /// Например, перед чтением первого элемента - 0, после чтения первого элемента -1 .
        /// </summary>
        /// <value>Число (Number), Неопределено (Undefined)</value>
        [ContextProperty("ТекущаяСтрока", "CurrentLine")]
        public IValue CurrentLine
        {
            get
            {
                if (IsOpen())
                {
                    return ValueFactory.Create(_reader.LineNumber);
                }
                else
                    return ValueFactory.Create(); // Неопределено
            }

        }


        /// <summary>
        /// 
        /// Содержит текущее значение:
        /// 
        ///  - Число - если ТипТекущегоЗначения имеет значение Число;
        ///  - Строка - если ТипТекущегоЗначения имеет значение:
        /// 
        ///  - Комментарий,
        ///  - ИмяСвойства,
        ///  - Строка;
        ///  - Булево - если ТипТекущегоЗначения имеет значение Булево,
        ///  - Неопределено - если ТипТекущегоЗначения имеет значение Null.
        /// Исключение генерируется в случае, если ТипТекущегоЗначения имеет одно из следующих значений:
        /// 
        ///  - НачалоМассива,
        ///  - КонецМассива,
        ///  - НачалоОбъекта,
        ///  - КонецОбъекта,
        ///  - Ничего.
        /// </summary>
        /// <value>Число (Number), Строка (String), Булево (Boolean), Неопределено (Undefined)</value>
        [ContextProperty("ТекущееЗначение", "CurrentValue")]
        public IValue CurrentValue
        {
            get
            {
                if (IsOpen())
                {
                    var type = _reader.TokenType;

                    if (type == JsonToken.String || type == JsonToken.Comment || type == JsonToken.PropertyName)
                        return ValueFactory.Create((string)_reader.Value);
                    else if (type == JsonToken.Boolean)
                        return ValueFactory.Create((bool)_reader.Value);
                    else if (type == JsonToken.Integer)
                    {
                        decimal d = Convert.ToDecimal(_reader.Value);
                        return ValueFactory.Create(d);
                    }
                    else if (type == JsonToken.Float)
                        return ValueFactory.Create((decimal)_reader.Value);
                    else
                        throw new Exception("Ошибка при получении значения атрибута контекста (ТекущееЗначение): Текущее значение JSON не может быть получено:" + type.ToString());
                }
                else
                    throw new Exception("Источник данных JSON не открыт");
            }
        }


        /// <summary>
        /// 
        /// Тип текущего значения в документе JSON.
        /// Неопределено - если чтение еще не началось или достигнут конец файла.
        /// </summary>
        /// <value>ТипЗначенияJSON (JSONValueType)</value>
        [ContextProperty("ТипТекущегоЗначения", "CurrentValueType")]
        public IValue CurrentValueType
        {
            get
            {
                if (IsOpen())
                {
                    string JSONValueType = "None";

                    switch (_reader.TokenType)
                    {
                        case JsonToken.Null:
                            JSONValueType = "Null";
                            break;
                        case JsonToken.StartObject:
                            JSONValueType = "ObjectStart";
                            break;
                        case JsonToken.StartArray:
                            JSONValueType = "ArrayStart";
                            break;
                        case JsonToken.PropertyName:
                            JSONValueType = "PropertyName";
                            break;
                        case JsonToken.Comment:
                            JSONValueType = "Comment";
                            break;
                        case JsonToken.Integer:
                            JSONValueType = "Number";
                            break;
                        case JsonToken.Float:
                            JSONValueType = "Number";
                            break;
                        case JsonToken.String:
                            JSONValueType = "String";
                            break;
                        case JsonToken.Boolean:
                            JSONValueType = "Boolean";
                            break;
                        case JsonToken.Undefined:
                            JSONValueType = "Null";
                            break;
                        case JsonToken.EndObject:
                            JSONValueType = "ObjectEnd";
                            break;
                        case JsonToken.EndArray:
                            JSONValueType = "ArrayEnd";
                            break;
                    }
                    return GlobalsManager.GetEnum<JSONValueTypeEnum>()[JSONValueType];

                }
                else
                    throw new Exception("Источник данных JSON не открыт");
            }

        }

        /// <summary>
        /// 
        /// Завершает чтение текста JSON из файла или строки.
        /// </summary>
        ///
        ///
        ///
        [ContextMethod("Закрыть", "Close")]
        public void Close()
        {
            if (_fileReader != null)
            {
                _fileReader.Dispose();
                _fileReader = null;
            }

            if (_reader != null)
            {
                _reader.Close();
                _reader = null;
            }
        }


        /// <summary>
        /// 
        /// Открывает JSON-файл для чтения данным объектом. Если перед вызовом данного метода уже производилось чтение JSON из другого файла или строки, то чтение прекращается и объект инициализируется для чтения из указанного файла.
        /// </summary>
        ///
        /// <param name="JSONFileName">
        /// Имя файла, содержащего текст JSON. </param>
        /// <param name="Encoding">
        /// Позволяет задать кодировку входного файла.
        [ContextMethod("ОткрытьФайл", "OpenFile")]
        public void OpenFile(string JSONFileName, IValue Encoding = null)
        {
            if (_fileReader != null)
            {
                _fileReader.Dispose();
            }

            if (Encoding != null)
                _fileReader = Environment.FileOpener.OpenReader(JSONFileName, TextEncodingEnum.GetEncoding(Encoding));
            else
                _fileReader = Environment.FileOpener.OpenReader(JSONFileName);


            _reader = new JsonTextReader(_fileReader);

            _stringReader = null;

        }


        /// <summary>
        /// Если текущее значение – начало массива или объекта, то пропускает его содержимое и конец.
        /// Для остальных типов значений работает аналогично методу Прочитать().
        /// </summary>
        ///
        [ContextMethod("Пропустить", "Skip")]
        public bool Skip()
        {

            if (IsOpen())
            {
                if (_reader.TokenType == JsonToken.StartArray || _reader.TokenType == JsonToken.StartObject)
                {
                    while (_reader.Read())
                    {
                        if (_reader.TokenType == JsonToken.EndArray || _reader.TokenType == JsonToken.EndObject)
                        {
                            return _reader.Read();
                        }
                    }
                    return true;
                }
                else
                {
                    if (_reader.Read())
                        return _reader.Read();
                    else
                        return false;
                }
                    
            }
            else
                throw new Exception("Источник данных JSON не открыт");

        }


        /// <summary>
        /// Выполняет чтение значения JSON.
        /// </summary>
        ///
        [ContextMethod("Прочитать", "Read")]
        public bool Read()
        {
            return _reader.Read();
        }


        /// <summary>
        /// 
        /// Устанавливает строку, содержащую текст JSON для чтения данным объектом. Если перед вызовом данного метода уже производилось чтение JSON из другого файла или строки, то чтение прекращается и объект инициализируется для чтения из указанной строки.
        /// </summary>
        ///
        /// <param name="JSONString">
        /// Строка, содержащая текст в формате JSON. </param>
        ///
        ///
        [ContextMethod("УстановитьСтроку", "SetString")]
        public void SetString(string JSONString)
        {

            _stringReader = new StringReader(JSONString);
            _reader = new JsonTextReader(_stringReader);
            if (_fileReader != null)
            {
                _fileReader.Dispose();
                _fileReader = null;
            }
        }

    }
}