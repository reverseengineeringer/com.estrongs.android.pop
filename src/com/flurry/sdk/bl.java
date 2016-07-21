package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public final class bl
  implements bn
{
  private static final String a = bl.class.getSimpleName();
  
  private boolean a(String paramString1, String paramString2, bk parambk)
  {
    boolean bool2 = false;
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (parambk == null)) {
      return false;
    }
    boolean bool1 = bool2;
    try
    {
      if (!TextUtils.isEmpty(parambk.c()))
      {
        Class.forName(parambk.c());
        bool1 = true;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        kg.a(6, a, "failed to find third party ad provider api with exception: ", localClassNotFoundException);
        bool1 = bool2;
      }
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
      for (;;)
      {
        kg.a(6, a, "failed to initialize third party ad provider api with exception: ", localExceptionInInitializerError);
        bool1 = bool2;
      }
    }
    catch (LinkageError localLinkageError)
    {
      for (;;)
      {
        kg.a(6, a, "failed to link third party ad provider api with exception: ", localLinkageError);
        bool1 = bool2;
      }
      kg.a(3, a, paramString1 + ": package=\"" + paramString2 + "\": apk has ad provider library with name=\"" + parambk.a() + "\" and version=\"" + parambk.b() + "\" or higher");
    }
    if (!bool1)
    {
      kg.b(a, paramString1 + ": package=\"" + paramString2 + "\": apk should include ad provider library with name=\"" + parambk.a() + "\" and version=\"" + parambk.b() + "\" or higher");
      return bool1;
    }
    return bool1;
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
      parambr = parambr.b();
    } while (parambr == null);
    paramContext = paramContext.getPackageName();
    parambr = parambr.iterator();
    boolean bool = true;
    if (parambr.hasNext())
    {
      if (a(str, paramContext, (bk)parambr.next())) {
        break label78;
      }
      bool = false;
    }
    label78:
    for (;;)
    {
      break;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */