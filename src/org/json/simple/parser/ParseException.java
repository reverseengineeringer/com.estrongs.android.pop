package org.json.simple.parser;

public class ParseException
  extends Exception
{
  public static final int ERROR_UNEXPECTED_CHAR = 0;
  public static final int ERROR_UNEXPECTED_EXCEPTION = 2;
  public static final int ERROR_UNEXPECTED_TOKEN = 1;
  private static final long serialVersionUID = -7880698968187728548L;
  private int errorType;
  private int position;
  private Object unexpectedObject;
  
  public ParseException(int paramInt)
  {
    this(-1, paramInt, null);
  }
  
  public ParseException(int paramInt1, int paramInt2, Object paramObject)
  {
    position = paramInt1;
    errorType = paramInt2;
    unexpectedObject = paramObject;
  }
  
  public ParseException(int paramInt, Object paramObject)
  {
    this(-1, paramInt, paramObject);
  }
  
  public int getErrorType()
  {
    return errorType;
  }
  
  public int getPosition()
  {
    return position;
  }
  
  public Object getUnexpectedObject()
  {
    return unexpectedObject;
  }
  
  public void setErrorType(int paramInt)
  {
    errorType = paramInt;
  }
  
  public void setPosition(int paramInt)
  {
    position = paramInt;
  }
  
  public void setUnexpectedObject(Object paramObject)
  {
    unexpectedObject = paramObject;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    switch (errorType)
    {
    default: 
      localStringBuffer.append("Unkown error at position ").append(position).append(".");
    }
    for (;;)
    {
      return localStringBuffer.toString();
      localStringBuffer.append("Unexpected character (").append(unexpectedObject).append(") at position ").append(position).append(".");
      continue;
      localStringBuffer.append("Unexpected token ").append(unexpectedObject).append(" at position ").append(position).append(".");
      continue;
      localStringBuffer.append("Unexpected exception at position ").append(position).append(": ").append(unexpectedObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.json.simple.parser.ParseException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */