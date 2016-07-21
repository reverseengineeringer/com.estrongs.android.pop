package com.estrongs.io.archive;

public class g
{
  public static String a = ".zip";
  public static String b = ".gz";
  public static String c = ".gzip";
  public static String d = ".7z";
  public static String e = ".esc";
  
  public static String a(String paramString)
  {
    if (paramString.endsWith(a)) {
      return a;
    }
    if ((paramString.endsWith(b)) || (paramString.endsWith(c))) {
      return b;
    }
    if (paramString.endsWith(d)) {
      return d;
    }
    if (paramString.endsWith(e)) {
      return e;
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */