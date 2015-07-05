package com.estrongs.android.ui.view;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.widget.MediaController;

class ap
  implements SurfaceHolder.Callback
{
  ap(ESVideoView paramESVideoView) {}
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 1;
    ESVideoView.f(a, paramInt2);
    ESVideoView.g(a, paramInt3);
    if (ESVideoView.i(a) == 3)
    {
      paramInt1 = 1;
      if ((ESVideoView.a(a) != paramInt2) || (ESVideoView.b(a) != paramInt3)) {
        break label116;
      }
    }
    label116:
    for (paramInt2 = i;; paramInt2 = 0)
    {
      if ((ESVideoView.d(a) != null) && (paramInt1 != 0) && (paramInt2 != 0))
      {
        if (ESVideoView.f(a) != 0) {
          a.seekTo(ESVideoView.f(a));
        }
        a.start();
      }
      return;
      paramInt1 = 0;
      break;
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    ESVideoView.a(a, paramSurfaceHolder);
    ESVideoView.n(a);
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    ESVideoView.a(a, null);
    if (ESVideoView.e(a) != null) {
      ESVideoView.e(a).hide();
    }
    a.a(true);
    if (ESVideoView.o(a) != null) {
      ESVideoView.o(a).destroy();
    }
    ESVideoView.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */