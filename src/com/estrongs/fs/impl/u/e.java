package com.estrongs.fs.impl.u;

import java.net.URLEncoder;

public class e
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };
  
  private static String a(byte paramByte)
  {
    return new String(new char[] { a[(paramByte >> 4 & 0xF)], a[(paramByte & 0xF)] });
  }
  
  public static String a(String paramString)
  {
    if (b(paramString))
    {
      StringBuilder localStringBuilder = new StringBuilder(paramString.length() + 16);
      a(localStringBuilder, paramString);
      return localStringBuilder.toString();
    }
    return URLEncoder.encode(paramString).replace("+", "%20");
  }
  
  private static void a(StringBuilder paramStringBuilder, String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    int i = 0;
    int k = -1;
    if (i < paramString.length())
    {
      char c = paramString.charAt(i);
      int j;
      if (((c >= 'a') && (c <= 'z')) || ((c >= 'A') && (c <= 'Z')) || ((c >= '0') && (c <= '9')) || (a(c)) || (a(paramString, i))) {
        if (k != -1)
        {
          b(paramStringBuilder, paramString.substring(k, i));
          j = -1;
        }
      }
      for (;;)
      {
        i += 1;
        k = j;
        break;
        if (c == ' ')
        {
          paramStringBuilder.append("%20");
          j = k;
        }
        else
        {
          paramStringBuilder.append(c);
          j = k;
          continue;
          j = k;
          if (k == -1) {
            j = i;
          }
        }
      }
    }
    if ((k != -1) && (k < paramString.length())) {
      b(paramStringBuilder, paramString.substring(k, paramString.length()));
    }
  }
  
  static boolean a(char paramChar)
  {
    return " .-*_".indexOf(paramChar) != -1;
  }
  
  static boolean a(String paramString, int paramInt)
  {
    paramInt = Character.codePointAt(paramString, paramInt);
    return (paramInt < 0) || (paramInt > 127);
  }
  
  private static void b(StringBuilder paramStringBuilder, String paramString)
  {
    paramString = paramString.getBytes();
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      byte b = paramString[i];
      paramStringBuilder.append('%');
      paramStringBuilder.append(a(b));
      i += 1;
    }
  }
  
  private static boolean b(String paramString)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramString.length())
      {
        int j = Character.codePointAt(paramString, i);
        if ((j < 0) || (j > 127)) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.u.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */