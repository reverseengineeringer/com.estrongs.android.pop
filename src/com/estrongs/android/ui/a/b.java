package com.estrongs.android.ui.a;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearLayoutManager;

public final class b
  extends LinearLayoutManager
{
  private c a = new c(paramContext, this);
  
  public b(Context paramContext)
  {
    super(paramContext);
  }
  
  public float a()
  {
    return a.a();
  }
  
  public void a(float paramFloat)
  {
    a.a(paramFloat);
  }
  
  public void a(int paramInt)
  {
    a.setTargetPosition(paramInt);
    startSmoothScroll(a);
  }
  
  public PointF computeScrollVectorForPosition(int paramInt)
  {
    return a.computeScrollVectorForPosition(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */