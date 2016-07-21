package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.pop.utils.ck;
import com.estrongs.fs.util.g;
import java.io.File;
import java.util.List;

class t
  implements ck
{
  t(h paramh) {}
  
  public void a(List<com.estrongs.fs.h> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = ((u)paramList.get(i)).a();
      localObject = h.k(a).a((File)localObject);
      if (localObject != null) {
        h.b(a, (g)localObject);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */