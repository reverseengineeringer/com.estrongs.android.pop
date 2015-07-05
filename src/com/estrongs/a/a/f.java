package com.estrongs.a.a;

public class f
  extends d
{
  public String a = null;
  public boolean b = false;
  
  public f()
  {
    h = 7;
  }
  
  public void a(Object... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length >= 2))
    {
      if ((paramVarArgs[0] instanceof String)) {
        a = ((String)paramVarArgs[0]);
      }
      if ((paramVarArgs[1] instanceof Boolean)) {
        b = ((Boolean)paramVarArgs[1]).booleanValue();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */