package com.estrongs.android.ui.view;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.util.a;

class bj
  extends Handler
{
  bj(PcsThirdPartOAuth paramPcsThirdPartOAuth) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1) {
      new bk(this, (String)obj).start();
    }
    label141:
    do
    {
      do
      {
        return;
        if (what == 5)
        {
          new bl(this, (String)obj).start();
          return;
        }
        if (what == 6)
        {
          paramMessage = new Intent();
          paramMessage.putExtra("result", true);
          paramMessage.putExtra("userinfo", a.a);
          a.setResult(-1, paramMessage);
          paramMessage = a.a();
          if (paramMessage != null)
          {
            if (!PcsThirdPartOAuth.b(a).equals("sinaweibo")) {
              break label141;
            }
            paramMessage.e("Sina_Login", "Sina_Login");
          }
          for (;;)
          {
            a.finish();
            return;
            if (PcsThirdPartOAuth.b(a).equals("qq")) {
              paramMessage.e("QQ_Login", "QQ_Login");
            } else if (PcsThirdPartOAuth.b(a).equals("renren")) {
              paramMessage.e("RenRen_Login", "RenRen_Login");
            }
          }
        }
        if (what == 2)
        {
          PcsThirdPartOAuth.i(a).loadUrl((String)obj);
          String str = (String)obj;
          int i = str.indexOf("://");
          PcsThirdPartOAuth localPcsThirdPartOAuth = a;
          paramMessage = str;
          if (i > 0) {
            paramMessage = str.substring(i + 3);
          }
          PcsThirdPartOAuth.b(localPcsThirdPartOAuth, paramMessage);
          return;
        }
        if (what == 7)
        {
          if (PcsThirdPartOAuth.i(a).getContentHeight() > 0)
          {
            paramMessage = PcsThirdPartOAuth.i(a).getLayoutParams();
            height = -2;
            PcsThirdPartOAuth.i(a).setLayoutParams(paramMessage);
            return;
          }
          paramMessage = PcsThirdPartOAuth.d(a).obtainMessage(7);
          PcsThirdPartOAuth.d(a).sendMessageDelayed(paramMessage, 300L);
          return;
        }
        if (what != 3) {
          break;
        }
        PcsThirdPartOAuth.j(a).setVisibility(8);
        PcsThirdPartOAuth.k(a).setVisibility(8);
        PcsThirdPartOAuth.i(a).setVisibility(0);
        PcsThirdPartOAuth.i(a).requestFocus(130);
      } while (!PcsThirdPartOAuth.l(a));
      PcsThirdPartOAuth.m(a).setVisibility(0);
      return;
    } while (what != 4);
    ag.a(a, 2131428354, 1);
    paramMessage = new Intent();
    paramMessage.putExtra("result", false);
    a.setResult(-1, paramMessage);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */