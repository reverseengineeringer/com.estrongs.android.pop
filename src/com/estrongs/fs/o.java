package com.estrongs.fs;

import com.estrongs.android.scanner.f;
import com.estrongs.android.util.ap;

public class o
  extends k
{
  public Boolean a(f paramf)
  {
    paramf.b("Pictures");
    return Boolean.valueOf(true);
  }
  
  public boolean a(h paramh)
  {
    return ap.bV(paramh.getPath()).toLowerCase().contains("/pictures/");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */