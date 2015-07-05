package oauth.signpost;

import com.b.a.a.a.a.a;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import oauth.signpost.http.HttpParameters;

public class OAuth
{
  public static final String ENCODING = "UTF-8";
  public static final String FORM_ENCODED = "application/x-www-form-urlencoded";
  public static final String HTTP_AUTHORIZATION_HEADER = "Authorization";
  public static final String OAUTH_CALLBACK = "oauth_callback";
  public static final String OAUTH_CALLBACK_CONFIRMED = "oauth_callback_confirmed";
  public static final String OAUTH_CONSUMER_KEY = "oauth_consumer_key";
  public static final String OAUTH_NONCE = "oauth_nonce";
  public static final String OAUTH_SIGNATURE = "oauth_signature";
  public static final String OAUTH_SIGNATURE_METHOD = "oauth_signature_method";
  public static final String OAUTH_TIMESTAMP = "oauth_timestamp";
  public static final String OAUTH_TOKEN = "oauth_token";
  public static final String OAUTH_TOKEN_SECRET = "oauth_token_secret";
  public static final String OAUTH_VERIFIER = "oauth_verifier";
  public static final String OAUTH_VERSION = "oauth_version";
  public static final String OUT_OF_BAND = "oob";
  public static final String VERSION_1_0 = "1.0";
  private static final a percentEncoder = new a("-._~", false);
  
  public static String addQueryParameters(String paramString, Map<String, String> paramMap)
  {
    String[] arrayOfString = new String[paramMap.size() * 2];
    Iterator localIterator = paramMap.keySet().iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      arrayOfString[i] = str;
      arrayOfString[(i + 1)] = ((String)paramMap.get(str));
      i += 2;
    }
    return addQueryParameters(paramString, arrayOfString);
  }
  
  public static String addQueryParameters(String paramString, String... paramVarArgs)
  {
    if (paramString.contains("?")) {}
    for (String str = "&";; str = "?")
    {
      paramString = new StringBuilder(paramString + str);
      int i = 0;
      while (i < paramVarArgs.length)
      {
        if (i > 0) {
          paramString.append("&");
        }
        paramString.append(percentEncode(paramVarArgs[i]) + "=" + percentEncode(paramVarArgs[(i + 1)]));
        i += 2;
      }
    }
    return paramString.toString();
  }
  
  public static void debugOut(String paramString1, String paramString2)
  {
    if (System.getProperty("debug") != null) {
      System.out.println("[SIGNPOST] " + paramString1 + ": " + paramString2);
    }
  }
  
  public static HttpParameters decodeForm(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    for (paramInputStream = localBufferedReader.readLine(); paramInputStream != null; paramInputStream = localBufferedReader.readLine()) {
      localStringBuilder.append(paramInputStream);
    }
    return decodeForm(localStringBuilder.toString());
  }
  
  public static HttpParameters decodeForm(String paramString)
  {
    HttpParameters localHttpParameters = new HttpParameters();
    if (isEmpty(paramString)) {
      return localHttpParameters;
    }
    String[] arrayOfString = paramString.split("\\&");
    int j = arrayOfString.length;
    int i = 0;
    if (i < j)
    {
      paramString = arrayOfString[i];
      int k = paramString.indexOf('=');
      String str;
      if (k < 0) {
        str = percentDecode(paramString);
      }
      for (paramString = null;; paramString = percentDecode(paramString.substring(k + 1)))
      {
        localHttpParameters.put(str, paramString);
        i += 1;
        break;
        str = percentDecode(paramString.substring(0, k));
      }
    }
    return localHttpParameters;
  }
  
  public static <T extends Map.Entry<String, String>> String formEncode(Collection<T> paramCollection)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    formEncode(paramCollection, localByteArrayOutputStream);
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  public static <T extends Map.Entry<String, String>> void formEncode(Collection<T> paramCollection, OutputStream paramOutputStream)
  {
    if (paramCollection != null)
    {
      paramCollection = paramCollection.iterator();
      int i = 1;
      if (paramCollection.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramCollection.next();
        if (i != 0) {
          i = 0;
        }
        for (;;)
        {
          paramOutputStream.write(percentEncode(safeToString(localEntry.getKey())).getBytes());
          paramOutputStream.write(61);
          paramOutputStream.write(percentEncode(safeToString(localEntry.getValue())).getBytes());
          break;
          paramOutputStream.write(38);
        }
      }
    }
  }
  
  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static HttpParameters oauthHeaderToParamsMap(String paramString)
  {
    HttpParameters localHttpParameters = new HttpParameters();
    if ((paramString == null) || (!paramString.startsWith("OAuth "))) {}
    for (;;)
    {
      return localHttpParameters;
      paramString = paramString.substring("OAuth ".length()).split(",");
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        String[] arrayOfString = paramString[i].split("=");
        localHttpParameters.put(arrayOfString[0].trim(), arrayOfString[1].replace("\"", "").trim());
        i += 1;
      }
    }
  }
  
  public static String percentDecode(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    try
    {
      paramString = URLDecoder.decode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException(paramString.getMessage(), paramString);
    }
  }
  
  public static String percentEncode(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    return percentEncoder.a(paramString);
  }
  
  public static String prepareOAuthHeader(String... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder("OAuth ");
    int i = 0;
    if (i < paramVarArgs.length)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      if (paramVarArgs[i].startsWith("oauth_")) {}
      for (String str = percentEncode(paramVarArgs[(i + 1)]);; str = paramVarArgs[(i + 1)])
      {
        localStringBuilder.append(percentEncode(paramVarArgs[i]) + "=\"" + str + "\"");
        i += 2;
        break;
      }
    }
    return localStringBuilder.toString();
  }
  
  public static final String safeToString(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return paramObject.toString();
  }
  
  public static String toHeaderElement(String paramString1, String paramString2)
  {
    return percentEncode(paramString1) + "=\"" + percentEncode(paramString2) + "\"";
  }
  
  public static <T extends Map.Entry<String, String>> Map<String, String> toMap(Collection<T> paramCollection)
  {
    HashMap localHashMap = new HashMap();
    if (paramCollection != null)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramCollection.next();
        String str = (String)localEntry.getKey();
        if (!localHashMap.containsKey(str)) {
          localHashMap.put(str, localEntry.getValue());
        }
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.OAuth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */