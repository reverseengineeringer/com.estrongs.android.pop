package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.pcs.aj;
import com.estrongs.android.util.a;
import com.estrongs.android.util.bd;

class bl
  extends Thread
{
  bl(bj parambj, String paramString) {}
  
  public void run()
  {
    int i;
    if (a != null)
    {
      i = a.indexOf("<is_binded>");
      int j = a.indexOf("</is_binded>");
      if ((i != -1) && (j != -1) && (a.substring(i + "<is_binded>".length(), j).trim().equals("0")))
      {
        localObject = a.a();
        if (localObject != null)
        {
          if (!PcsThirdPartOAuth.b(b.a).equals("sinaweibo")) {
            break label241;
          }
          ((a)localObject).c("Sina_Register", "Sina_Register");
        }
      }
    }
    PcsThirdPartOAuth.a(b.a, "thirdpart:" + bd.c(a));
    Object localObject = b.a;
    String str = aj.a(b.a, PcsThirdPartOAuth.e(b.a), PcsThirdPartOAuth.f(b.a), PcsThirdPartOAuth.g(b.a), PcsThirdPartOAuth.h(b.a));
    a = str;
    if (str != null)
    {
      i = 1;
      label206:
      if (i != 0) {
        break label304;
      }
    }
    label241:
    label304:
    for (localObject = PcsThirdPartOAuth.d(b.a).obtainMessage(4);; localObject = PcsThirdPartOAuth.d(b.a).obtainMessage(6))
    {
      PcsThirdPartOAuth.d(b.a).sendMessage((Message)localObject);
      return;
      if (PcsThirdPartOAuth.b(b.a).equals("qq"))
      {
        ((a)localObject).c("QQ_Register", "QQ_Register");
        break;
      }
      if (!PcsThirdPartOAuth.b(b.a).equals("renren")) {
        break;
      }
      ((a)localObject).c("RenRen_Register", "RenRen_Register");
      break;
      i = 0;
      break label206;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */