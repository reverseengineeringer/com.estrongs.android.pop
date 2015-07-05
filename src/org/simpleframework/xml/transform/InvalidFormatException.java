package org.simpleframework.xml.transform;

public class InvalidFormatException
  extends TransformException
{
  public InvalidFormatException(String paramString, Object... paramVarArgs)
  {
    super(String.format(paramString, paramVarArgs), new Object[0]);
  }
  
  public InvalidFormatException(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    super(String.format(paramString, paramVarArgs), new Object[] { paramThrowable });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.InvalidFormatException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */