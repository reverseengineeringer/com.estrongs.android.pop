package com.estrongs.android.ui.view;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;

class bs
  extends Handler
{
  bs(PcsThirdPartOAuth paramPcsThirdPartOAuth) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1) {
      new bt(this, (String)obj).start();
    }
    do
    {
      do
      {
        return;
        if (what == 5)
        {
          new bu(this, (String)obj).start();
          return;
        }
        if (what == 6)
        {
          paramMessage = new Intent();
          paramMessage.putExtra("result", true);
          paramMessage.putExtra("userinfo", a.a);
          a.setResult(-1, paramMessage);
          a.finish();
          return;
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
    ak.a(a, 2131231812, 1);
    paramMessage = new Intent();
    paramMessage.putExtra("result", false);
    a.setResult(-1, paramMessage);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */