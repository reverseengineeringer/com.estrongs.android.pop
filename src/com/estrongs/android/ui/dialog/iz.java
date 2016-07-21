package com.estrongs.android.ui.dialog;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.view.NaviListView;

class iz
  extends Handler
{
  iz(iy paramiy, NaviListView paramNaviListView) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    int i = what;
    int j = arg1;
    if ((i == 1) && (arg2 == 0)) {
      a.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.iz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */