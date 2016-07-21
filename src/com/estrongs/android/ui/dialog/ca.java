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
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.r;
import com.estrongs.fs.impl.o.b;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ca
{
  protected com.estrongs.fs.impl.b.d a = null;
  r b;
  private Activity c;
  private ci d;
  private String e;
  private String f;
  private String g = null;
  private String h = null;
  private String i = null;
  private String j = "/ES云分享";
  private boolean k;
  
  public ca(Activity paramActivity, String paramString, DialogInterface.OnDismissListener paramOnDismissListener)
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
    d = new cv(c).a(2131231221).a((Drawable[])localObject1, (CharSequence[])localObject2, 0, new cc(this, localList, paramActivity)).d(false).a(new cb(this, paramOnDismissListener)).a(false).b();
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
    new Thread(new ce(this, paramString)).start();
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    c.runOnUiThread(new cd(this, paramString, paramBoolean));
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
      } while (!ap.bl(e));
      Object localObject = u.a().g() + "/files" + j;
      b = new r(com.estrongs.fs.d.a(c), com.estrongs.fs.d.a(c).j(e), com.estrongs.fs.d.m((String)localObject));
      b.b(false);
      b.setDescription(String.format(c.getString(2131231286), new Object[] { ap.cc((String)localObject) }));
      b.a(true);
      b.addTaskStatusChangeListener(new cg(this, (String)localObject));
      localObject = new ch(this);
      b.addProgressListener((l)localObject);
      b.execute();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */