package com.estrongs.fs.impl.k;

import android.net.Uri;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class e
{
  public static String a()
  {
    Calendar localCalendar = Calendar.getInstance();
    int i = localCalendar.get(1);
    int j = localCalendar.get(2);
    int k = localCalendar.get(5);
    int m = localCalendar.get(11);
    int n = localCalendar.get(12);
    int i1 = localCalendar.get(13) / 2;
    return "0x" + Integer.toHexString((i - 1980 << 9) + (j + 1 << 5) + k) + Integer.toHexString(i1 + ((m << 11) + (n << 5)));
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if (paramString1.endsWith("/")) {
      return "http://flashair/thumbnail.cgi?" + paramString1 + paramString2;
    }
    return "http://flashair/thumbnail.cgi?" + paramString1 + "/" + paramString2;
  }
  
  public static List<a> a(String paramString)
  {
    String str2 = c(paramString);
    if (str2.contains("%")) {}
    ArrayList localArrayList;
    for (paramString = "http://flashair/command.cgi?op=100&DIR=" + str2;; paramString = "http://flashair/command.cgi?op=100&DIR=" + Uri.encode(str2, "/"))
    {
      localArrayList = new ArrayList();
      paramString = b(paramString);
      if (!TextUtils.isEmpty(paramString)) {
        break;
      }
      return localArrayList;
    }
    String[] arrayOfString = paramString.split("\n");
    int j = arrayOfString.length;
    int i = 0;
    if (i < j)
    {
      String str1 = arrayOfString[i];
      if (TextUtils.isEmpty(str1)) {}
      for (;;)
      {
        i += 1;
        break;
        paramString = str1;
        if (str1.startsWith(",")) {
          paramString = "/" + str1;
        }
        if (paramString.split(",").length >= 6) {
          localArrayList.add(new a(paramString, Uri.decode(str2)));
        }
      }
    }
    return localArrayList;
  }
  
  public static String b(String paramString)
  {
    paramString = new URL(paramString).openConnection();
    paramString.connect();
    paramString = new BufferedReader(new InputStreamReader(paramString.getInputStream(), "UTF-8"));
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      String str = paramString.readLine();
      if (str == null) {
        break;
      }
      if (localStringBuffer.toString() != "") {
        localStringBuffer.append("\n");
      }
      localStringBuffer.append(str);
    }
    return localStringBuffer.toString();
  }
  
  public static String c(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (!paramString.equals("/"))
      {
        str = paramString;
        if (paramString.endsWith("/")) {
          str = paramString.substring(0, paramString.length() - 1);
        }
      }
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.k.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */