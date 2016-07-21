package com.dianxinos.dxservice.stat;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import dianxinos.dxstat.org.apache.commons.codec.a.a;
import java.io.File;
import java.security.Key;
import javax.crypto.KeyGenerator;

public final class u
{
  private static long a = 10485760L;
  private static Double b = null;
  private static String c;
  private static byte[] d;
  @Deprecated
  private static final String e = null;
  
  static
  {
    try
    {
      if (d == null)
      {
        KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
        localKeyGenerator.init(128);
        d = localKeyGenerator.generateKey().getEncoded();
        c = new String(a.a(d));
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("stat.EventConfig", "Failed to generate the aes key.");
    }
  }
  
  public static String a()
  {
    return c;
  }
  
  public static String a(Context paramContext)
  {
    return "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiiByw0W40uhK+khvIEneisE1pPtvId6ewOeFm4ohO0UVmcnB6RCJz7/J+xk4jlEfqJyfXm5BcRyxdERcbK4uzmDOwSgd4XaV2X+A4iN2EgJ5PdY6kZuWzJ0L2/gyFgbIs+0FWUOc449VoLojPcH/CNmwZultVSU2oBx0+GS7e8QIDAQAB";
  }
  
  public static long b(Context paramContext)
  {
    if ((b == null) || (!b.equals(Double.valueOf(0.1D))))
    {
      paramContext = new StatFs(Environment.getDataDirectory().getPath());
      long l1 = paramContext.getBlockSize();
      long l2 = paramContext.getAvailableBlocks();
      a = Math.min(10485760L, (0.1D * (l2 * l1)));
      a = Math.max(a, 1048576L);
      a = Math.min(a, (l2 * l1 * 0.5D));
    }
    return a;
  }
  
  public static byte[] b()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */