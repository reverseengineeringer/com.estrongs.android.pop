package com.estrongs.android.pop.app.service;

import android.os.Handler;
import com.estrongs.android.pop.app.f.c;
import com.estrongs.android.pop.app.f.f;
import com.estrongs.android.util.an;
import java.util.ArrayList;

class g
  extends i
{
  private ArrayList<f> b = null;
  
  public g(PerformanceAccelerateService paramPerformanceAccelerateService, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public void a()
  {
    if (b != null) {
      c.a().a(PerformanceAccelerateService.a(a), PerformanceAccelerateService.b(a), b, false);
    }
  }
  
  public void a(ArrayList<f> paramArrayList)
  {
    b = paramArrayList;
  }
  
  public boolean b()
  {
    return an.b();
  }
  
  protected int c()
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.service.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */