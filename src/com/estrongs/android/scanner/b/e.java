package com.estrongs.android.scanner.b;

import java.util.HashSet;

public class e
{
  private static HashSet<String> a = new HashSet();
  private static HashSet<String> b;
  private static HashSet<String> c;
  
  static
  {
    a.add(".xla");
    a.add(".xlc");
    a.add(".xlm");
    a.add(".xls");
    a.add(".xlt");
    a.add(".xlsx");
    a.add(".xlsm");
    a.add(".xlsb");
    a.add(".ods");
    a.add(".doc");
    a.add(".docx");
    a.add(".docm");
    a.add(".odt");
    a.add(".pptx");
    a.add(".ppt");
    a.add(".ppx");
    a.add(".pps");
    a.add(".ppsm");
    a.add(".odp");
    b = new HashSet();
    b.add(".chm");
    b.add(".epub");
    b.add(".pdf");
    b.add(".umd");
    b.add(".fb2");
    b.add(".azw");
    b.add(".azw1");
    b.add(".azw3");
    b.add(".azw4");
    b.add(".prc");
    b.add(".ebk");
    b.add(".ebk2");
    b.add(".ebk3");
    b.add(".mobi");
    c = new HashSet();
    c.add(".html");
    c.add(".htm");
    c.add(".mht");
    c.add(".et");
    c.add(".ett");
    c.add(".wps");
    c.add(".wpt");
    c.add(".dps");
    c.add(".dpt");
  }
  
  public static int a(String paramString)
  {
    if (a.contains(paramString)) {
      return 1;
    }
    if (b.contains(paramString)) {
      return 2;
    }
    return 0;
  }
  
  public static boolean b(String paramString)
  {
    if (c.contains(paramString)) {}
    while ((a.contains(paramString)) || (b.contains(paramString))) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */