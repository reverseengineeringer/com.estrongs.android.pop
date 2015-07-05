package jcifs;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;
import jcifs.netbios.Lmhosts;
import jcifs.netbios.NbtAddress;
import jcifs.util.LogStream;

public class UniAddress
{
  private static final int RESOLVER_BCAST = 1;
  private static final int RESOLVER_DNS = 2;
  private static final int RESOLVER_LMHOSTS = 3;
  private static final int RESOLVER_WINS = 0;
  private static InetAddress baddr;
  private static LogStream log = ;
  private static int[] resolveOrder;
  Object addr;
  String calledName;
  
  static
  {
    Object localObject1 = Config.getProperty("jcifs.resolveOrder");
    InetAddress localInetAddress = NbtAddress.getWINSAddress();
    try
    {
      baddr = Config.getInetAddress("jcifs.netbios.baddr", InetAddress.getByName("255.255.255.255"));
      if ((localObject1 == null) || (((String)localObject1).length() == 0))
      {
        if (localInetAddress == null)
        {
          resolveOrder = new int[3];
          resolveOrder[0] = 3;
          resolveOrder[1] = 2;
          resolveOrder[2] = 1;
          return;
        }
        resolveOrder = new int[4];
        resolveOrder[0] = 3;
        resolveOrder[1] = 0;
        resolveOrder[2] = 2;
        resolveOrder[3] = 1;
        return;
      }
      int[] arrayOfInt = new int[4];
      localObject1 = new StringTokenizer((String)localObject1, ",");
      int i = 0;
      while (((StringTokenizer)localObject1).hasMoreTokens())
      {
        Object localObject2 = ((StringTokenizer)localObject1).nextToken().trim();
        if (((String)localObject2).equalsIgnoreCase("LMHOSTS"))
        {
          arrayOfInt[i] = 3;
          i += 1;
        }
        else if (((String)localObject2).equalsIgnoreCase("WINS"))
        {
          if (localInetAddress == null)
          {
            localObject2 = log;
            if (LogStream.level > 1) {
              log.println("UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
            }
          }
          else
          {
            arrayOfInt[i] = 0;
            i += 1;
          }
        }
        else if (((String)localObject2).equalsIgnoreCase("BCAST"))
        {
          arrayOfInt[i] = 1;
          i += 1;
        }
        else if (((String)localObject2).equalsIgnoreCase("DNS"))
        {
          arrayOfInt[i] = 2;
          i += 1;
        }
        else
        {
          LogStream localLogStream = log;
          if (LogStream.level > 1) {
            log.println("unknown resolver method: " + (String)localObject2);
          }
        }
      }
      resolveOrder = new int[i];
      System.arraycopy(arrayOfInt, 0, resolveOrder, 0, i);
      return;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      for (;;) {}
    }
  }
  
  public UniAddress(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException();
    }
    addr = paramObject;
  }
  
  public static UniAddress[] getAllByName(String paramString, boolean paramBoolean)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      throw new UnknownHostException();
    }
    if (isDotQuadIP(paramString)) {
      return new UniAddress[] { new UniAddress(NbtAddress.getByName(paramString)) };
    }
    int i = 0;
    for (;;)
    {
      if (i < resolveOrder.length) {}
      try
      {
        switch (resolveOrder[i])
        {
        }
        for (;;)
        {
          throw new UnknownHostException(paramString);
          Object localObject = Lmhosts.getByName(paramString);
          if (localObject == null) {
            break;
          }
          for (;;)
          {
            return new UniAddress[] { new UniAddress(localObject) };
            if ((paramString == "\001\002__MSBROWSE__\002") || (paramString.length() > 15)) {
              break;
            }
            if (paramBoolean)
            {
              localObject = lookupServerOrWorkgroup(paramString, NbtAddress.getWINSAddress());
            }
            else
            {
              localObject = NbtAddress.getByName(paramString, 32, null, NbtAddress.getWINSAddress());
              continue;
              if (paramString.length() > 15) {
                break;
              }
              if (paramBoolean) {
                localObject = lookupServerOrWorkgroup(paramString, baddr);
              } else {
                localObject = NbtAddress.getByName(paramString, 32, null, baddr);
              }
            }
          }
          if (isAllDigits(paramString)) {
            throw new UnknownHostException(paramString);
          }
          localObject = InetAddress.getAllByName(paramString);
          UniAddress[] arrayOfUniAddress = new UniAddress[localObject.length];
          int j = 0;
          while (j < localObject.length)
          {
            arrayOfUniAddress[j] = new UniAddress(localObject[j]);
            j += 1;
          }
          return arrayOfUniAddress;
          throw new UnknownHostException(paramString);
        }
      }
      catch (IOException localIOException)
      {
        i += 1;
      }
    }
  }
  
  public static UniAddress getByName(String paramString)
  {
    return getByName(paramString, false);
  }
  
  public static UniAddress getByName(String paramString, boolean paramBoolean)
  {
    return getAllByName(paramString, paramBoolean)[0];
  }
  
  static boolean isAllDigits(String paramString)
  {
    int i = 0;
    while (i < paramString.length())
    {
      if (!Character.isDigit(paramString.charAt(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  static boolean isDotQuadIP(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int m;
    int j;
    int i;
    if (Character.isDigit(paramString.charAt(0)))
    {
      m = paramString.length();
      paramString = paramString.toCharArray();
      j = 0;
      i = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      int k;
      if (i < m)
      {
        k = i + 1;
        bool1 = bool2;
        if (Character.isDigit(paramString[i]))
        {
          if ((k != m) || (j != 3)) {
            break label77;
          }
          bool1 = true;
        }
      }
      return bool1;
      label77:
      if ((k < m) && (paramString[k] == '.'))
      {
        j += 1;
        i = k + 1;
      }
      else
      {
        i = k;
      }
    }
  }
  
  /* Error */
  static NbtAddress lookupServerOrWorkgroup(String paramString, InetAddress paramInetAddress)
  {
    // Byte code:
    //   0: new 197	jcifs/UniAddress$Sem
    //   3: dup
    //   4: iconst_2
    //   5: invokespecial 200	jcifs/UniAddress$Sem:<init>	(I)V
    //   8: astore_3
    //   9: aload_1
    //   10: invokestatic 204	jcifs/netbios/NbtAddress:isWINS	(Ljava/net/InetAddress;)Z
    //   13: ifeq +100 -> 113
    //   16: bipush 27
    //   18: istore_2
    //   19: new 206	jcifs/UniAddress$QueryThread
    //   22: dup
    //   23: aload_3
    //   24: aload_0
    //   25: iload_2
    //   26: aconst_null
    //   27: aload_1
    //   28: invokespecial 209	jcifs/UniAddress$QueryThread:<init>	(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V
    //   31: astore 4
    //   33: new 206	jcifs/UniAddress$QueryThread
    //   36: dup
    //   37: aload_3
    //   38: aload_0
    //   39: bipush 32
    //   41: aconst_null
    //   42: aload_1
    //   43: invokespecial 209	jcifs/UniAddress$QueryThread:<init>	(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V
    //   46: astore_1
    //   47: aload 4
    //   49: iconst_1
    //   50: invokevirtual 213	jcifs/UniAddress$QueryThread:setDaemon	(Z)V
    //   53: aload_1
    //   54: iconst_1
    //   55: invokevirtual 213	jcifs/UniAddress$QueryThread:setDaemon	(Z)V
    //   58: aload_3
    //   59: monitorenter
    //   60: aload 4
    //   62: invokevirtual 216	jcifs/UniAddress$QueryThread:start	()V
    //   65: aload_1
    //   66: invokevirtual 216	jcifs/UniAddress$QueryThread:start	()V
    //   69: aload_3
    //   70: getfield 219	jcifs/UniAddress$Sem:count	I
    //   73: ifle +46 -> 119
    //   76: aload 4
    //   78: getfield 223	jcifs/UniAddress$QueryThread:ans	Ljcifs/netbios/NbtAddress;
    //   81: ifnonnull +38 -> 119
    //   84: aload_1
    //   85: getfield 223	jcifs/UniAddress$QueryThread:ans	Ljcifs/netbios/NbtAddress;
    //   88: ifnonnull +31 -> 119
    //   91: aload_3
    //   92: invokevirtual 226	java/lang/Object:wait	()V
    //   95: goto -26 -> 69
    //   98: astore_1
    //   99: aload_3
    //   100: monitorexit
    //   101: aload_1
    //   102: athrow
    //   103: astore_1
    //   104: new 27	java/net/UnknownHostException
    //   107: dup
    //   108: aload_0
    //   109: invokespecial 155	java/net/UnknownHostException:<init>	(Ljava/lang/String;)V
    //   112: athrow
    //   113: bipush 29
    //   115: istore_2
    //   116: goto -97 -> 19
    //   119: aload_3
    //   120: monitorexit
    //   121: aload 4
    //   123: getfield 223	jcifs/UniAddress$QueryThread:ans	Ljcifs/netbios/NbtAddress;
    //   126: ifnull +9 -> 135
    //   129: aload 4
    //   131: getfield 223	jcifs/UniAddress$QueryThread:ans	Ljcifs/netbios/NbtAddress;
    //   134: areturn
    //   135: aload_1
    //   136: getfield 223	jcifs/UniAddress$QueryThread:ans	Ljcifs/netbios/NbtAddress;
    //   139: ifnull +8 -> 147
    //   142: aload_1
    //   143: getfield 223	jcifs/UniAddress$QueryThread:ans	Ljcifs/netbios/NbtAddress;
    //   146: areturn
    //   147: aload 4
    //   149: getfield 230	jcifs/UniAddress$QueryThread:uhe	Ljava/net/UnknownHostException;
    //   152: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	153	0	paramString	String
    //   0	153	1	paramInetAddress	InetAddress
    //   18	98	2	i	int
    //   8	112	3	localSem	UniAddress.Sem
    //   31	117	4	localQueryThread	UniAddress.QueryThread
    // Exception table:
    //   from	to	target	type
    //   60	69	98	finally
    //   69	95	98	finally
    //   99	101	98	finally
    //   119	121	98	finally
    //   58	60	103	java/lang/InterruptedException
    //   101	103	103	java/lang/InterruptedException
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof UniAddress)) && (addr.equals(addr));
  }
  
  public String firstCalledName()
  {
    if ((addr instanceof NbtAddress)) {
      return ((NbtAddress)addr).firstCalledName();
    }
    calledName = ((InetAddress)addr).getHostName();
    if (isDotQuadIP(calledName)) {
      calledName = "*SMBSERVER     ";
    }
    for (;;)
    {
      return calledName;
      int i = calledName.indexOf('.');
      if ((i > 1) && (i < 15)) {
        calledName = calledName.substring(0, i).toUpperCase();
      } else if (calledName.length() > 15) {
        calledName = "*SMBSERVER     ";
      } else {
        calledName = calledName.toUpperCase();
      }
    }
  }
  
  public Object getAddress()
  {
    return addr;
  }
  
  public String getHostAddress()
  {
    if ((addr instanceof NbtAddress)) {
      return ((NbtAddress)addr).getHostAddress();
    }
    return ((InetAddress)addr).getHostAddress();
  }
  
  public String getHostName()
  {
    if ((addr instanceof NbtAddress)) {
      return ((NbtAddress)addr).getHostName();
    }
    return ((InetAddress)addr).getHostName();
  }
  
  public int hashCode()
  {
    return addr.hashCode();
  }
  
  public String nextCalledName()
  {
    if ((addr instanceof NbtAddress)) {
      return ((NbtAddress)addr).nextCalledName();
    }
    if (calledName != "*SMBSERVER     ")
    {
      calledName = "*SMBSERVER     ";
      return calledName;
    }
    return null;
  }
  
  public String toString()
  {
    return addr.toString();
  }
}

/* Location:
 * Qualified Name:     jcifs.UniAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */