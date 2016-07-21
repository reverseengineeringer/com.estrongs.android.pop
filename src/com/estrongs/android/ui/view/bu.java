package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.pcs.am;
import com.estrongs.android.util.bk;

class bu
  extends Thread
{
  bu(bs parambs, String paramString) {}
  
  public void run()
  {
    int i;
    if (a != null)
    {
      i = a.indexOf("<is_binded>");
      int j = a.indexOf("</is_binded>");
      if ((i == -1) || (j == -1) || (!a.substring(i + "<is_binded>".length(), j).trim().equals("0"))) {}
    }
    PcsThirdPartOAuth.a(b.a, "thirdpart:" + bk.c(a));
    Object localObject = b.a;
    String str = am.a(b.a, PcsThirdPartOAuth.e(b.a), PcsThirdPartOAuth.f(b.a), PcsThirdPartOAuth.g(b.a), PcsThirdPartOAuth.h(b.a));
    a = str;
    if (str != null)
    {
      i = 1;
      if (i != 0) {
        break label212;
      }
    }
    label212:
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
 * Qualified Name:     com.estrongs.android.ui.view.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */