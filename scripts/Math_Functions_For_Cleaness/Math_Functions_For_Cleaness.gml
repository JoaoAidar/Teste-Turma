//Code made by AIDAR 
function WrapValue(_value, _maxValue, _minValue) 
{
	var returnValue = _value
	if(_value < _minValue)	{returnValue = _maxValue} 
	if(_value > _maxValue)	{returnValue = _minValue}
	
	return returnValue
}

function ClampValue(_value, _maxValue, _minValue) 
{
	var returnValue = _value
	if(_value < _minValue)	{returnValue = _minValue} 
	if(_value > _maxValue)	{returnValue = _maxValue}
	
	return returnValue
}