package com.estrongs.a.a;

import android.net.Uri;

public class j
  extends d
{
  public Uri a = null;
  public boolean b = true;
  public String c = null;
  public String d = null;
  
  public j()
  {
    h = 9;
  }
  
  public void a(Object... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length >= 2))
    {
      if ((paramVarArgs[0] instanceof String)) {
        c = ((String)paramVarArgs[0]);
      }
      if ((paramVarArgs[1] instanceof String)) {
        d = ((String)paramVarArgs[1]);
      }
      if ((paramVarArgs[2] instanceof Boolean)) {
        b = ((Boolean)paramVarArgs[2]).booleanValue();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */