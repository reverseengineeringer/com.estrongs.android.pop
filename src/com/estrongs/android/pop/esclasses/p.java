package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ao;
import java.io.InputStream;
import java.lang.reflect.Method;

public class p
  extends Resources
{
  public static boolean a = false;
  private static p b = null;
  private Resources c = null;
  
  protected p(Resources paramResources)
  {
    super(paramResources.getAssets(), paramResources.getDisplayMetrics(), paramResources.getConfiguration());
    c = paramResources;
    Configuration localConfiguration = paramResources.getConfiguration();
    if (localConfiguration != null) {
      if ((screenLayout & 0xF) != 4) {
        break label95;
      }
    }
    label95:
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      updateConfiguration(localConfiguration, paramResources.getDisplayMetrics());
      paramResources = new ao(paramResources).a("getCompatibilityInfo");
      if (paramResources != null) {
        new ao(this).a("setCompatibilityInfo", paramResources);
      }
      return;
    }
  }
  
  public static p a(Resources paramResources)
  {
    if (b == null) {
      b = new p(paramResources);
    }
    return b;
  }
  
  public Drawable a(int paramInt, Resources.Theme paramTheme)
  {
    if (ac.a() < 21) {
      return super.getDrawable(paramInt);
    }
    return super.getDrawable(paramInt, paramTheme);
  }
  
  public InputStream a(int paramInt, TypedValue paramTypedValue)
  {
    return super.openRawResource(paramInt, paramTypedValue);
  }
  
  public void a()
  {
    int i = 0;
    Configuration localConfiguration;
    if (c != null)
    {
      localConfiguration = c.getConfiguration();
      if ((localConfiguration != null) && (a))
      {
        if ((ad.a(FexApplication.a()).aY()) || (z.O)) {
          i = 1;
        }
        if (i == 0) {
          break label154;
        }
        screenLayout &= 0xFFFFFFF0;
      }
    }
    for (screenLayout |= 0x4;; screenLayout |= 0x2)
    {
      updateConfiguration(localConfiguration, c.getDisplayMetrics());
      at localat = at.a(FexApplication.a());
      if (!localat.c()) {}
      try
      {
        getClass().getSuperclass().getDeclaredMethod("updateConfiguration", new Class[] { Configuration.class, DisplayMetrics.class }).invoke(localat.f().getResources(), new Object[] { localConfiguration, c.getDisplayMetrics() });
        return;
      }
      catch (Throwable localThrowable)
      {
        label154:
        localThrowable.printStackTrace();
      }
      screenLayout &= 0xFFFFFFF0;
    }
  }
  
  public Drawable getDrawable(int paramInt)
  {
    if (paramInt >>> 24 == 1) {}
    try
    {
      return a(paramInt, null);
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      Drawable localDrawable;
      localOutOfMemoryError.printStackTrace();
    }
    localDrawable = at.a(FexApplication.a()).a(paramInt);
    return localDrawable;
    return null;
  }
  
  public Drawable getDrawable(int paramInt, Resources.Theme paramTheme)
  {
    if (paramInt >>> 24 == 1) {
      return a(paramInt, paramTheme);
    }
    return at.a(FexApplication.a()).a(paramInt);
  }
  
  public String getQuantityString(int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    String str = i.a(paramInt1, paramInt2);
    if (str == null)
    {
      str = super.getQuantityString(paramInt1, paramInt2, paramVarArgs);
      paramVarArgs = str;
      if (str != null)
      {
        paramVarArgs = str;
        if (z.K)
        {
          paramVarArgs = str;
          if (i.a(paramInt1)) {
            paramVarArgs = str.replaceAll("WLAN", "Wifi");
          }
        }
      }
      return paramVarArgs;
    }
    return String.format(str, paramVarArgs);
  }
  
  public String getString(int paramInt)
  {
    String str2 = i.b(paramInt);
    String str1 = str2;
    if (str2 == null)
    {
      str2 = super.getString(paramInt);
      str1 = str2;
      if (str2 != null)
      {
        str1 = str2;
        if (z.K)
        {
          str1 = str2;
          if (i.a(paramInt)) {
            str1 = str2.replaceAll("WLAN", "Wifi");
          }
        }
      }
    }
    return str1;
  }
  
  public String getString(int paramInt, Object... paramVarArgs)
  {
    String str = i.b(paramInt);
    if (str == null)
    {
      str = super.getString(paramInt, paramVarArgs);
      paramVarArgs = str;
      if (str != null)
      {
        paramVarArgs = str;
        if (z.K)
        {
          paramVarArgs = str;
          if (i.a(paramInt)) {
            paramVarArgs = str.replaceAll("WLAN", "Wifi");
          }
        }
      }
      return paramVarArgs;
    }
    return String.format(str, paramVarArgs);
  }
  
  public String[] getStringArray(int paramInt)
  {
    String[] arrayOfString2 = i.c(paramInt);
    String[] arrayOfString1 = arrayOfString2;
    if (arrayOfString2 == null) {
      arrayOfString1 = super.getStringArray(paramInt);
    }
    return arrayOfString1;
  }
  
  public CharSequence getText(int paramInt)
  {
    Object localObject2 = i.b(paramInt);
    Object localObject1 = localObject2;
    if (localObject2 == null) {}
    try
    {
      localObject2 = super.getText(paramInt);
      localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if (z.K)
        {
          localObject1 = localObject2;
          if (i.a(paramInt)) {
            localObject1 = ((CharSequence)localObject2).toString().replaceAll("WLAN", "Wifi");
          }
        }
      }
      return (CharSequence)localObject1;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public CharSequence getText(int paramInt, CharSequence paramCharSequence)
  {
    String str = i.b(paramInt);
    Object localObject = str;
    if (str == null)
    {
      paramCharSequence = (String)super.getText(paramInt, paramCharSequence);
      localObject = paramCharSequence;
      if (paramCharSequence != null)
      {
        localObject = paramCharSequence;
        if (z.K)
        {
          localObject = paramCharSequence;
          if (i.a(paramInt)) {
            localObject = paramCharSequence.replaceAll("WLAN", "Wifi");
          }
        }
      }
    }
    return (CharSequence)localObject;
  }
  
  public CharSequence[] getTextArray(int paramInt)
  {
    CharSequence[] arrayOfCharSequence2 = i.d(paramInt);
    CharSequence[] arrayOfCharSequence1 = arrayOfCharSequence2;
    if (arrayOfCharSequence2 == null) {
      arrayOfCharSequence1 = super.getTextArray(paramInt);
    }
    return arrayOfCharSequence1;
  }
  
  public void getValue(int paramInt, TypedValue paramTypedValue, boolean paramBoolean)
  {
    super.getValue(paramInt, paramTypedValue, paramBoolean);
  }
  
  public void getValue(String paramString, TypedValue paramTypedValue, boolean paramBoolean)
  {
    super.getValue(paramString, paramTypedValue, paramBoolean);
  }
  
  public InputStream openRawResource(int paramInt, TypedValue paramTypedValue)
  {
    return at.a(FexApplication.a()).a(paramInt, paramTypedValue);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */