package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;

class t
  extends Thread
{
  t(s params, String paramString) {}
  
  public void run()
  {
    boolean bool = CreateOAuthNetDisk.a(b.a, a);
    Message localMessage = CreateOAuthNetDisk.b(b.a).obtainMessage(CreateOAuthNetDisk.f);
    obj = Boolean.valueOf(bool);
    CreateOAuthNetDisk.b(b.a).sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */