package com.estrongs.android.pop.app.unlock;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import com.duapps.ad.base.r;
import com.estrongs.android.k.d;
import com.estrongs.android.k.h;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class s
{
  private static final String[] c = { "lock_test", "lock_realtimemonitor", "lock_nomedia" };
  private static s d = null;
  public List<d> a = new ArrayList();
  public com.duapps.ad.f b;
  private Context e;
  private List<y> f = new ArrayList();
  private HashMap<String, String> g = new HashMap();
  private HashMap<String, com.duapps.ad.c> h = new HashMap();
  
  public static s a()
  {
    if (d == null) {}
    try
    {
      if (d == null) {
        d = new s();
      }
      return d;
    }
    finally {}
  }
  
  private void a(d paramd)
  {
    if (paramd != null)
    {
      paramd.b(false);
      paramd.b().a("show_result", "1");
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("feature", paramd.g());
      com.estrongs.android.j.c.a(e).a("unlocks", localJSONObject);
      return;
    }
    catch (Exception paramd)
    {
      paramd.printStackTrace();
    }
  }
  
  public View.OnClickListener a(Context paramContext, String paramString1, View.OnClickListener paramOnClickListener, String paramString2)
  {
    d locald = h.a().a(paramString1);
    if ((locald != null) && (locald.f()) && (!locald.e())) {
      return paramOnClickListener;
    }
    return new x(this, paramString1, paramString2, paramContext);
  }
  
  public void a(Context paramContext)
  {
    l.c("=======================init=========================");
    e = paramContext;
    r.a(e, true);
    a.clear();
    paramContext = c;
    int j = paramContext.length;
    int i = 0;
    if (i < j)
    {
      String str = paramContext[i];
      d locald = h.a().a(str);
      if ((locald != null) && (locald.e()))
      {
        str = b(str);
        if ((!TextUtils.isEmpty(str)) && (d(str)) && (locald != null))
        {
          a(locald);
          a.add(locald);
          if (!locald.g().equals("lock_realtimemonitor")) {
            break label148;
          }
          ad.a(e).A(true);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        label148:
        if (locald.g().equals("lock_nomedia"))
        {
          ad.a(e).y(true);
          continue;
          if (locald != null) {
            if (locald.g().equals("lock_realtimemonitor"))
            {
              if (ad.a(e).bq())
              {
                locald.b().a("show_result", "1");
                a.add(locald);
                ad.a(e).A(true);
              }
            }
            else if ((locald.g().equals("lock_nomedia")) && (ad.a(e).br()))
            {
              locald.b().a("show_result", "1");
              a.add(locald);
              ad.a(e).y(true);
            }
          }
        }
      }
    }
  }
  
  public void a(Context paramContext, String paramString)
  {
    Object localObject = h.a().a(paramString);
    if ((localObject != null) && (((d)localObject).f()) && (!((d)localObject).e())) {
      return;
    }
    localObject = new Intent(paramContext, UnLockDialogActivity.class);
    ((Intent)localObject).putExtra("lock_id", paramString);
    paramContext.startActivity((Intent)localObject);
  }
  
  public void a(y paramy)
  {
    f.add(paramy);
  }
  
  public void a(String paramString)
  {
    d locald;
    if ((g != null) && (g.containsKey(paramString)))
    {
      paramString = (String)g.get(paramString);
      locald = h.a().a(paramString);
      a(locald);
      if ((f != null) && (f.size() > 0))
      {
        Iterator localIterator = f.iterator();
        while (localIterator.hasNext()) {
          ((y)localIterator.next()).a(paramString);
        }
      }
      l.c(ESActivity.H().toString());
      if (!locald.g().equals("lock_realtimemonitor")) {
        break label186;
      }
      paramString = new cv(ESActivity.H()).a(2131231718).b(2131232506).b(2131232503, new u(this)).c(2131232502, new t(this));
      paramString.c(false);
      paramString.b(false);
      paramString.c();
    }
    label186:
    while (!locald.g().equals("lock_nomedia")) {
      return;
    }
    paramString = new cv(ESActivity.H()).a(2131231718).b(2131232505).b(2131232503, new w(this)).c(2131232502, new v(this));
    paramString.c(false);
    paramString.b(false);
    paramString.c();
  }
  
  public void a(String paramString1, String paramString2, com.duapps.ad.c paramc)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    if (g.containsKey(paramString2)) {
      localEditor.putString((String)g.get(paramString2), "");
    }
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
    if (h.get(paramString1) == null) {
      ab = null;
    }
    g.put(paramString2, paramString1);
    if (paramc != null) {
      h.put(paramString1, paramc);
    }
  }
  
  public String b(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString(paramString, "");
  }
  
  public void b()
  {
    e = null;
    d = null;
    b = null;
    if (g != null)
    {
      g.clear();
      g = null;
    }
    if (h != null) {
      h.clear();
    }
    if (a != null) {
      a.clear();
    }
  }
  
  public void b(y paramy)
  {
    f.remove(paramy);
  }
  
  public com.duapps.ad.c c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return (com.duapps.ad.c)h.get(paramString);
  }
  
  public d c()
  {
    Object localObject2 = null;
    List localList = h.a().b();
    Object localObject1 = localObject2;
    if (localList != null)
    {
      localObject1 = localObject2;
      if (localList.size() > 0) {
        localObject1 = (d)localList.get((int)Math.round(Math.random() * (localList.size() - 1)));
      }
    }
    return (d)localObject1;
  }
  
  public boolean d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    Object localObject = e.getPackageManager().getInstalledPackages(0);
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (paramString.equalsIgnoreCase(nextpackageName)) {
          return true;
        }
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */