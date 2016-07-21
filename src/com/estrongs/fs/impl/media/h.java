package com.estrongs.fs.impl.media;

import com.estrongs.android.pop.utils.aj;
import com.estrongs.fs.i;

class h
  implements i
{
  h(e parame, aj[] paramArrayOfaj, String[] paramArrayOfString) {}
  
  public boolean a(com.estrongs.fs.h paramh)
  {
    int i = 0;
    while (i < a.length)
    {
      if (paramh.getPath().startsWith(b[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.media.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */