package com.duapps.ad.coin;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.dianxinos.library.b.c.f;
import com.duapps.ad.base.aj;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.h;
import com.duapps.ad.base.l;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URI;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONObject;

public class a
{
  public static final Header a = new BasicHeader("Content-Encoding", "gzip");
  public static final Header b = new BasicHeader("Accept-Encoding", "gzip");
  public static String c = "10.18.102.104";
  public static int d = 3724;
  public static String e = "cms";
  private static final byte[] f = f.a("43b0cb89310b7037");
  private String g;
  private Context h;
  
  a(Context paramContext)
  {
    h = paramContext;
  }
  
  static String a(HttpResponse paramHttpResponse)
  {
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    if (i == 200)
    {
      paramHttpResponse = c(paramHttpResponse);
      JSONObject localJSONObject = paramHttpResponse.getJSONObject("responseHeader");
      i = localJSONObject.getInt("status");
      if (i == 200)
      {
        paramHttpResponse = paramHttpResponse.getJSONObject("response").getString("res");
        paramHttpResponse = a(f, Base64.decode(paramHttpResponse, 0));
        if (l.a()) {
          l.c("CmsHelper", "result: " + paramHttpResponse);
        }
        return paramHttpResponse;
      }
      throw new IOException("failed to get result, status:" + i + ",msg:" + localJSONObject.optString("msg"));
    }
    throw new IOException("failed to get result, status:" + i);
  }
  
  private static String a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    SecureRandom localSecureRandom = new SecureRandom();
    paramArrayOfByte1 = new DESKeySpec(paramArrayOfByte1);
    paramArrayOfByte1 = SecretKeyFactory.getInstance("DES").generateSecret(paramArrayOfByte1);
    Cipher localCipher = Cipher.getInstance("DES");
    localCipher.init(2, paramArrayOfByte1, localSecureRandom);
    return new String(localCipher.doFinal(paramArrayOfByte2));
  }
  
  static void a(String paramString)
  {
    if ("dev".equals(paramString))
    {
      c = "10.18.102.104";
      d = 3724;
      e = "cms";
      return;
    }
    if ("test".equals(paramString))
    {
      c = "sandbox.duapps.com";
      d = 8124;
      e = "overseas";
      return;
    }
    if ("prod".equals(paramString))
    {
      c = "overseas.jccjd.com";
      d = 80;
      e = "cf/";
      return;
    }
    throw new IllegalArgumentException("bad env:" + paramString);
  }
  
  private static byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    SecureRandom localSecureRandom = new SecureRandom();
    paramArrayOfByte = new DESKeySpec(paramArrayOfByte);
    paramArrayOfByte = SecretKeyFactory.getInstance("DES").generateSecret(paramArrayOfByte);
    Cipher localCipher = Cipher.getInstance("DES");
    localCipher.init(1, paramArrayOfByte, localSecureRandom);
    return localCipher.doFinal(paramString.getBytes());
  }
  
  private String b(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if (paramString.indexOf('?') <= 0) {
      localStringBuilder.append("?");
    }
    for (;;)
    {
      if (g == null)
      {
        paramString = Arrays.asList(new String[] { "op", "locale" });
        g = com.dianxinos.DXStatService.stat.a.a(h, paramString);
      }
      localStringBuilder.append(g);
      localStringBuilder.append("&cv=").append("1.0");
      localStringBuilder.append("&cflv=").append("1.1.2");
      paramString = com.dianxinos.DXStatService.a.a.o(h);
      if (!TextUtils.isEmpty(paramString)) {
        localStringBuilder.append("&op=").append(paramString);
      }
      paramString = com.dianxinos.DXStatService.a.a.r(h);
      localStringBuilder.append("&locale=").append(paramString);
      paramString = h.a(h);
      if (!TextUtils.isEmpty(paramString)) {
        localStringBuilder.append("&").append("gadid").append("=").append(paramString);
      }
      return localStringBuilder.toString();
      localStringBuilder.append("&");
    }
  }
  
  static void b(HttpResponse paramHttpResponse)
  {
    if ((paramHttpResponse == null) || (paramHttpResponse.getEntity() == null)) {
      return;
    }
    try
    {
      paramHttpResponse.getEntity().consumeContent();
      return;
    }
    catch (Exception paramHttpResponse)
    {
      l.a("CmsHelper", "failed to cosume entity", paramHttpResponse);
    }
  }
  
  private static String c(String paramString)
  {
    try
    {
      paramString = Base64.encodeToString(a(f, paramString), 2);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new IOException("Encode failed");
    }
  }
  
  private static JSONObject c(HttpResponse paramHttpResponse)
  {
    Object localObject = paramHttpResponse.getEntity();
    paramHttpResponse = ((HttpEntity)localObject).getContent();
    int j = (int)((HttpEntity)localObject).getContentLength();
    int i = j;
    if (j < 0) {
      i = 1024;
    }
    localObject = ((HttpEntity)localObject).getContentEncoding();
    if ((localObject != null) && (((Header)localObject).getValue().contains("gzip"))) {
      paramHttpResponse = new GZIPInputStream(paramHttpResponse);
    }
    for (;;)
    {
      localObject = new InputStreamReader(paramHttpResponse, "UTF-8");
      CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(i);
      char[] arrayOfChar = new char['Ѐ'];
      for (;;)
      {
        i = ((Reader)localObject).read(arrayOfChar);
        if (i == -1) {
          break;
        }
        localCharArrayBuffer.append(arrayOfChar, 0, i);
      }
      ap.a(paramHttpResponse);
      return new JSONObject(localCharArrayBuffer.toString());
    }
  }
  
  HttpResponse a(URI paramURI, String paramString, List<Header> paramList)
  {
    paramURI = new HttpPost(b(paramURI.toString()));
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramURI.addHeader((Header)paramList.next());
      }
    }
    paramURI.addHeader(a);
    paramURI.addHeader(b);
    paramList = c(paramString);
    if (l.a()) {
      l.c("CmsHelper", paramList);
    }
    paramURI.setEntity(new ByteArrayEntity(ap.b(paramList)));
    if (l.a()) {
      l.c("CmsHelper", "request uri:" + paramURI.getURI() + ",body:" + paramString + ",headers:" + Arrays.asList(paramURI.getAllHeaders()));
    }
    paramURI.getParams().setParameter("http.socket.timeout", Integer.valueOf(20000));
    paramString = aj.a();
    try
    {
      paramString = paramString.execute(paramURI);
      return paramString;
    }
    catch (Exception paramString)
    {
      paramURI.abort();
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.coin.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */