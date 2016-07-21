package com.flurry.sdk;

import android.text.TextUtils;
import java.io.File;

public class ff
{
  private static final String a = ff.class.getName();
  
  public static File a(String paramString)
  {
    return new File(ls.b(true).getPath() + File.separator + ".fcaches" + File.separator + paramString);
  }
  
  public static File a(String paramString, int paramInt)
  {
    return new File(ls.a(true).getPath() + File.separator + ".fcaches" + File.separator + paramString + File.separator + paramInt);
  }
  
  public static File b(String paramString)
  {
    return new File(ls.a(true).getPath() + File.separator + ".fcaches" + File.separator + paramString);
  }
  
  public static String c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return String.format("%016x", new Object[] { Long.valueOf(lt.i(paramString)) }).trim();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */