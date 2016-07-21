package com.estrongs.android.ui.adapter;

import android.os.Handler;
import com.estrongs.android.k.d;
import com.estrongs.android.k.h;
import com.estrongs.android.pop.app.unlock.y;
import java.util.Iterator;
import java.util.List;

class az
  implements y
{
  az(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void a(String paramString)
  {
    Object localObject = h.a().a(paramString);
    if ((localObject != null) && (((d)localObject).f()))
    {
      localObject = ListAdapter_NewNavi.c(a).iterator();
      while (((Iterator)localObject).hasNext())
      {
        dm localdm = (dm)((Iterator)localObject).next();
        if (paramString.equalsIgnoreCase(f)) {
          d = a.f;
        }
      }
    }
    ListAdapter_NewNavi.d(a).post(new ba(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */