package com.estrongs.android.pop.view;

import com.estrongs.android.pop.app.f.c;
import com.estrongs.android.pop.app.f.f;
import com.estrongs.android.pop.app.service.a;
import com.estrongs.android.pop.app.service.b;
import com.estrongs.android.util.an;
import java.util.ArrayList;
import java.util.Map;

class e
  implements b
{
  e(FileExplorerActivity paramFileExplorerActivity, a parama) {}
  
  public void a()
  {
    c.a().f();
  }
  
  public void a(a parama)
  {
    if (c.a() != null) {
      c.a().a(a);
    }
    Map localMap = c.a().b(an.c());
    if ((localMap != null) && (!localMap.isEmpty())) {
      parama.a(null, null);
    }
    parama.a(null, localMap);
  }
  
  public void a(ArrayList<f> paramArrayList)
  {
    if (an.b()) {
      c.a().a(an.c(), a, paramArrayList, true);
    }
  }
  
  public boolean b(ArrayList<f> paramArrayList)
  {
    return c.a().a(paramArrayList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */