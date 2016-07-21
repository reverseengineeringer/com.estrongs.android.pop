package com.estrongs.fs.impl.i;

import com.estrongs.android.pop.utils.aj;
import com.estrongs.fs.h;
import com.estrongs.fs.i;

class b
  implements i
{
  b(a parama, aj[] paramArrayOfaj, String[] paramArrayOfString) {}
  
  public boolean a(h paramh)
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
 * Qualified Name:     com.estrongs.fs.impl.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */