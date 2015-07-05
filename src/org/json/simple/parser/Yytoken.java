package org.json.simple.parser;

public class Yytoken
{
  public static final int TYPE_COLON = 6;
  public static final int TYPE_COMMA = 5;
  public static final int TYPE_EOF = -1;
  public static final int TYPE_LEFT_BRACE = 1;
  public static final int TYPE_LEFT_SQUARE = 3;
  public static final int TYPE_RIGHT_BRACE = 2;
  public static final int TYPE_RIGHT_SQUARE = 4;
  public static final int TYPE_VALUE = 0;
  public int type = 0;
  public Object value = null;
  
  public Yytoken(int paramInt, Object paramObject)
  {
    type = paramInt;
    value = paramObject;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    switch (type)
    {
    }
    for (;;)
    {
      return localStringBuffer.toString();
      localStringBuffer.append("VALUE(").append(value).append(")");
      continue;
      localStringBuffer.append("LEFT BRACE({)");
      continue;
      localStringBuffer.append("RIGHT BRACE(})");
      continue;
      localStringBuffer.append("LEFT SQUARE([)");
      continue;
      localStringBuffer.append("RIGHT SQUARE(])");
      continue;
      localStringBuffer.append("COMMA(,)");
      continue;
      localStringBuffer.append("COLON(:)");
      continue;
      localStringBuffer.append("END OF FILE");
    }
  }
}

/* Location:
 * Qualified Name:     org.json.simple.parser.Yytoken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */