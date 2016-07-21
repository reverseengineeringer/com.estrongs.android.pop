package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.pcs.am;
import com.estrongs.android.util.bk;

class bt
  extends Thread
{
  bt(bs parambs, String paramString) {}
  
  public void run()
  {
    PcsThirdPartOAuth.a(b.a, "auth_code:" + bk.c(a));
    Object localObject = b.a;
    String str = am.a(b.a, PcsThirdPartOAuth.e(b.a), PcsThirdPartOAuth.f(b.a), PcsThirdPartOAuth.g(b.a), PcsThirdPartOAuth.h(b.a));
    a = str;
    int i;
    if (str != null)
    {
      i = 1;
      if (i != 0) {
        break label146;
      }
    }
    label146:
    for (localObject = PcsThirdPartOAuth.d(b.a).obtainMessage(4);; localObject = PcsThirdPartOAuth.d(b.a).obtainMessage(6))
    {
      PcsThirdPartOAuth.d(b.a).sendMessage((Message)localObject);
      return;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */