package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import com.estrongs.a.a.l;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.b.c;
import com.estrongs.fs.impl.j.b;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class by
{
  protected c a = null;
  com.estrongs.fs.b.r b;
  private Activity c;
  private cg d;
  private String e;
  private String f;
  private String g = null;
  private String h = null;
  private String i = null;
  private String j = "/ES云分享";
  private boolean k;
  
  public by(Activity paramActivity, String paramString, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    c = paramActivity;
    e = paramString;
    paramActivity = new Intent("android.intent.action.SEND");
    paramActivity.setType("text/plain");
    paramString = c.getPackageManager();
    List localList = paramString.queryIntentActivities(paramActivity, 0);
    Object localObject1 = new ArrayList();
    int m = 0;
    while (m < localList.size())
    {
      localObject2 = getactivityInfo.applicationInfo.packageName;
      if ((localObject2 != null) && (((String)localObject2).equals(c.getPackageName()))) {
        ((List)localObject1).add(localList.get(m));
      }
      m += 1;
    }
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext()) {
      localList.remove((ResolveInfo)((Iterator)localObject1).next());
    }
    localObject1 = new Drawable[localList.size()];
    Object localObject2 = new String[localList.size()];
    m = 0;
    while (m < localList.size())
    {
      localObject1[m] = ((ResolveInfo)localList.get(m)).loadIcon(paramString);
      localObject2[m] = ((ResolveInfo)localList.get(m)).loadLabel(paramString);
      m += 1;
    }
    d = new ct(c).a(2131428332).a((Drawable[])localObject1, (CharSequence[])localObject2, 0, new ca(this, localList, paramActivity)).d(false).a(new bz(this, paramOnDismissListener)).a(false).b();
  }
  
  private double a(long paramLong1, long paramLong2)
  {
    if (paramLong2 == 0L) {
      return 1.0D;
    }
    return new BigDecimal((float)paramLong1 / (float)paramLong2 * 100.0F).setScale(2, 4).doubleValue();
  }
  
  private void a(String paramString)
  {
    new Thread(new cc(this, paramString)).start();
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    c.runOnUiThread(new cb(this, paramString, paramBoolean));
  }
  
  public void a()
  {
    try
    {
      d.show();
      if (b.o(e))
      {
        a(e);
        return;
      }
    }
    catch (Exception localException)
    {
      do
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      } while (!am.ba(e));
      Object localObject = com.estrongs.android.ui.pcs.r.a().g() + "/files" + j;
      b = new com.estrongs.fs.b.r(d.a(c), d.a(c).j(e), d.m((String)localObject));
      b.b(false);
      b.setDescription(String.format(c.getString(2131428031), new Object[] { am.bL((String)localObject) }));
      b.a(true);
      b.addTaskStatusChangeListener(new ce(this, (String)localObject));
      localObject = new cf(this);
      b.addProgressListener((l)localObject);
      b.execute();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */