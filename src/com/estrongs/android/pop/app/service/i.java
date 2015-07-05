package com.estrongs.android.pop.app.service;

import android.os.Binder;
import com.estrongs.android.pop.app.b.c;
import com.estrongs.android.pop.app.b.f;
import java.util.ArrayList;
import java.util.Map;

public class i
  extends Binder
  implements b
{
  public i(PerformanceAccelerateService paramPerformanceAccelerateService) {}
  
  public void a()
  {
    c.a().f();
  }
  
  public void a(a parama)
  {
    PerformanceAccelerateService.a(a, parama);
    if (c.a() != null) {
      c.a().a(PerformanceAccelerateService.b(a));
    }
    parama = c.a().b(PerformanceAccelerateService.a(a));
    if ((parama != null) && (!parama.isEmpty())) {
      PerformanceAccelerateService.b(a).a(null, null);
    }
    PerformanceAccelerateService.b(a).a(null, parama);
  }
  
  public void a(ArrayList<f> paramArrayList)
  {
    c.a().a(PerformanceAccelerateService.a(a), PerformanceAccelerateService.b(a), paramArrayList, true);
    PerformanceAccelerateService.c(a).a(paramArrayList);
    PerformanceAccelerateService.c(a).a(PerformanceAccelerateService.c(a).c());
  }
  
  public boolean b(ArrayList<f> paramArrayList)
  {
    return c.a().a(paramArrayList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.service.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */