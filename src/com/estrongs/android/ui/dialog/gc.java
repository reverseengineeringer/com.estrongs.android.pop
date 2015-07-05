package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;

class gc
  implements DialogInterface.OnClickListener
{
  gc(ga paramga, gd paramgd) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject1 = a.b();
    if ((localObject1 != null) && (!"".equals(localObject1)))
    {
      Object localObject2 = ((String)localObject1).replace("\\", "/");
      if ((1 == a.c()) || (3 == a.c()))
      {
        localObject1 = localObject2;
        if (!am.t((String)localObject2))
        {
          paramInt = ((String)localObject2).indexOf(".");
          if ((paramInt <= 0) || (paramInt >= ((String)localObject2).length() - 1)) {
            break label170;
          }
          if (1 != a.c()) {
            break label146;
          }
          localObject1 = "http://" + (String)localObject2;
        }
      }
      for (;;)
      {
        b.a.a(a.c(), (String)localObject1);
        paramDialogInterface.dismiss();
        return;
        label146:
        localObject1 = "https://" + (String)localObject2;
        continue;
        label170:
        ag.a(ga.a(b), ga.a(b).getText(2131427399), 1);
        return;
        if (2 == a.c())
        {
          localObject1 = localObject2;
          if (!am.ba((String)localObject2)) {
            ag.a(ga.a(b), ga.a(b).getText(2131427399), 1);
          }
        }
        else
        {
          localObject1 = localObject2;
          if (4 == a.c())
          {
            localObject1 = localObject2;
            if (((String)localObject2).startsWith("//")) {
              localObject1 = ((String)localObject2).substring(2);
            }
            localObject2 = localObject1;
            if (!am.H((String)localObject1)) {
              localObject2 = "smb://" + (String)localObject1;
            }
            localObject1 = localObject2;
            if (!((String)localObject2).endsWith("/")) {
              localObject1 = (String)localObject2 + "/";
            }
            localObject1 = ga.a(b, (String)localObject1);
          }
        }
      }
    }
    ag.a(ga.a(b), ga.a(b).getText(2131427399), 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */