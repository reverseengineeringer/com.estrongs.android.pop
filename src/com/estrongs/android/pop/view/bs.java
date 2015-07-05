package com.estrongs.android.pop.view;

import android.os.Handler;
import android.os.Message;

class bs
  extends Handler
{
  bs(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void handleMessage(Message paramMessage)
  {
    int i;
    switch (what)
    {
    default: 
      return;
    case 0: 
      a.b(null);
      return;
    case 1: 
      i = arg1;
      a.f(i);
      return;
    case 2: 
      i = arg1;
      a.g(i);
      return;
    }
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */