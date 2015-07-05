package org.simpleframework.xml.core;

public class PersistenceException
  extends Exception
{
  public PersistenceException(String paramString, Object... paramVarArgs)
  {
    super(String.format(paramString, paramVarArgs));
  }
  
  public PersistenceException(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    super(String.format(paramString, paramVarArgs), paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PersistenceException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */