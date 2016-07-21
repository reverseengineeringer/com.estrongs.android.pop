package com.estrongs.android.pop.app.service;

import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.util.af;
import java.util.Map;

class e
  implements af
{
  e(PerformanceAccelerateService paramPerformanceAccelerateService, v paramv) {}
  
  public void downloadCompleted(Object paramObject)
  {
    PerformanceAccelerateService.h(b).remove(a.e);
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    PerformanceAccelerateService.h(b).remove(a.e);
    PerformanceAccelerateService.d(b).a(60000L);
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.service.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */