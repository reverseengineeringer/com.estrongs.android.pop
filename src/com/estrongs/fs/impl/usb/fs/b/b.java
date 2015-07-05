package com.estrongs.fs.impl.usb.fs.b;

import java.util.Collection;
import java.util.Locale;

public class b
{
  public static a a(String paramString, Collection<a> paramCollection)
  {
    int k = 1;
    paramString = paramString.toUpperCase(Locale.ROOT).trim();
    int i = 0;
    Object localObject;
    int j;
    label70:
    String str1;
    String str2;
    if ((i >= paramString.length()) || (paramString.charAt(i) != '.'))
    {
      localObject = paramString.substring(i);
      j = ((String)localObject).lastIndexOf('.');
      if (j != -1) {
        break label260;
      }
      if (!a((String)localObject)) {
        break label252;
      }
      paramString = b((String)localObject);
      i = 1;
      localObject = "";
      str1 = paramString;
      j = i;
      str1 = str1.replace(" ", "");
      str2 = ((String)localObject).replace(" ", "");
      localObject = new a(str1, str2);
      if ((j == 0) && (str1.length() <= 8))
      {
        paramString = (String)localObject;
        if (!paramCollection.contains(localObject)) {}
      }
      else
      {
        j = Math.min(str1.length(), 8);
        i = k;
        paramString = (String)localObject;
      }
    }
    for (;;)
    {
      if (i < 999999)
      {
        paramString = "~" + i;
        k = paramString.length();
        paramString = new a(str1.substring(0, Math.min(j, 8 - k)) + paramString, str2);
        if (paramCollection.contains(paramString)) {}
      }
      else
      {
        return paramString;
        i += 1;
        break;
        label252:
        paramString = (String)localObject;
        i = 0;
        break label70;
        label260:
        paramString = ((String)localObject).substring(0, j);
        if (a(paramString)) {
          paramString = b((String)localObject);
        }
        for (i = 1;; i = 0)
        {
          str2 = b(((String)localObject).substring(j + 1));
          localObject = str2;
          j = i;
          str1 = paramString;
          if (str2.length() <= 3) {
            break;
          }
          localObject = str2.substring(0, 3);
          j = i;
          str1 = paramString;
          break;
        }
      }
      i += 1;
    }
  }
  
  private static boolean a(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9')) {}
    while (((paramChar >= 'A') && (paramChar <= 'Z')) || (paramChar == '$') || (paramChar == '%') || (paramChar == '\'') || (paramChar == '-') || (paramChar == '_') || (paramChar == '@') || (paramChar == '~') || (paramChar == '`') || (paramChar == '!') || (paramChar == '(') || (paramChar == ')') || (paramChar == '{') || (paramChar == '}') || (paramChar == '^') || (paramChar == '#') || (paramChar == '&')) {
      return true;
    }
    return false;
  }
  
  private static boolean a(String paramString)
  {
    boolean bool2 = false;
    int j = paramString.length();
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (!a(paramString.charAt(i))) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private static String b(String paramString)
  {
    int j = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(j);
    int i = 0;
    if (i < j)
    {
      char c = paramString.charAt(i);
      if (a(c)) {
        localStringBuilder.append(c);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("_");
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */