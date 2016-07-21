package com.estrongs.android.util;

import java.io.File;
import java.util.Comparator;

public class s
{
  public static final v a = new v();
  public static final w b = new w();
  public static final Comparator<File> c = new t();
  
  private static String b(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      return "0" + paramString.toLowerCase();
    }
    return "1" + paramString.toLowerCase();
  }
  
  private static String b(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      return "0" + paramString;
    }
    return "1" + paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */