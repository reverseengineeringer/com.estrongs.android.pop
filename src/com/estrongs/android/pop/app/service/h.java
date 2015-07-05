package com.estrongs.android.pop.app.service;

import android.os.Handler;
import com.estrongs.android.pop.app.b.c;
import com.estrongs.android.pop.app.b.f;
import com.estrongs.android.util.ak;
import java.util.ArrayList;

class h
  extends j
{
  private ArrayList<f> b = null;
  
  public h(PerformanceAccelerateService paramPerformanceAccelerateService, Handler paramHandler)
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
    return ak.b();
  }
  
  protected int c()
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.service.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */