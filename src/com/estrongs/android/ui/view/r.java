package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.fs.impl.o.b;

class r
  extends Thread
{
  r(CreateOAuthNetDisk paramCreateOAuthNetDisk) {}
  
  public void run()
  {
    Object localObject = b.n(CreateOAuthNetDisk.a(a));
    if (localObject == null)
    {
      localObject = CreateOAuthNetDisk.b(a).obtainMessage(CreateOAuthNetDisk.a);
      obj = null;
      CreateOAuthNetDisk.b(a).sendMessage((Message)localObject);
      return;
    }
    Message localMessage = CreateOAuthNetDisk.b(a).obtainMessage(CreateOAuthNetDisk.b);
    obj = localObject;
    CreateOAuthNetDisk.b(a).sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */