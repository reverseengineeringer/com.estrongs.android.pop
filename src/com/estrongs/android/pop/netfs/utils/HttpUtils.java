package com.estrongs.android.pop.netfs.utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BasicStatusLine;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class HttpUtils
{
  private static int BUFFER_SIZE;
  private static final char[] legalChars;
  
  static
  {
    if (!HttpUtils.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      BUFFER_SIZE = 2048;
      legalChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
      return;
    }
  }
  
  /* Error */
  public static byte[] base64Decode(String paramString)
  {
    // Byte code:
    //   0: new 42	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 43	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: aload_1
    //   10: invokestatic 47	com/estrongs/android/pop/netfs/utils/HttpUtils:decode	(Ljava/lang/String;Ljava/io/OutputStream;)V
    //   13: aload_1
    //   14: invokevirtual 51	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   17: astore_0
    //   18: aload_1
    //   19: invokevirtual 54	java/io/ByteArrayOutputStream:close	()V
    //   22: aload_0
    //   23: areturn
    //   24: astore_0
    //   25: new 56	java/lang/RuntimeException
    //   28: dup
    //   29: invokespecial 57	java/lang/RuntimeException:<init>	()V
    //   32: athrow
    //   33: astore_1
    //   34: getstatic 63	java/lang/System:err	Ljava/io/PrintStream;
    //   37: new 65	java/lang/StringBuilder
    //   40: dup
    //   41: ldc 67
    //   43: invokespecial 70	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   46: aload_1
    //   47: invokevirtual 74	java/io/IOException:toString	()Ljava/lang/String;
    //   50: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokevirtual 84	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   59: aload_0
    //   60: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	paramString	String
    //   7	12	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   33	14	1	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   8	13	24	java/io/IOException
    //   18	22	33	java/io/IOException
  }
  
  public static String base64Encode(byte[] paramArrayOfByte)
  {
    int k = paramArrayOfByte.length;
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length * 3 / 2);
    int i = 0;
    int j = 0;
    for (;;)
    {
      if (j > k - 3)
      {
        if (j != 0 + k - 2) {
          break label254;
        }
        i = (paramArrayOfByte[j] & 0xFF) << 16 | (paramArrayOfByte[(j + 1)] & 0xFF) << 8;
        localStringBuffer.append(legalChars[(i >> 18 & 0x3F)]);
        localStringBuffer.append(legalChars[(i >> 12 & 0x3F)]);
        localStringBuffer.append(legalChars[(i >> 6 & 0x3F)]);
        localStringBuffer.append("=");
      }
      for (;;)
      {
        return localStringBuffer.toString();
        int m = (paramArrayOfByte[j] & 0xFF) << 16 | (paramArrayOfByte[(j + 1)] & 0xFF) << 8 | paramArrayOfByte[(j + 2)] & 0xFF;
        localStringBuffer.append(legalChars[(m >> 18 & 0x3F)]);
        localStringBuffer.append(legalChars[(m >> 12 & 0x3F)]);
        localStringBuffer.append(legalChars[(m >> 6 & 0x3F)]);
        localStringBuffer.append(legalChars[(m & 0x3F)]);
        j += 3;
        if (i < 14) {
          break label319;
        }
        localStringBuffer.append(" ");
        i = 0;
        break;
        label254:
        if (j == 0 + k - 1)
        {
          i = (paramArrayOfByte[j] & 0xFF) << 16;
          localStringBuffer.append(legalChars[(i >> 18 & 0x3F)]);
          localStringBuffer.append(legalChars[(i >> 12 & 0x3F)]);
          localStringBuffer.append("==");
        }
      }
      label319:
      i += 1;
    }
  }
  
  public static String buildGetUrl(String paramString, Object[] paramArrayOfObject)
  {
    return buildGetUrl(paramString, paramArrayOfObject, false);
  }
  
  public static String buildGetUrl(String paramString, Object[] paramArrayOfObject, boolean paramBoolean)
  {
    for (;;)
    {
      String str2;
      int j;
      String str1;
      int k;
      try
      {
        paramString = URLEncoder.encode(paramString);
        if (paramBoolean)
        {
          str2 = paramString.replace("%2F", "/").replace("+", "%20").replace("%7E", "~");
          break label314;
          if (j < paramArrayOfObject.length) {
            break label325;
          }
          if (paramString.length() == 0) {
            break label311;
          }
          return str2 + "?" + paramString;
        }
        str2 = paramString.replace("%2F", "/").replace("+", "%20");
      }
      catch (UnsupportedEncodingException paramString)
      {
        return null;
      }
      if (paramBoolean)
      {
        str1 = paramString + URLEncoder.encode(new StringBuilder().append(paramArrayOfObject[j]).toString(), "UTF-8").replace("+", "%20").replace("%7E", "~") + "=" + URLEncoder.encode(new StringBuilder().append(paramArrayOfObject[(j + 1)]).toString(), "UTF-8").replace("+", "%20").replace("%7E", "~");
        k = i;
        break label349;
        paramString = paramString + "&";
      }
      else
      {
        str1 = paramString + URLEncoder.encode(new StringBuilder().append(paramArrayOfObject[j]).toString(), "UTF-8") + "=" + URLEncoder.encode(new StringBuilder().append(paramArrayOfObject[(j + 1)]).toString(), "UTF-8");
        k = i;
        break label349;
        label311:
        return str2;
        label314:
        paramString = "";
        i = 1;
        j = 0;
        continue;
        label325:
        k = i;
        str1 = paramString;
        if (paramArrayOfObject[(j + 1)] != null)
        {
          if (i == 0) {
            continue;
          }
          i = 0;
          continue;
        }
      }
      label349:
      j += 2;
      int i = k;
      paramString = str1;
    }
  }
  
  private static int decode(char paramChar)
  {
    if ((paramChar >= 'A') && (paramChar <= 'Z')) {
      return paramChar - 'A';
    }
    if ((paramChar >= 'a') && (paramChar <= 'z')) {
      return paramChar - 'a' + 26;
    }
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0' + 26 + 26;
    }
    switch (paramChar)
    {
    default: 
      throw new RuntimeException("unexpected code: " + paramChar);
    case '+': 
      return 62;
    case '/': 
      return 63;
    }
    return 0;
  }
  
  private static void decode(String paramString, OutputStream paramOutputStream)
  {
    int i = 0;
    int j = paramString.length();
    for (;;)
    {
      if ((i >= j) || (paramString.charAt(i) > ' ')) {
        if (i != j) {
          break label35;
        }
      }
      label35:
      int k;
      do
      {
        do
        {
          return;
          i += 1;
          break;
          k = (decode(paramString.charAt(i)) << 18) + (decode(paramString.charAt(i + 1)) << 12) + (decode(paramString.charAt(i + 2)) << 6) + decode(paramString.charAt(i + 3));
          paramOutputStream.write(k >> 16 & 0xFF);
        } while (paramString.charAt(i + 2) == '=');
        paramOutputStream.write(k >> 8 & 0xFF);
      } while (paramString.charAt(i + 3) == '=');
      paramOutputStream.write(k & 0xFF);
      i += 4;
    }
  }
  
  public static HttpClient getClient()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
    return new DefaultHttpClient(localBasicHttpParams);
  }
  
  private static Character getHexChar(int paramInt)
  {
    if (paramInt < 10) {
      return Character.valueOf((char)(paramInt + 48));
    }
    return Character.valueOf((char)(paramInt + 97 - 10));
  }
  
  public static int getInt(Object paramObject, String paramString)
  {
    try
    {
      paramObject = (Map)paramObject;
      if (paramObject == null) {
        return -1;
      }
      paramObject = ((Map)paramObject).get(paramString);
      if (paramObject == null) {
        break label75;
      }
      if ((paramObject != null) && ((paramObject instanceof Number))) {
        i = ((Number)paramObject).intValue();
      } else if ((paramObject != null) && ((paramObject instanceof String))) {
        i = Integer.parseInt((String)paramObject);
      }
    }
    catch (Exception paramObject)
    {
      return -1;
    }
    int i = -1;
    return i;
    label75:
    return -1;
    return i;
  }
  
  public static Map parseAsJSON(HttpResponse paramHttpResponse)
  {
    String str = readResponse(paramHttpResponse);
    HashMap localHashMap;
    if (paramHttpResponse.getStatusLine().getStatusCode() != 200)
    {
      localHashMap = new HashMap();
      localHashMap.put("ERROR", paramHttpResponse.getStatusLine());
      localHashMap.put("RESULT", str);
      return localHashMap;
    }
    if (str.equals("OK"))
    {
      paramHttpResponse = new HashMap();
      paramHttpResponse.put("RESULT", str);
      return paramHttpResponse;
    }
    try
    {
      paramHttpResponse = (Map)new JSONParser().parse(str);
      return paramHttpResponse;
    }
    catch (ParseException paramHttpResponse)
    {
      localHashMap = new HashMap();
      localHashMap.put("ERROR", new BasicStatusLine(new ProtocolVersion("HTTP", 1, 1), 999, "Bad JSON From Server: " + paramHttpResponse.toString()));
      localHashMap.put("RESULT", str);
    }
    return localHashMap;
  }
  
  public static String readResponse(HttpResponse paramHttpResponse)
  {
    Object localObject = paramHttpResponse.getEntity();
    if (localObject != null)
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(((HttpEntity)localObject).getContent()), BUFFER_SIZE);
      String str;
      for (localObject = "";; localObject = localObject + str)
      {
        str = localBufferedReader.readLine();
        if (str == null)
        {
          paramHttpResponse.getEntity().consumeContent();
          return (String)localObject;
        }
      }
    }
    return "";
  }
  
  public static void setParameters(HttpPost paramHttpPost, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null) {
      try
      {
        if (paramArrayOfObject.length >= 2)
        {
          if (($assertionsDisabled) || (paramArrayOfObject.length % 2 == 0)) {
            break label40;
          }
          throw new AssertionError("Params must have an even number of elements.");
        }
      }
      catch (Exception paramHttpPost)
      {
        paramHttpPost.printStackTrace();
      }
    }
    return;
    label40:
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfObject.length)
      {
        paramHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList, "UTF-8"));
        return;
      }
      if (paramArrayOfObject[(i + 1)] != null) {
        localArrayList.add(new BasicNameValuePair(paramArrayOfObject[i], paramArrayOfObject[(i + 1)]));
      }
      i += 2;
    }
  }
  
  public static String toHexStr(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(getHexChar((paramArrayOfByte[i] & 0xFF) / 16));
      localStringBuilder.append(getHexChar((paramArrayOfByte[i] & 0xFF) % 16));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.HttpUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */