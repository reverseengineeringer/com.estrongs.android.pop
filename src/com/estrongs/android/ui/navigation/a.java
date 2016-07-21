package com.estrongs.android.ui.navigation;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.i;

class a
  extends Handler
{
  a(MultiWindowActivity paramMultiWindowActivity) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    Message localMessage = new Message();
    what = what;
    arg1 = arg1;
    if (((what != 1) || (arg1 != a.e().a())) || (what == 1))
    {
      FileExplorerActivity.X().f(arg1);
      a.finish();
    }
    while (what != 2) {
      return;
    }
    FileExplorerActivity.X().g(arg1);
    a.d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */