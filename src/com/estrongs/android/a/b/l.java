package com.estrongs.android.a.b;

import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.x;
import java.io.File;

public class l
  extends q
{
  private final String a;
  private long b;
  
  public l(String paramString)
  {
    this(paramString, 0L);
  }
  
  public l(String paramString, long paramLong)
  {
    super(paramLong);
    a = paramString;
  }
  
  public h a()
  {
    x localx = new x(a);
    localx.setOriginalLastModified(b);
    return localx;
  }
  
  public final String e_()
  {
    return a;
  }
  
  public final String f_()
  {
    return ap.d(a);
  }
  
  public boolean h()
  {
    return i().exists();
  }
  
  public final File i()
  {
    return new File(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */