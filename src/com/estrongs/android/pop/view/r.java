package com.estrongs.android.pop.view;

import com.estrongs.android.pop.app.b.c;
import com.estrongs.android.pop.app.b.f;
import com.estrongs.android.pop.app.service.a;
import com.estrongs.android.pop.app.service.b;
import com.estrongs.android.util.ak;
import java.util.ArrayList;
import java.util.Map;

class r
  implements b
{
  r(FileExplorerActivity paramFileExplorerActivity, a parama) {}
  
  public void a()
  {
    c.a().f();
  }
  
  public void a(a parama)
  {
    if (c.a() != null) {
      c.a().a(a);
    }
    Map localMap = c.a().b(ak.c());
    if ((localMap != null) && (!localMap.isEmpty())) {
      parama.a(null, null);
    }
    parama.a(null, localMap);
  }
  
  public void a(ArrayList<f> paramArrayList)
  {
    if (ak.b()) {
      c.a().a(ak.c(), a, paramArrayList, true);
    }
  }
  
  public boolean b(ArrayList<f> paramArrayList)
  {
    return c.a().a(paramArrayList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */