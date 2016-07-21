package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public final class bq
  implements bn
{
  private static final String a = bq.class.getSimpleName();
  
  private boolean a(String paramString1, PackageManager paramPackageManager, String paramString2, String paramString3)
  {
    if ((TextUtils.isEmpty(paramString1)) || (paramPackageManager == null) || (TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString3))) {
      return false;
    }
    if (-1 == paramPackageManager.checkPermission(paramString3, paramString2))
    {
      kg.b(a, paramString1 + ": package=\"" + paramString2 + "\": AndroidManifest.xml should include uses-permission node with " + "android:name=\"" + paramString3 + "\"");
      return false;
    }
    kg.a(3, a, paramString1 + ": package=\"" + paramString2 + "\": AndroidManifest.xml has uses-permission node with " + "android:name=\"" + paramString3 + "\"");
    return true;
  }
  
  public boolean a(Context paramContext, br parambr)
  {
    if (parambr == null) {}
    String str;
    do
    {
      do
      {
        return false;
        str = parambr.a();
      } while (TextUtils.isEmpty(str));
      localObject = parambr.d();
    } while (localObject == null);
    parambr = paramContext.getPackageManager();
    paramContext = paramContext.getPackageName();
    Object localObject = ((List)localObject).iterator();
    boolean bool = true;
    if (((Iterator)localObject).hasNext())
    {
      if (a(str, parambr, paramContext, (String)((Iterator)localObject).next())) {
        break label90;
      }
      bool = false;
    }
    label90:
    for (;;)
    {
      break;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */