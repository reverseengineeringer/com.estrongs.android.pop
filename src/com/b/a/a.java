package com.b.a;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import android.text.TextUtils;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class a
  implements InvocationHandler
{
  private final Object a;
  
  private a(Object paramObject)
  {
    a = paramObject;
  }
  
  private Object a(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    try
    {
      paramObject = b.b(paramMethod, a, paramArrayOfObject);
      return paramObject;
    }
    catch (SecurityException paramObject)
    {
      if (TextUtils.indexOf(((SecurityException)paramObject).getMessage(), "android.permission.INTERACT_ACROSS_USERS") < 0) {
        throw ((Throwable)paramObject);
      }
    }
    catch (Exception paramObject)
    {
      ((Exception)paramObject).printStackTrace();
    }
    return null;
  }
  
  public static void a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT <= 20) {}
    Object localObject1;
    Object localObject2;
    do
    {
      do
      {
        do
        {
          return;
          localObject1 = b.a(b.a(Settings.System.class, "sNameValueCache"), null);
        } while (localObject1 == null);
        localObject2 = paramContext.getContentResolver();
        paramContext = localObject1.getClass();
        localObject2 = b.a(b.a(paramContext, "lazyGetProvider", new Class[] { ContentResolver.class }), localObject1, new Object[] { localObject2 });
      } while (localObject2 == null);
      Class localClass = localObject2.getClass();
      localObject2 = Proxy.newProxyInstance(localClass.getClassLoader(), b.a(localClass), new a(localObject2));
    } while (localObject2 == null);
    b.a(b.a(paramContext, "mContentProvider"), localObject1, localObject2);
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    if (TextUtils.equals("call", paramMethod.getName())) {
      return a(paramObject, paramMethod, paramArrayOfObject);
    }
    return b.b(paramMethod, a, paramArrayOfObject);
  }
}

/* Location:
 * Qualified Name:     com.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */