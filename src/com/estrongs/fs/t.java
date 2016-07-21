package com.estrongs.fs;

import com.estrongs.android.scanner.b.e;
import com.estrongs.android.scanner.f;
import com.estrongs.fs.util.j;

public class t
  extends k
{
  public Boolean a(f paramf)
  {
    paramf.a(Integer.valueOf(1));
    return Boolean.valueOf(true);
  }
  
  public boolean a(h paramh)
  {
    return e.a("." + j.b(paramh.getAbsolutePath().toLowerCase())) == 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */