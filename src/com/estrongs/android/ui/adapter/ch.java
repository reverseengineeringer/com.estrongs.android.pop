package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.utils.dd;
import com.estrongs.android.ui.dialog.hf;
import com.estrongs.android.ui.e.ib;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bc;
import java.io.File;

class ch
  implements DialogInterface.OnClickListener
{
  ch(cg paramcg, int[] paramArrayOfInt, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramInt = a[paramInt];
    Object localObject;
    if (paramInt == 0)
    {
      localObject = new Message();
      what = 102;
      arg1 = c.b;
      arg2 = c.c;
      ListAdapter_NewNavi.d(c.d).sendMessage((Message)localObject);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (paramInt == 1)
      {
        localObject = new Message();
        what = 101;
        arg1 = c.b;
        arg2 = c.c;
        ListAdapter_NewNavi.d(c.d).sendMessage((Message)localObject);
      }
      else if (paramInt == 2)
      {
        ib.a(ListAdapter_NewNavi.a(c.d), c.a.b, null);
      }
      else if (paramInt == 3)
      {
        if (ap.v(c.a.b())) {
          new hf(ListAdapter_NewNavi.a(c.d), new com.estrongs.fs.impl.m.a(c.a.b, c.a.b())).a();
        } else {
          new hf(ListAdapter_NewNavi.a(c.d), ap.E(c.a.b()), false).a();
        }
      }
      else if (paramInt == 4)
      {
        if (b != null)
        {
          dd.b(b);
        }
        else
        {
          localObject = new File(ListAdapter_NewNavi.c, c.a.b);
          if (((File)localObject).exists())
          {
            bc.c((File)localObject);
          }
          else
          {
            localObject = new File(com.estrongs.android.pop.a.o, c.a.b);
            if (((File)localObject).exists()) {
              bc.c((File)localObject);
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */