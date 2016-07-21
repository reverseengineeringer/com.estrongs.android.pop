package com.dianxinos.library.b.b;

import android.content.Context;
import android.text.TextUtils;
import com.dianxinos.library.b.b.d.t;
import java.io.File;
import java.util.Map;
import java.util.WeakHashMap;

public abstract class b
{
  protected static final Map<String, b> a = new WeakHashMap();
  
  public static b a(Context paramContext, String paramString, char[] paramArrayOfChar)
  {
    return a(paramContext, paramString, paramArrayOfChar, 0);
  }
  
  public static b a(Context paramContext, String paramString, char[] paramArrayOfChar, int paramInt)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString)) || (paramArrayOfChar == null) || (paramArrayOfChar.length == 0)) {
      return null;
    }
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("Unknwon open flags: " + paramInt);
    }
    Object localObject = paramContext.getDatabasePath(paramString + ".sp");
    if ((paramInt == 1) && ((!((File)localObject).exists()) || (!((File)localObject).isFile()))) {
      return null;
    }
    for (;;)
    {
      synchronized (a)
      {
        localObject = (b)a.get(paramString + ".sp");
        if ((localObject == null) || (((b)localObject).a()))
        {
          paramContext = new t(paramContext, paramString + ".sp", paramArrayOfChar, paramInt);
          a.put(paramString + ".sp", paramContext);
          return paramContext;
        }
      }
      paramContext = (Context)localObject;
      if ((localObject instanceof t))
      {
        boolean bool = ((t)localObject).a(paramArrayOfChar);
        paramContext = (Context)localObject;
        if (!bool) {
          paramContext = null;
        }
      }
    }
  }
  
  public abstract a a(String paramString);
  
  public abstract boolean a();
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */