package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ck
  implements DialogInterface.OnClickListener
{
  ck(cj paramcj, boolean paramBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = paramInt;
    if (!a) {
      i = paramInt + 1;
    }
    if (b.c.b() == null) {}
    for (paramInt = i + 1;; paramInt = i)
    {
      i = paramInt;
      if (paramInt == 2)
      {
        i = paramInt;
        if (!b.d) {
          i = paramInt + 1;
        }
      }
      Object localObject;
      if (i == 0)
      {
        localObject = new Message();
        what = 102;
        arg1 = b.a;
        arg2 = b.b;
        ListAdapter_NewNavi.d(b.e).sendMessage((Message)localObject);
      }
      for (;;)
      {
        paramDialogInterface.dismiss();
        return;
        if (i == 1)
        {
          localObject = new Message();
          what = 101;
          arg1 = b.a;
          arg2 = b.b;
          ListAdapter_NewNavi.d(b.e).sendMessage((Message)localObject);
        }
        else
        {
          if (i == 2)
          {
            if (b.c.b().equals("#home_page#")) {
              ListAdapter_NewNavi.g(b.e).l("#home_page#");
            }
            for (;;)
            {
              b.e.notifyDataSetChanged();
              break;
              if (b.c.b().equals("#home#")) {
                ListAdapter_NewNavi.g(b.e).l("#home#");
              }
            }
          }
          if (i == 3)
          {
            localObject = new Intent();
            ((Intent)localObject).putExtra("android.intent.extra.shortcut.INTENT", b.c.c());
            ((Intent)localObject).putExtra("android.intent.extra.shortcut.NAME", b.c.b);
            ((Intent)localObject).putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(ListAdapter_NewNavi.a(b.e), b.c.d()));
            ((Intent)localObject).setAction("com.android.launcher.action.INSTALL_SHORTCUT");
            ListAdapter_NewNavi.a(b.e).sendBroadcast((Intent)localObject);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */