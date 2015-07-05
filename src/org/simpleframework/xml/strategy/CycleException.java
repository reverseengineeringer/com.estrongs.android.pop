package org.simpleframework.xml.strategy;

import org.simpleframework.xml.core.PersistenceException;

public class CycleException
  extends PersistenceException
{
  public CycleException(String paramString, Object... paramVarArgs)
  {
    super(paramString, paramVarArgs);
  }
  
  public CycleException(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    super(paramThrowable, paramString, paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.CycleException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */