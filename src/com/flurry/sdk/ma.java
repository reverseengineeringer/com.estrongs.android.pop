package com.flurry.sdk;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.regex.Pattern;

public class ma
{
  private static final Pattern a = Pattern.compile("/");
  
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    Object localObject;
    String str;
    int i;
    do
    {
      do
      {
        do
        {
          return paramString;
          localObject = i(paramString);
        } while (localObject == null);
        localObject = ((URI)localObject).getScheme();
        if (TextUtils.isEmpty((CharSequence)localObject)) {
          return "http" + paramString;
        }
        str = ((String)localObject).toLowerCase();
      } while ((localObject == null) || (((String)localObject).equals(str)));
      i = paramString.indexOf((String)localObject);
    } while (i < 0);
    return str + paramString.substring(((String)localObject).length() + i);
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {}
    Object localObject1;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return paramString1;
              localObject1 = i(paramString1);
            } while (localObject1 == null);
            localObject1 = ((URI)localObject1).normalize();
            paramString2 = i(paramString2);
          } while (paramString2 == null);
          localObject2 = paramString2.normalize();
        } while ((((URI)localObject1).isOpaque()) || (((URI)localObject2).isOpaque()));
        paramString2 = ((URI)localObject1).getScheme();
        localObject3 = ((URI)localObject2).getScheme();
      } while (((localObject3 == null) && (paramString2 != null)) || ((localObject3 != null) && (!((String)localObject3).equals(paramString2))));
      paramString2 = ((URI)localObject1).getAuthority();
      localObject3 = ((URI)localObject2).getAuthority();
    } while (((localObject3 == null) && (paramString2 != null)) || ((localObject3 != null) && (!((String)localObject3).equals(paramString2))));
    Object localObject3 = ((URI)localObject1).getPath();
    paramString2 = ((URI)localObject2).getPath();
    localObject3 = a.split((CharSequence)localObject3, -1);
    paramString2 = a.split(paramString2, -1);
    int m = localObject3.length;
    int n = paramString2.length;
    int i = 0;
    StringBuilder localStringBuilder;
    boolean bool1;
    for (;;)
    {
      if ((i >= n) || (i >= m) || (!localObject3[i].equals(paramString2[i])))
      {
        paramString2 = ((URI)localObject1).getQuery();
        localObject1 = ((URI)localObject1).getFragment();
        localStringBuilder = new StringBuilder();
        if ((i != n) || (i != m)) {
          break label372;
        }
        String str = ((URI)localObject2).getQuery();
        localObject2 = ((URI)localObject2).getFragment();
        bool1 = TextUtils.equals(paramString2, str);
        boolean bool2 = TextUtils.equals((CharSequence)localObject1, (CharSequence)localObject2);
        if ((!bool1) || (!bool2)) {
          break label324;
        }
        localObject1 = null;
        paramString2 = null;
        localObject2 = localObject1;
        localObject3 = paramString2;
        label293:
        paramString2 = a(null, null, localStringBuilder.toString(), (String)localObject3, (String)localObject2);
        if (paramString2 == null) {
          break;
        }
        return paramString2.toString();
      }
      i += 1;
    }
    label324:
    if ((bool1) && (!TextUtils.isEmpty((CharSequence)localObject1))) {}
    for (Object localObject2 = null;; localObject2 = paramString2)
    {
      if ((TextUtils.isEmpty((CharSequence)localObject2)) && (TextUtils.isEmpty((CharSequence)localObject1)))
      {
        localStringBuilder.append(localObject3[(m - 1)]);
        break;
        label372:
        int j = i;
        int k;
        for (;;)
        {
          k = i;
          if (j >= n - 1) {
            break;
          }
          localStringBuilder.append("..");
          localStringBuilder.append("/");
          j += 1;
        }
        while (k < m - 1)
        {
          localStringBuilder.append(localObject3[k]);
          localStringBuilder.append("/");
          k += 1;
        }
        if (k < m) {
          localStringBuilder.append(localObject3[k]);
        }
        localObject3 = paramString2;
        localObject2 = localObject1;
        if (localStringBuilder.length() != 0) {
          break label293;
        }
        localStringBuilder.append(".");
        localStringBuilder.append("/");
        localObject3 = paramString2;
        localObject2 = localObject1;
        break label293;
      }
      paramString2 = (String)localObject2;
      break;
    }
  }
  
  private static URI a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    try
    {
      paramString1 = new URI(paramString1, paramString2, paramString3, paramString4, paramString5);
      return paramString1;
    }
    catch (URISyntaxException paramString1) {}
    return null;
  }
  
  public static String b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    URI localURI;
    do
    {
      do
      {
        do
        {
          return paramString;
          localURI = i(paramString);
        } while (localURI == null);
        localURI = localURI.normalize();
      } while (localURI.isOpaque());
      localURI = a(localURI.getScheme(), localURI.getAuthority(), "/", null, null);
    } while (localURI == null);
    return localURI.toString();
  }
  
  public static String b(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (!TextUtils.isEmpty(paramString1)) {
      str = paramString1;
    }
    try
    {
      if (!new URI(paramString1).isAbsolute())
      {
        str = paramString1;
        if (!TextUtils.isEmpty(paramString2))
        {
          paramString2 = new URI(paramString2);
          str = paramString2.getScheme() + "://" + paramString2.getHost() + paramString1;
        }
      }
      return str;
    }
    catch (Exception paramString2) {}
    return paramString1;
  }
  
  public static String c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    URI localURI;
    do
    {
      do
      {
        do
        {
          return paramString;
          localURI = i(paramString);
        } while (localURI == null);
        localURI = localURI.normalize();
      } while (localURI.isOpaque());
      localURI = localURI.resolve("./");
    } while (localURI == null);
    return localURI.toString();
  }
  
  public static boolean d(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = Uri.parse(paramString);
      bool1 = bool2;
      if (paramString.getScheme() != null)
      {
        bool1 = bool2;
        if (paramString.getScheme().equals("market")) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean e(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = Uri.parse(paramString);
      bool1 = bool2;
      if (paramString.getScheme() != null) {
        if (!paramString.getScheme().equals("http"))
        {
          bool1 = bool2;
          if (!paramString.getScheme().equals("https")) {}
        }
        else
        {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean f(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = Uri.parse(paramString);
      bool1 = bool2;
      if (paramString.getHost() != null)
      {
        bool1 = bool2;
        if (paramString.getHost().equals("play.google.com"))
        {
          bool1 = bool2;
          if (paramString.getScheme() != null)
          {
            bool1 = bool2;
            if (paramString.getScheme().startsWith("http")) {
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public static boolean g(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(paramString));
      bool1 = bool2;
      if (paramString != null)
      {
        bool1 = bool2;
        if (paramString.startsWith("video/")) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean h(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return false;
      paramString = i(paramString);
    } while ((paramString == null) || ((paramString.getScheme() != null) && (!"http".equalsIgnoreCase(paramString.getScheme())) && (!"https".equalsIgnoreCase(paramString.getScheme()))));
    return true;
  }
  
  private static URI i(String paramString)
  {
    try
    {
      paramString = new URI(paramString);
      return paramString;
    }
    catch (URISyntaxException paramString) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */