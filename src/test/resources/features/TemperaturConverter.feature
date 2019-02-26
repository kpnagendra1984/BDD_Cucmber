@TemperatureConverter 
Feature: I want to convert the given centigrade temperature value into
Fahrenheit value through a standard java program and an online converter application
		
@ConverterViaStandardJavaPrgram
Scenario Outline: Centigrade to Fahrenheit Converter through standard java program
	Given open convertor and give <centigradeValue>
	When convert the Centigrade value into Fahrenheit
	Then check <FahrenheitValue> in output
	
	Examples:
	|	centigradeValue	|	FahrenheitValue	|
	|	44.0			|		111.2		|
	|	59.0			|		138.2		|
	|	21.0			|		69.8		|

@ConverterApplication
Scenario Outline: Convert Centigrade to Fahrenheit Converter via Application
	Given lanuch "<convertorApplication>" Application
	Then page should contains title
	"""
	RapidTables
	Celsius to Fahrenheit conversion
	""" 
	When provide <centigradeValue> value
	And click on convert button
	Then check <FahrenheitValue> in output box
	
	Examples:
	|	convertorApplication 														|	centigradeValue	|	FahrenheitValue	|
	|	https://www.rapidtables.com/convert/temperature/celsius-to-fahrenheit.html	|	44.0			|		111.2		|
	|	https://www.rapidtables.com/convert/temperature/celsius-to-fahrenheit.html	|	59.0			|		138.2		|
	|	https://www.rapidtables.com/convert/temperature/celsius-to-fahrenheit.html	|	21.0			|		69.8		|
