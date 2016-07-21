package com.estrongs.android.ui.dialog;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import com.estrongs.android.util.ap;
import java.util.List;

class cc
  implements DialogInterface.OnClickListener
{
  cc(ca paramca, List paramList, Intent paramIntent) {}
  
  @SuppressLint({"StringFormatMatches"})
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ActivityInfo localActivityInfo = a.get(paramInt)).activityInfo;
    paramInt = 2131231958;
    if (!ap.aL(ca.a(c))) {
      paramInt = 2131231220;
    }
    Object localObject3 = ap.as(ca.a(c));
    Object localObject1 = localObject3;
    Object localObject4;
    if (localObject3 != null)
    {
      localObject4 = ((String)localObject3).split("-");
      localObject1 = localObject3;
      if (localObject4 != null) {
        localObject1 = localObject4[0];
      }
    }
    if (packageName.equalsIgnoreCase("com.sina.weibo"))
    {
      localObject4 = ca.b(c);
      localObject3 = localObject4;
      if (localObject4 == null) {
        localObject3 = ca.c(c);
      }
      localObject4 = ca.d(c).getString(2131230820, new Object[] { "3.0.5" });
      localObject4 = ca.d(c).getString(paramInt, new Object[] { localObject1, localObject4, localObject3 });
      if (paramInt != 2131231220) {
        break label354;
      }
    }
    Object localObject2;
    label354:
    for (localObject1 = ca.d(c).getString(paramInt, new Object[] { localObject1, localObject3 });; localObject2 = localObject4)
    {
      b.putExtra("android.intent.extra.TEXT", (String)localObject1);
      for (;;)
      {
        b.setClassName(packageName, name);
        try
        {
          ca.d(c).startActivity(b);
          paramDialogInterface.dismiss();
          return;
          localObject3 = ca.d(c).getString(paramInt, new Object[] { localObject1, "", ca.e(c) });
          if (paramInt == 2131231220)
          {
            localObject1 = ca.d(c).getString(paramInt, new Object[] { localObject1, ca.e(c) });
            b.putExtra("android.intent.extra.TEXT", (String)localObject1);
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
            continue;
            localObject2 = localObject3;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */