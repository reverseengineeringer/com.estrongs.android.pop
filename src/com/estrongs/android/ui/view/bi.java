package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.fs.impl.pcs.PcsFileSystem;

class bi
  extends Thread
{
  bi(PcsThirdPartOAuth paramPcsThirdPartOAuth) {}
  
  public void run()
  {
    Object localObject2 = PcsFileSystem.b("os_type=" + PcsThirdPartOAuth.b(a));
    Object localObject1 = localObject2;
    if (PcsThirdPartOAuth.c(a) != null)
    {
      localObject1 = localObject2;
      if (PcsThirdPartOAuth.c(a).equals("normal")) {
        localObject1 = PcsFileSystem.b();
      }
    }
    if (localObject1 == null)
    {
      localObject1 = PcsThirdPartOAuth.d(a).obtainMessage(4);
      PcsThirdPartOAuth.d(a).sendMessage((Message)localObject1);
      return;
    }
    localObject2 = PcsThirdPartOAuth.d(a).obtainMessage(2);
    obj = localObject1;
    PcsThirdPartOAuth.d(a).sendMessage((Message)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */