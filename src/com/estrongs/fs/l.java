package com.estrongs.fs;

import com.estrongs.android.scanner.f;
import com.estrongs.android.util.ap;

public class l
  extends k
{
  public Boolean a(f paramf)
  {
    paramf.b("DCIM");
    return Boolean.valueOf(true);
  }
  
  public boolean a(h paramh)
  {
    return ap.bV(paramh.getPath()).toLowerCase().contains("/dcim/");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */