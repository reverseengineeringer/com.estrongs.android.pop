package com.estrongs.android.pop.app.service;

import android.os.Binder;
import com.estrongs.android.pop.app.f.c;
import com.estrongs.android.pop.app.f.f;
import java.util.ArrayList;
import java.util.Map;

public class h
  extends Binder
  implements b
{
  public h(PerformanceAccelerateService paramPerformanceAccelerateService) {}
  
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
 * Qualified Name:     com.estrongs.android.pop.app.service.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */