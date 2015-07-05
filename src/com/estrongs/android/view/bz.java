package com.estrongs.android.view;

import android.os.FileObserver;

class bz
  extends FileObserver
{
  bz(aw paramaw, String paramString)
  {
    super(paramString, 960);
  }
  
  public void onEvent(int paramInt, String paramString)
  {
    if (a.X) {
      a.a(true, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */