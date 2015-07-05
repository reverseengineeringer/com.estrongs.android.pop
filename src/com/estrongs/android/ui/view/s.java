package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.util.a;

class s
  extends Handler
{
  s(CreateOAuthNetDisk paramCreateOAuthNetDisk) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == CreateOAuthNetDisk.a) {
      if (obj == null) {
        ag.a(a, a.getText(2131427964), 1);
      }
    }
    for (;;)
    {
      a.finish();
      do
      {
        return;
        new t(this, (String)obj).start();
        return;
        if (what == CreateOAuthNetDisk.b)
        {
          CreateOAuthNetDisk.c(a).loadUrl((String)obj);
          String str = (String)obj;
          int i = str.indexOf("://");
          CreateOAuthNetDisk localCreateOAuthNetDisk = a;
          paramMessage = str;
          if (i > 0) {
            paramMessage = str.substring(i + 3);
          }
          CreateOAuthNetDisk.b(localCreateOAuthNetDisk, paramMessage);
          return;
        }
        if (what != CreateOAuthNetDisk.g) {
          break label262;
        }
        if (CreateOAuthNetDisk.c(a).getContentHeight() <= 0) {
          break;
        }
        paramMessage = CreateOAuthNetDisk.c(a).getLayoutParams();
        height = -2;
        CreateOAuthNetDisk.c(a).setLayoutParams(paramMessage);
      } while (!a.h);
      paramMessage = new DisplayMetrics();
      a.getWindowManager().getDefaultDisplay().getMetrics(paramMessage);
      CreateOAuthNetDisk.a(a, heightPixels * 4 / 5);
      return;
      paramMessage = CreateOAuthNetDisk.b(a).obtainMessage(CreateOAuthNetDisk.g);
      CreateOAuthNetDisk.b(a).sendMessageDelayed(paramMessage, 300L);
      return;
      label262:
      if (what == CreateOAuthNetDisk.c)
      {
        CreateOAuthNetDisk.d(a).setVisibility(8);
        CreateOAuthNetDisk.e(a).setVisibility(8);
        CreateOAuthNetDisk.c(a).setVisibility(0);
        CreateOAuthNetDisk.c(a).requestFocus(130);
        return;
      }
      if (what == CreateOAuthNetDisk.d) {
        ag.a(a, 2131428354, 1);
      } else if (what == CreateOAuthNetDisk.e) {
        if (!((Boolean)obj).booleanValue())
        {
          ag.a(a, 2131428354, 1);
        }
        else
        {
          paramMessage = a.a();
          if (CreateOAuthNetDisk.a(a).equals("kuaipan"))
          {
            if (paramMessage != null) {
              paramMessage.c("快盘_Create", "快盘_Create");
            }
          }
          else if (CreateOAuthNetDisk.a(a).equals("box"))
          {
            if (paramMessage != null) {
              paramMessage.c("Box_Create", "Box_Create");
            }
          }
          else if (CreateOAuthNetDisk.a(a).equals("onedrive"))
          {
            if (paramMessage != null) {
              paramMessage.c("Skydrive_Create", "Skydrive_Create");
            }
          }
          else if (CreateOAuthNetDisk.a(a).equals("gdrive"))
          {
            if (paramMessage != null) {
              paramMessage.c("Gdrive_Create", "Gdrive_Create");
            }
          }
          else if (CreateOAuthNetDisk.a(a).equals("dropbox"))
          {
            if (paramMessage != null) {
              paramMessage.c("Dropbox_Create", "Dropbox_Create");
            }
          }
          else if ((CreateOAuthNetDisk.a(a).equals("megacloud")) && (paramMessage != null)) {
            paramMessage.c("Megacloud_Create", "Megacloud_Create");
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */