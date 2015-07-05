package org.simpleframework.xml.core;

public class UnionException
  extends PersistenceException
{
  public UnionException(String paramString, Object... paramVarArgs)
  {
    super(String.format(paramString, paramVarArgs), new Object[0]);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.UnionException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */