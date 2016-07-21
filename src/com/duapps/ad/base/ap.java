package com.duapps.ad.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.GZIPOutputStream;

public class ap
{
  public static int a(Context paramContext, float paramFloat)
  {
    return (int)(getResourcesgetDisplayMetricsdensity * paramFloat + 0.5F);
  }
  
  public static String a(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      localObject = a(((MessageDigest)localObject).digest());
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return String.valueOf(paramString.hashCode());
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str.length() == 1) {
        localStringBuilder.append('0');
      }
      localStringBuilder.append(str);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      localStringBuilder.append(paramArrayOfString[i]);
      localStringBuilder.append("#");
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static void a(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("your sid(" + paramInt + ") is invalid, Please check it ");
    }
  }
  
  public static void a(Activity paramActivity)
  {
    if (paramActivity == null) {}
    for (;;)
    {
      return;
      try
      {
        a(paramActivity.findViewById(16908290));
        paramActivity = paramActivity.getWindow().getDecorView();
        if ((paramActivity != null) && (Build.VERSION.SDK_INT < 16))
        {
          paramActivity.setBackgroundDrawable(null);
          return;
        }
      }
      catch (Throwable paramActivity) {}
    }
  }
  
  public static void a(View paramView)
  {
    if (paramView == null) {
      return;
    }
    for (;;)
    {
      int i;
      try
      {
        localObject = View.class.getDeclaredField("mParent");
        ((Field)localObject).setAccessible(true);
        ((Field)localObject).set(paramView, null);
      }
      catch (NullPointerException localNullPointerException)
      {
        try
        {
          Object localObject;
          paramView.setVisibility(8);
          paramView.destroyDrawingCache();
          if (paramView.getBackground() != null) {
            paramView.setBackgroundDrawable(null);
          }
          paramView.setAnimation(null);
          paramView.setOnFocusChangeListener(null);
          paramView.setOnKeyListener(null);
          paramView.setOnLongClickListener(null);
          paramView.setOnTouchListener(null);
          if (!(paramView instanceof AdapterView)) {
            paramView.setOnClickListener(null);
          }
          if ((paramView instanceof AdapterView))
          {
            paramView = (AdapterView)paramView;
            paramView.setAdapter(null);
            paramView.setAnimation(null);
            paramView.setOnItemClickListener(null);
            paramView.setOnItemSelectedListener(null);
            paramView.setOnItemLongClickListener(null);
            return;
          }
          if (!(paramView instanceof ViewGroup)) {
            break;
          }
          paramView = (ViewGroup)paramView;
          int j = paramView.getChildCount();
          i = 0;
          if (i < j)
          {
            localObject = paramView.getChildAt(i);
            if (localObject == null) {
              break label189;
            }
            a((View)localObject);
            break label189;
          }
          paramView.removeAllViews();
          return;
        }
        catch (Exception paramView)
        {
          return;
        }
        localNullPointerException = localNullPointerException;
        continue;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        continue;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        continue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        continue;
      }
      catch (SecurityException localSecurityException)
      {
        continue;
      }
      label189:
      i += 1;
    }
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable == null) {
      return;
    }
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static boolean a()
  {
    return Build.VERSION.SDK_INT >= 11;
  }
  
  public static boolean a(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnectedOrConnecting());
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext.getPackageInfo(paramString, 0);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static void b(Context paramContext, String paramString)
  {
    try
    {
      paramString = paramContext.getPackageManager().getLaunchIntentForPackage(paramString);
      if (paramString != null)
      {
        paramString.setFlags(270532608);
        paramContext.startActivity(paramString);
      }
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static boolean b(Context paramContext)
  {
    return a(paramContext, "com.facebook.katana");
  }
  
  public static byte[] b(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return new byte[0];
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    localGZIPOutputStream.write(paramString.getBytes("UTF-8"));
    localGZIPOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static int c(Context paramContext)
  {
    if (getResourcesgetConfigurationorientation == 1) {
      return 1;
    }
    return 3;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */