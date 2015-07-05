package com.estrongs.android.pop.app.service;

import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.util.ab;
import java.util.Map;

class f
  implements ab
{
  f(PerformanceAccelerateService paramPerformanceAccelerateService, v paramv) {}
  
  public void a(Object paramObject) {}
  
  public void a(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    PerformanceAccelerateService.i(b).remove(a.e);
    PerformanceAccelerateService.e(b).a(60000L);
  }
  
  public void b(Object paramObject)
  {
    PerformanceAccelerateService.i(b).remove(a.e);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.service.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */