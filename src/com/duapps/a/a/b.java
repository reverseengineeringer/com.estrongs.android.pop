package com.duapps.a.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import com.estrongs.android.pop.ai;
import com.estrongs.android.util.l;

public class b
{
  public static String a(Context paramContext)
  {
    String str1 = ai.b(paramContext).B();
    if (str1 != null) {}
    for (;;)
    {
      return str1;
      str2 = str1;
      try
      {
        Object localObject = getPackageManagergetPackageInfo"com.estrongs.android.pop"64signatures;
        if (localObject == null) {
          continue;
        }
        str2 = str1;
        if (localObject.length <= 0) {
          continue;
        }
        str2 = str1;
        localObject = a.a(localObject[0].toByteArray());
        str2 = str1;
        l.b("SignatureChecker", "signature checksum: " + (String)localObject);
        if (localObject == null) {
          continue;
        }
        str2 = str1;
        if ("2vbbstpvmmfe9heukrdvnu4g2".equals(localObject)) {}
        for (str1 = "r1";; str1 = ((String)localObject).substring(0, 5))
        {
          str2 = str1;
          ai.b(paramContext).b(str1);
          return str1;
          str2 = str1;
        }
        return str2;
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */