package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Pair;
import java.nio.ByteBuffer;

public class dl
  extends kt
{
  private static final String e = dl.class.getSimpleName();
  private final kk<df> f = new kk("sdk log request", new dn());
  private final kk<dg> g = new kk("sdk log response", new do());
  
  public dl()
  {
    this(null);
  }
  
  public dl(kt.a parama)
  {
    super("Ads", dl.class.getSimpleName());
    d = "AdData_";
    a(parama);
  }
  
  protected Pair<String, byte[]> a(byte[] paramArrayOfByte)
  {
    int j = 0;
    byte[] arrayOfByte2 = new byte[4];
    byte[] arrayOfByte1 = new byte[paramArrayOfByte.length - 4];
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      if (i < 4) {
        arrayOfByte2[i] = paramArrayOfByte[i];
      }
      for (;;)
      {
        i += 1;
        break;
        arrayOfByte1[(i - 4)] = paramArrayOfByte[i];
      }
    }
    int k = ByteBuffer.wrap(arrayOfByte2).getInt();
    paramArrayOfByte = new byte[k];
    arrayOfByte2 = new byte[arrayOfByte1.length - k];
    i = j;
    if (i < arrayOfByte1.length)
    {
      if (i < k) {
        paramArrayOfByte[i] = arrayOfByte1[i];
      }
      for (;;)
      {
        i += 1;
        break;
        arrayOfByte2[(i - k)] = arrayOfByte1[i];
      }
    }
    return new Pair(new String(paramArrayOfByte), arrayOfByte2);
  }
  
  public void a(df paramdf, String paramString1, String paramString2, String paramString3)
  {
    if ((paramdf == null) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString3))) {
      kg.a(6, a, "Ad log that has to be sent is EMPTY or NULL");
    }
    for (;;)
    {
      return;
      try
      {
        paramdf = f.a(paramdf);
        if (paramdf == null) {
          continue;
        }
        b(a(paramdf, paramString1), paramString2, paramString3);
        return;
      }
      catch (Exception paramdf)
      {
        for (;;)
        {
          kg.a(5, a, "Failed to encode sdk log request: " + paramdf);
          paramdf = null;
        }
      }
    }
  }
  
  protected void a(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    try
    {
      Object localObject = a(paramArrayOfByte);
      paramArrayOfByte = (String)first;
      localObject = (byte[])second;
      kg.a(4, a, "FlurryAdLogsManager: start upload data with id = " + paramString1 + " to " + paramArrayOfByte);
      kn localkn = new kn();
      localkn.a(paramArrayOfByte);
      localkn.d(100000);
      localkn.a(kp.a.c);
      localkn.a("Content-Type", "application/x-flurry");
      localkn.a("Accept", "application/x-flurry");
      localkn.a("FM-Checksum", Integer.toString(kk.c((byte[])localObject)));
      localkn.a(new kx());
      localkn.b(new kx());
      localkn.a(localObject);
      localkn.a(new dl.1(this, paramString1, paramString2));
      jq.a().a(this, localkn);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      kg.a(6, a, "Internal ERROR! Report is corrupt!");
      c(paramString1, paramString2);
    }
  }
  
  protected byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    paramString = paramString.getBytes();
    int i = paramString.length;
    byte[] arrayOfByte1 = ByteBuffer.allocate(4).putInt(i).array();
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length + paramString.length + paramArrayOfByte.length];
    i = 0;
    if (i < arrayOfByte2.length)
    {
      if (i < arrayOfByte1.length) {
        arrayOfByte2[i] = arrayOfByte1[i];
      }
      for (;;)
      {
        i += 1;
        break;
        if ((i >= arrayOfByte1.length) && (i < paramString.length + arrayOfByte1.length)) {
          arrayOfByte2[i] = paramString[(i - 4)];
        } else {
          arrayOfByte2[i] = paramArrayOfByte[(i - 4 - paramString.length)];
        }
      }
    }
    return arrayOfByte2;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */