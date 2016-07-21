package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.kh;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.nl;
import com.google.android.gms.internal.oe;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

@me
public class e
  extends kh
{
  private String a;
  private Context b;
  private String c;
  private ArrayList<String> d;
  
  public e(String paramString1, ArrayList<String> paramArrayList, Context paramContext, String paramString2)
  {
    c = paramString1;
    d = paramArrayList;
    a = paramString2;
    b = paramContext;
  }
  
  protected int a(int paramInt)
  {
    if (paramInt == 0) {
      return 1;
    }
    if (paramInt == 1) {
      return 2;
    }
    if (paramInt == 4) {
      return 3;
    }
    return 0;
  }
  
  public String a()
  {
    return c;
  }
  
  protected String a(String paramString, HashMap<String, String> paramHashMap)
  {
    String str3 = b.getPackageName();
    long l1;
    long l2;
    String str2;
    try
    {
      String str1 = b.getPackageManager().getPackageInfo(str3, 0).versionName;
      l1 = ae.h().d().a();
      l2 = SystemClock.elapsedRealtime();
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str4 = (String)localIterator.next();
        paramString = paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] { str4 }), String.format("$1%s$2", new Object[] { paramHashMap.get(str4) }));
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        b.d("Error to retrieve app version", localNameNotFoundException);
        str2 = "";
      }
    }
    return paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp138_135), String.format("$1%s$2", tmp152_149)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp173_170), String.format("$1%s$2", tmp187_184)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp204_201), String.format("$1%s$2", tmp218_215)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp239_236), String.format("$1%s$2", tmp253_250)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp272_269), String.format("$1%s$2", tmp286_283)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp303_300), String.format("$1%s$2", tmp317_314)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp339_336), String.format("$1%s$2", tmp353_350)).replaceAll("@@", "@");
  }
  
  void b()
  {
    try
    {
      b.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[] { Context.class, String.class, String.class, Boolean.TYPE }).invoke(null, new Object[] { b, c, "", Boolean.valueOf(true) });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      b.e("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      b.e("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
      return;
    }
    catch (Exception localException)
    {
      b.d("Fail to report a conversion.", localException);
    }
  }
  
  public void b(int paramInt)
  {
    if (paramInt == 1) {
      b();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("status", String.valueOf(paramInt));
    localHashMap.put("sku", c);
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      localLinkedList.add(a((String)localIterator.next(), localHashMap));
    }
    ae.e().a(b, a, localLinkedList);
  }
  
  public void c(int paramInt)
  {
    if (paramInt == 0) {
      b();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("google_play_status", String.valueOf(paramInt));
    localHashMap.put("sku", c);
    localHashMap.put("status", String.valueOf(a(paramInt)));
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      localLinkedList.add(a((String)localIterator.next(), localHashMap));
    }
    ae.e().a(b, a, localLinkedList);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */