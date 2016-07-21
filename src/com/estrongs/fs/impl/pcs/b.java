package com.estrongs.fs.impl.pcs;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ap;
import com.estrongs.fs.w;
import com.estrongs.fs.x;

public class b
  extends x
{
  private static b a;
  
  private b()
  {
    super(null, w.Q, FexApplication.a().getString(2131231943));
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
    path = (ap.k() + "/files/");
    absolutePath = path;
    return path;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.pcs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */