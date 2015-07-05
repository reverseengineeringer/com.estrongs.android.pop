package com.estrongs.a.a;

public class b
  extends d
{
  public String a = null;
  public String b = null;
  public int c = 0;
  
  public b()
  {
    h = 10;
  }
  
  public void a(Object... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length >= 2))
    {
      if ((paramVarArgs[0] instanceof String)) {
        a = ((String)paramVarArgs[0]);
      }
      if ((paramVarArgs[1] instanceof String)) {
        b = ((String)paramVarArgs[1]);
      }
      if ((paramVarArgs[2] instanceof Integer)) {
        c = ((Integer)paramVarArgs[2]).intValue();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */