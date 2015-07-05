package org.simpleframework.xml.convert;

public class ConvertException
  extends Exception
{
  public ConvertException(String paramString, Object... paramVarArgs)
  {
    super(String.format(paramString, paramVarArgs));
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.ConvertException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */