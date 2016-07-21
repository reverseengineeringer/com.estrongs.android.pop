package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public final class bp
  implements bn
{
  private static final String a = bp.class.getSimpleName();
  
  private boolean a(String paramString1, String paramString2, Bundle paramBundle, String paramString3)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (paramBundle == null) || (TextUtils.isEmpty(paramString3))) {
      return false;
    }
    paramBundle = paramBundle.getString(paramString3);
    if (TextUtils.isEmpty(paramBundle))
    {
      kg.b(a, paramString1 + ": package=\"" + paramString2 + "\": AndroidManifest.xml should include meta-data node with android:name=\"" + paramString3 + "\" and not empty value for android:value");
      return false;
    }
    kg.a(3, a, paramString1 + ": package=\"" + paramString2 + "\": AndroidManifest.xml has meta-data node with android:name=\"" + paramString3 + "\" and android:value=\"" + paramBundle + "\"");
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
      localObject = parambr.c();
    } while (localObject == null);
    parambr = lq.e(paramContext);
    paramContext = paramContext.getPackageName();
    Object localObject = ((List)localObject).iterator();
    boolean bool = true;
    if (((Iterator)localObject).hasNext())
    {
      if (a(str, paramContext, parambr, (String)((Iterator)localObject).next())) {
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
 * Qualified Name:     com.flurry.sdk.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */