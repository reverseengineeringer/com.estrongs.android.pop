package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.dialog.hc;
import com.estrongs.android.ui.e.ie;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ay;
import java.io.File;

class by
  implements DialogInterface.OnClickListener
{
  by(bx parambx, int[] paramArrayOfInt, String paramString) {}
  
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
      aa.e(c.d).sendMessage((Message)localObject);
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
        aa.e(c.d).sendMessage((Message)localObject);
      }
      else if (paramInt == 2)
      {
        ie.a(aa.a(c.d), c.a.b, null);
      }
      else if (paramInt == 3)
      {
        if (am.t(c.a.b())) {
          new hc(aa.a(c.d), new com.estrongs.fs.impl.h.a(c.a.b, c.a.b())).a();
        } else {
          new hc(aa.a(c.d), am.C(c.a.b())).a();
        }
      }
      else if (paramInt == 4)
      {
        if (b != null)
        {
          cu.b(b);
        }
        else
        {
          localObject = new File(aa.c, c.a.b);
          if (((File)localObject).exists())
          {
            ay.c((File)localObject);
          }
          else
          {
            localObject = new File(com.estrongs.android.pop.a.l, c.a.b);
            if (((File)localObject).exists()) {
              ay.c((File)localObject);
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */