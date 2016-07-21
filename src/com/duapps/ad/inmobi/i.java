package com.duapps.ad.inmobi;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.duapps.ad.base.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

public class i
  implements Handler.Callback, h
{
  private static i f;
  private ArrayList<n> a;
  private ArrayList<IMData> b;
  private ArrayList<e> c;
  private ExecutorService d;
  private Context e;
  private volatile boolean g = false;
  private Handler h;
  private Handler i = new j(this, Looper.getMainLooper());
  
  private i(Context paramContext)
  {
    e = paramContext;
    a = new ArrayList();
    i.sendEmptyMessage(100);
    a();
    d = Executors.newFixedThreadPool(3);
    c = new ArrayList();
    paramContext = new HandlerThread("inmobiNative", 10);
    paramContext.start();
    h = new Handler(paramContext.getLooper(), this);
    h.sendEmptyMessageDelayed(1, 10800000L);
    c();
  }
  
  public static i a(Context paramContext)
  {
    try
    {
      if (f == null) {
        f = new i(paramContext.getApplicationContext());
      }
      return f;
    }
    finally {}
  }
  
  public static String a(List<IMData> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    JSONStringer localJSONStringer = new JSONStringer();
    try
    {
      localJSONStringer.array();
      int j = 0;
      while (j < paramList.size())
      {
        IMData localIMData = (IMData)paramList.get(j);
        localJSONStringer.object();
        localJSONStringer.key("namespace").value(J);
        localJSONStringer.key("contextCode").value(J);
        localJSONStringer.key("ts").value(B);
        localJSONStringer.endObject();
        j += 1;
      }
      localJSONStringer.endArray();
      return localJSONStringer.toString();
    }
    catch (JSONException paramList)
    {
      l.c("InMobiDataQueue", "toJson exectpion=" + paramList.toString());
    }
    return null;
  }
  
  public static ArrayList<IMData> a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    localArrayList = new ArrayList();
    try
    {
      paramString = new JSONArray(paramString);
      int j = 0;
      while (j < paramString.length())
      {
        JSONObject localJSONObject = paramString.getJSONObject(j);
        localArrayList.add(new IMData(localJSONObject.getString("namespace"), localJSONObject.getString("contextCode"), localJSONObject.getLong("ts")));
        j += 1;
      }
      return localArrayList;
    }
    catch (JSONException paramString)
    {
      l.c("InMobiDataQueue", "fromJson exectpion=" + paramString.toString());
      return null;
    }
  }
  
  private void a()
  {
    Object localObject = e.getSharedPreferences("im_cache_prefs", 0).getString("im_cache_prefs_array", null);
    b = new ArrayList();
    if (localObject != null)
    {
      localObject = a((String)localObject);
      if (localObject != null)
      {
        l.c("InMobiDataQueue", "arrayList size:" + ((ArrayList)localObject).size());
        localObject = ((ArrayList)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          IMData localIMData = (IMData)((Iterator)localObject).next();
          b.add(localIMData);
        }
      }
    }
  }
  
  private void a(e parame, boolean paramBoolean)
  {
    int j;
    IMData localIMData;
    if (paramBoolean == true)
    {
      Iterator localIterator = b.iterator();
      j = 0;
      if (!localIterator.hasNext()) {
        break label119;
      }
      localIMData = (IMData)localIterator.next();
      if (!a.J.equals(J)) {
        break label93;
      }
    }
    for (;;)
    {
      if (localIMData != null)
      {
        if (b != IMData.AdOperationType.Impression) {
          break label100;
        }
        K = true;
      }
      for (;;)
      {
        b.set(j, localIMData);
        b();
        return;
        label93:
        j += 1;
        break;
        label100:
        if (b == IMData.AdOperationType.Click) {
          L = true;
        }
      }
      label119:
      localIMData = null;
    }
  }
  
  private void a(n paramn)
  {
    if ((d != null) && (c.size() > 0))
    {
      e locale = (e)c.get(0);
      c = true;
      c = paramn;
      d.execute(locale);
    }
  }
  
  private boolean a(IMData paramIMData, IMData.AdOperationType paramAdOperationType)
  {
    if ((paramAdOperationType == IMData.AdOperationType.Impression) && (K)) {}
    while ((paramAdOperationType == IMData.AdOperationType.Click) && (L)) {
      return true;
    }
    Iterator localIterator = c.iterator();
    boolean bool = false;
    if (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      if ((a.J.equals(J)) && (b == paramAdOperationType)) {
        bool = true;
      }
      for (;;)
      {
        break;
      }
    }
    return bool;
  }
  
  private void b()
  {
    SharedPreferences.Editor localEditor = e.getSharedPreferences("im_cache_prefs", 0).edit();
    String str = a(b);
    if (!TextUtils.isEmpty(str))
    {
      localEditor.putString("im_cache_prefs_array", str);
      localEditor.apply();
    }
  }
  
  private void b(IMData paramIMData, IMData.AdOperationType paramAdOperationType)
  {
    for (;;)
    {
      try
      {
        if (a(paramIMData, paramAdOperationType))
        {
          l.c("InMobiDataQueue", "returning:" + J);
          return;
        }
        Object localObject2 = null;
        Iterator localIterator = a.iterator();
        Object localObject1 = localObject2;
        if (localIterator.hasNext())
        {
          localObject1 = (n)localIterator.next();
          if (c) {}
        }
        else
        {
          paramIMData = new e(e, (n)localObject1, paramIMData, paramAdOperationType, this);
          c.add(paramIMData);
          int j;
          if (localObject1 != null)
          {
            d.execute(paramIMData);
            j = 0;
            if ((j != 0) && (c.size() == 1)) {
              g = true;
            }
          }
          else
          {
            j = 1;
          }
        }
      }
      finally {}
    }
  }
  
  private void b(e parame, boolean paramBoolean)
  {
    c.remove(parame);
    a(parame, paramBoolean);
    Object localObject2 = null;
    Iterator localIterator = c.iterator();
    Object localObject1;
    do
    {
      localObject1 = localObject2;
      if (!localIterator.hasNext()) {
        break;
      }
      localObject1 = (e)localIterator.next();
    } while ((c != null) && (c.c));
    if ((localObject1 != null) && (localObject1 != parame)) {
      if (System.currentTimeMillis() - a.B >= 10800000L) {
        break label119;
      }
    }
    label119:
    for (int j = 1; j == 0; j = 0)
    {
      c.remove(localObject1);
      return;
    }
    c = ((n)a.get(c.b));
    d.execute((Runnable)localObject1);
  }
  
  private void c()
  {
    long l = System.currentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      IMData localIMData = (IMData)localIterator.next();
      if (l - B < 10800000L) {
        localArrayList.add(localIMData);
      }
    }
    b.clear();
    b = null;
    b = localArrayList;
    b();
  }
  
  private void c(IMData paramIMData, IMData.AdOperationType paramAdOperationType)
  {
    if (paramIMData != null) {}
    for (;;)
    {
      try
      {
        if ((!TextUtils.isEmpty(J)) && (!TextUtils.isEmpty(I)))
        {
          Object localObject = b.iterator();
          if (((Iterator)localObject).hasNext())
          {
            localIMData = (IMData)((Iterator)localObject).next();
            if (!J.equals(J)) {
              continue;
            }
            localObject = localIMData;
            if (localIMData == null)
            {
              localObject = new IMData(J, I, B);
              b.add(localObject);
            }
            b((IMData)localObject, paramAdOperationType);
          }
        }
        else
        {
          return;
        }
      }
      finally {}
      IMData localIMData = null;
    }
  }
  
  public void a(IMData paramIMData)
  {
    if ((paramIMData == null) || (TextUtils.isEmpty(J)) || (TextUtils.isEmpty(I)))
    {
      l.c("InMobiDataQueue", "IMData is null or namespace is null or contextCode is null !");
      return;
    }
    c(paramIMData, IMData.AdOperationType.Impression);
  }
  
  public void a(e parame)
  {
    b(parame, true);
  }
  
  public void b(IMData paramIMData)
  {
    if ((paramIMData == null) || (TextUtils.isEmpty(J)) || (TextUtils.isEmpty(I)))
    {
      l.c("InMobiDataQueue", "IMData is null or namespace is null or contextCode is null !");
      return;
    }
    c(paramIMData, IMData.AdOperationType.Click);
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return false;
    }
    h.removeMessages(1);
    c();
    h.sendEmptyMessageDelayed(1, 10800000L);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */