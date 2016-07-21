package com.dianxinos.library.dxbase;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.net.UnknownHostException;

public class j
{
  public static int a;
  static ThreadLocal<StringBuilder> b;
  private static int c;
  
  static
  {
    if (e.c) {}
    for (int i = -1;; i = 2)
    {
      a = i;
      c = 0;
      b = new ThreadLocal();
      return;
    }
  }
  
  public static String a(Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return "";
    }
    for (Object localObject = paramThrowable; localObject != null; localObject = ((Throwable)localObject).getCause()) {
      if ((localObject instanceof UnknownHostException)) {
        return "";
      }
    }
    localObject = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter((Writer)localObject));
    return ((StringWriter)localObject).toString();
  }
  
  private static void a(int paramInt, String paramString)
  {
    Object localObject3;
    label27:
    Object localObject1;
    label40:
    int i;
    if (e.b)
    {
      localObject2 = new Throwable();
      if (localObject2 == null) {
        break label231;
      }
      localObject3 = ((Throwable)localObject2).getStackTrace();
      if (localObject2 == null) {
        break label237;
      }
      localObject1 = localObject3[2].getFileName();
      if (localObject2 == null) {
        break label243;
      }
      i = localObject3[2].getLineNumber();
      label53:
      if (localObject2 == null) {
        break label248;
      }
    }
    label231:
    label237:
    label243:
    label248:
    for (Object localObject2 = localObject3[2].getMethodName();; localObject2 = "N/A")
    {
      localObject3 = localObject1;
      if (((String)localObject1).length() > 5) {
        localObject3 = ((String)localObject1).substring(0, ((String)localObject1).length() - 5);
      }
      StringBuilder localStringBuilder = (StringBuilder)b.get();
      localObject1 = localStringBuilder;
      if (localStringBuilder == null)
      {
        localObject1 = new StringBuilder();
        b.set(localObject1);
      }
      try
      {
        ((StringBuilder)localObject1).setLength(0);
        ((StringBuilder)localObject1).append("[").append(c).append("][").append((String)localObject3).append(':').append(i).append('.').append((String)localObject2).append("] ").append(paramString);
        paramString = ((StringBuilder)localObject1).toString();
        c += 1;
        switch (paramInt)
        {
        default: 
          return;
        }
      }
      finally {}
      localObject2 = null;
      break;
      localObject3 = null;
      break label27;
      localObject1 = "N/A";
      break label40;
      i = -1;
      break label53;
    }
    Log.i("DXL", paramString);
    return;
    Log.d("DXL", paramString);
    return;
    Log.e("DXL", paramString);
  }
  
  public static void a(String paramString)
  {
    switch (a)
    {
    default: 
      return;
    }
    a(0, paramString);
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    switch (a)
    {
    default: 
      return;
    }
    a(1, paramString + "\n" + a(paramThrowable));
  }
  
  public static void b(String paramString)
  {
    switch (a)
    {
    default: 
      return;
    }
    a(1, paramString);
  }
  
  public static void b(String paramString, Throwable paramThrowable)
  {
    switch (a)
    {
    default: 
      return;
    }
    a(2, paramString + "\n" + a(paramThrowable));
  }
  
  public static void c(String paramString)
  {
    switch (a)
    {
    default: 
      return;
    }
    a(2, paramString);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.dxbase.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */