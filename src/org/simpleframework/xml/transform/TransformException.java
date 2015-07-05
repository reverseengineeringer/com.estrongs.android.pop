package org.simpleframework.xml.transform;

import org.simpleframework.xml.core.PersistenceException;

public class TransformException
  extends PersistenceException
{
  public TransformException(String paramString, Object... paramVarArgs)
  {
    super(String.format(paramString, paramVarArgs), new Object[0]);
  }
  
  public TransformException(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    super(String.format(paramString, paramVarArgs), new Object[] { paramThrowable });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.TransformException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */