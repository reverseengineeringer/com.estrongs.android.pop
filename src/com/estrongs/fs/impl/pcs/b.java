package com.estrongs.fs.impl.pcs;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.am;
import com.estrongs.fs.m;
import com.estrongs.fs.n;

public class b
  extends n
{
  private static b a;
  
  private b()
  {
    super(null, m.R, FexApplication.a().getString(2131428653));
    b();
    lastModified = System.currentTimeMillis();
  }
  
  public static b a()
  {
    if (a == null) {
      a = new b();
    }
    a.b();
    return a;
  }
  
  public String b()
  {
    path = (am.k() + "/files/");
    absolutePath = path;
    return path;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.pcs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */