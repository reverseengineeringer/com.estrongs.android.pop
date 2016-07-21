package com.estrongs.android.pop.app.cleaner;

import android.support.v4.a.d;
import android.support.v4.a.l;
import android.support.v4.view.cn;
import android.view.View;
import com.estrongs.android.ui.view.ScanProgressView;

final class s
  implements d
{
  s(View paramView, ScanProgressView paramScanProgressView) {}
  
  public void onAnimationUpdate(l paraml)
  {
    float f1 = paraml.c();
    float f2 = (1.0F - f1) * 0.3F + 0.7F;
    cn.h(a, f2);
    cn.i(a, f2);
    cn.h(b, f2);
    cn.i(b, f2);
    cn.c(a, 1.0F - f1);
    cn.c(b, 1.0F - f1);
    cn.g(a, 90.0F * (1.0F - f1));
    cn.g(b, (1.0F - f1) * 180.0F);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */