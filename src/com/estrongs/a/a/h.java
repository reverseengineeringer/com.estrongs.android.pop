package com.estrongs.a.a;

public class h
  extends d
{
  public String a;
  public boolean b = false;
  public com.estrongs.fs.h c;
  public com.estrongs.fs.h d;
  
  public h()
  {
    g = 1;
    h = 1;
  }
  
  public void a(Object... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length > 0))
    {
      if ((paramVarArgs[0] instanceof String)) {
        a = ((String)paramVarArgs[0]);
      }
      if ((paramVarArgs.length > 1) && (paramVarArgs[1] != null) && ((paramVarArgs[1] instanceof Boolean))) {
        b = ((Boolean)paramVarArgs[1]).booleanValue();
      }
      if (paramVarArgs.length > 3)
      {
        if ((paramVarArgs[2] instanceof com.estrongs.fs.h)) {
          c = ((com.estrongs.fs.h)paramVarArgs[2]);
        }
        if ((paramVarArgs[3] instanceof com.estrongs.fs.h)) {
          d = ((com.estrongs.fs.h)paramVarArgs[3]);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */