package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PermissionInfo;
import android.content.res.Resources;
import android.os.Handler;
import android.os.RemoteException;
import android.widget.ListView;
import com.estrongs.android.pop.a.a;
import com.estrongs.android.pop.esclasses.e;
import org.json.JSONArray;
import org.json.JSONObject;

public class gk
{
  ProgressDialog a = null;
  private Context b;
  private cg c;
  private String d;
  private JSONArray e;
  private Handler f;
  private gr g;
  private boolean h;
  private boolean i;
  
  public gk(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    b = paramContext;
    d = paramString;
    f = new Handler();
    h = paramBoolean1;
    i = paramBoolean2;
  }
  
  private void b()
  {
    c();
    ListView localListView = new ListView(b);
    localListView.setSelector(2130837974);
    localListView.setDivider(b.getResources().getDrawable(2130838229));
    localListView.setFocusable(true);
    localListView.setCacheColorHint(0);
    if (h) {}
    for (int j = 2131428529;; j = 2131428530)
    {
      c = new ct(b).a(j).a(localListView).b();
      g = new gr(this);
      localListView.setAdapter(g);
      localListView.setOnItemClickListener(new gl(this));
      c.show();
      return;
    }
  }
  
  private void c()
  {
    if (i) {
      try
      {
        a.a(d, e.a, new gm(this));
        return;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        return;
      }
    }
    JSONArray localJSONArray1;
    JSONArray localJSONArray2;
    int j;
    try
    {
      PackageManager localPackageManager = b.getPackageManager();
      Object localObject = localPackageManager.getPackageInfo(d, 4096);
      localJSONArray1 = new JSONArray();
      localJSONArray2 = new JSONArray();
      if (requestedPermissions != null)
      {
        localObject = requestedPermissions;
        int k = localObject.length;
        j = 0;
        for (;;)
        {
          if (j < k)
          {
            String str = localObject[j];
            JSONObject localJSONObject = new JSONObject();
            try
            {
              localJSONObject.put("name", localPackageManager.getPermissionInfo(str, 0).loadLabel(localPackageManager));
              localJSONObject.put("disable", 0);
              localJSONArray2.put(localJSONObject);
              j += 1;
            }
            catch (PackageManager.NameNotFoundException localNameNotFoundException)
            {
              for (;;)
              {
                localNameNotFoundException.printStackTrace();
              }
            }
          }
        }
      }
      j = 0;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    while (j < localJSONArray2.length())
    {
      localJSONArray1.put(localJSONArray2.get(j));
      j += 1;
    }
    e = localJSONArray1;
    f.post(new go(this));
  }
  
  public void a()
  {
    if (h) {
      try
      {
        f.postDelayed(new gp(this), 800L);
        a.a(new gq(this));
        return;
      }
      catch (Exception localException)
      {
        h = false;
        return;
      }
    }
    b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */