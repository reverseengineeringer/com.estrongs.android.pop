package jcifs.netbios;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import jcifs.Config;
import jcifs.util.Hexdump;

public final class NbtAddress
{
  private static final HashMap ADDRESS_CACHE;
  static final String ANY_HOSTS_NAME = "*\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000";
  public static final int B_NODE = 0;
  private static final int CACHE_POLICY;
  private static final NameServiceClient CLIENT;
  private static final int DEFAULT_CACHE_POLICY = 30;
  private static final int FOREVER = -1;
  public static final int H_NODE = 3;
  private static final HashMap LOOKUP_TABLE;
  public static final String MASTER_BROWSER_NAME = "\001\002__MSBROWSE__\002";
  public static final int M_NODE = 2;
  static final InetAddress[] NBNS = Config.getInetAddressArray("jcifs.netbios.wins", ",", new InetAddress[0]);
  public static final int P_NODE = 1;
  public static final String SMBSERVER_NAME = "*SMBSERVER     ";
  static final NbtAddress UNKNOWN_ADDRESS;
  static final byte[] UNKNOWN_MAC_ADDRESS;
  static final Name UNKNOWN_NAME;
  static NbtAddress localhost;
  private static int nbnsIndex;
  int address;
  String calledName;
  boolean groupName;
  Name hostName;
  boolean isActive;
  boolean isBeingDeleted;
  boolean isDataFromNodeStatus;
  boolean isInConflict;
  boolean isPermanent;
  byte[] macAddress;
  int nodeType;
  
  static
  {
    CLIENT = new NameServiceClient();
    CACHE_POLICY = Config.getInt("jcifs.netbios.cachePolicy", 30);
    nbnsIndex = 0;
    ADDRESS_CACHE = new HashMap();
    LOOKUP_TABLE = new HashMap();
    UNKNOWN_NAME = new Name("0.0.0.0", 0, null);
    UNKNOWN_ADDRESS = new NbtAddress(UNKNOWN_NAME, 0, false, 0);
    UNKNOWN_MAC_ADDRESS = new byte[] { 0, 0, 0, 0, 0, 0 };
    ADDRESS_CACHE.put(UNKNOWN_NAME, new NbtAddress.CacheEntry(UNKNOWN_NAME, UNKNOWN_ADDRESS, -1L));
    Object localObject1 = CLIENTladdr;
    if (localObject1 == null) {}
    for (;;)
    {
      try
      {
        localObject2 = InetAddress.getLocalHost();
        localObject1 = localObject2;
      }
      catch (UnknownHostException localUnknownHostException1)
      {
        try
        {
          Object localObject2;
          String str;
          InetAddress localInetAddress = InetAddress.getByName("127.0.0.1");
          localObject1 = localInetAddress;
        }
        catch (UnknownHostException localUnknownHostException2) {}
        continue;
      }
      str = Config.getProperty("jcifs.netbios.hostname", null);
      if (str != null)
      {
        localObject2 = str;
        if (str.length() != 0) {}
      }
      else
      {
        localObject2 = ((InetAddress)localObject1).getAddress();
        localObject2 = "JCIFS" + (localObject2[2] & 0xFF) + "_" + (localObject2[3] & 0xFF) + "_" + Hexdump.toHexString((int)(Math.random() * 255.0D), 2);
      }
      localObject2 = new Name((String)localObject2, 0, Config.getProperty("jcifs.netbios.scope", null));
      localhost = new NbtAddress((Name)localObject2, ((InetAddress)localObject1).hashCode(), false, 0, false, false, true, false, UNKNOWN_MAC_ADDRESS);
      cacheAddress((Name)localObject2, localhost, -1L);
      return;
    }
  }
  
  NbtAddress(Name paramName, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    hostName = paramName;
    address = paramInt1;
    groupName = paramBoolean;
    nodeType = paramInt2;
  }
  
  NbtAddress(Name paramName, int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, byte[] paramArrayOfByte)
  {
    hostName = paramName;
    address = paramInt1;
    groupName = paramBoolean1;
    nodeType = paramInt2;
    isBeingDeleted = paramBoolean2;
    isInConflict = paramBoolean3;
    isActive = paramBoolean4;
    isPermanent = paramBoolean5;
    macAddress = paramArrayOfByte;
    isDataFromNodeStatus = true;
  }
  
  static void cacheAddress(Name paramName, NbtAddress paramNbtAddress)
  {
    if (CACHE_POLICY == 0) {
      return;
    }
    long l = -1L;
    if (CACHE_POLICY != -1) {
      l = System.currentTimeMillis() + CACHE_POLICY * 1000;
    }
    cacheAddress(paramName, paramNbtAddress, l);
  }
  
  static void cacheAddress(Name paramName, NbtAddress paramNbtAddress, long paramLong)
  {
    if (CACHE_POLICY == 0) {
      return;
    }
    for (;;)
    {
      NbtAddress.CacheEntry localCacheEntry;
      synchronized (ADDRESS_CACHE)
      {
        localCacheEntry = (NbtAddress.CacheEntry)ADDRESS_CACHE.get(paramName);
        if (localCacheEntry == null)
        {
          paramNbtAddress = new NbtAddress.CacheEntry(paramName, paramNbtAddress, paramLong);
          ADDRESS_CACHE.put(paramName, paramNbtAddress);
          return;
        }
      }
      address = paramNbtAddress;
      expiration = paramLong;
    }
  }
  
  static void cacheAddressArray(NbtAddress[] paramArrayOfNbtAddress)
  {
    if (CACHE_POLICY == 0) {
      return;
    }
    long l;
    HashMap localHashMap;
    int i;
    if (CACHE_POLICY != -1)
    {
      l = System.currentTimeMillis() + CACHE_POLICY * 1000;
      localHashMap = ADDRESS_CACHE;
      i = 0;
    }
    for (;;)
    {
      try
      {
        if (i < paramArrayOfNbtAddress.length)
        {
          NbtAddress.CacheEntry localCacheEntry = (NbtAddress.CacheEntry)ADDRESS_CACHE.get(hostName);
          if (localCacheEntry == null)
          {
            localCacheEntry = new NbtAddress.CacheEntry(hostName, paramArrayOfNbtAddress[i], l);
            ADDRESS_CACHE.put(hostName, localCacheEntry);
          }
          else
          {
            address = paramArrayOfNbtAddress[i];
            expiration = l;
          }
        }
      }
      finally {}
      return;
      l = -1L;
      break;
      i += 1;
    }
  }
  
  private static Object checkLookupTable(Name paramName)
  {
    NbtAddress localNbtAddress;
    synchronized (LOOKUP_TABLE)
    {
      if (!LOOKUP_TABLE.containsKey(paramName))
      {
        LOOKUP_TABLE.put(paramName, paramName);
        return null;
      }
      for (;;)
      {
        boolean bool = LOOKUP_TABLE.containsKey(paramName);
        if (!bool) {
          break;
        }
        try
        {
          LOOKUP_TABLE.wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      localNbtAddress = getCachedAddress(paramName);
      if (localNbtAddress == null) {
        synchronized (LOOKUP_TABLE)
        {
          LOOKUP_TABLE.put(paramName, paramName);
          return localNbtAddress;
        }
      }
    }
    return localNbtAddress;
  }
  
  static NbtAddress doNameQuery(Name paramName, InetAddress paramInetAddress)
  {
    InetAddress localInetAddress = paramInetAddress;
    if (hexCode == 29)
    {
      localInetAddress = paramInetAddress;
      if (paramInetAddress == null) {
        localInetAddress = CLIENTbaddr;
      }
    }
    if (localInetAddress != null) {}
    NbtAddress localNbtAddress;
    for (int i = localInetAddress.hashCode();; i = 0)
    {
      srcHashCode = i;
      localNbtAddress = getCachedAddress(paramName);
      paramInetAddress = localNbtAddress;
      if (localNbtAddress == null)
      {
        localNbtAddress = (NbtAddress)checkLookupTable(paramName);
        paramInetAddress = localNbtAddress;
        if (localNbtAddress != null) {}
      }
      try
      {
        paramInetAddress = CLIENT.getByName(paramName, localInetAddress);
      }
      catch (UnknownHostException paramInetAddress)
      {
        for (;;)
        {
          paramInetAddress = UNKNOWN_ADDRESS;
          cacheAddress(paramName, paramInetAddress);
          updateLookupTable(paramName);
        }
      }
      finally
      {
        cacheAddress(paramName, localNbtAddress);
        updateLookupTable(paramName);
      }
      if (paramInetAddress != UNKNOWN_ADDRESS) {
        break;
      }
      throw new UnknownHostException(paramName.toString());
    }
    return paramInetAddress;
  }
  
  public static NbtAddress[] getAllByAddress(String paramString)
  {
    return getAllByAddress(getByName(paramString, 0, null));
  }
  
  public static NbtAddress[] getAllByAddress(String paramString1, int paramInt, String paramString2)
  {
    return getAllByAddress(getByName(paramString1, paramInt, paramString2));
  }
  
  public static NbtAddress[] getAllByAddress(NbtAddress paramNbtAddress)
  {
    StringBuilder localStringBuilder;
    try
    {
      NbtAddress[] arrayOfNbtAddress = CLIENT.getNodeStatus(paramNbtAddress);
      cacheAddressArray(arrayOfNbtAddress);
      return arrayOfNbtAddress;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      localStringBuilder = new StringBuilder().append("no name with type 0x").append(Hexdump.toHexString(hostName.hexCode, 2));
      if (hostName.scope == null) {
        break label66;
      }
    }
    if (hostName.scope.length() == 0) {}
    label66:
    for (String str = " with no scope";; str = " with scope " + hostName.scope) {
      throw new UnknownHostException(str + " for host " + paramNbtAddress.getHostAddress());
    }
  }
  
  public static NbtAddress[] getAllByName(String paramString1, int paramInt, String paramString2, InetAddress paramInetAddress)
  {
    return CLIENT.getAllByName(new Name(paramString1, paramInt, paramString2), paramInetAddress);
  }
  
  public static NbtAddress getByName(String paramString)
  {
    return getByName(paramString, 0, null);
  }
  
  public static NbtAddress getByName(String paramString1, int paramInt, String paramString2)
  {
    return getByName(paramString1, paramInt, paramString2, null);
  }
  
  public static NbtAddress getByName(String paramString1, int paramInt, String paramString2, InetAddress paramInetAddress)
  {
    if ((paramString1 == null) || (paramString1.length() == 0)) {
      return getLocalHost();
    }
    if (!Character.isDigit(paramString1.charAt(0))) {
      return doNameQuery(new Name(paramString1, paramInt, paramString2), paramInetAddress);
    }
    char[] arrayOfChar = paramString1.toCharArray();
    int i = 0;
    int k = 0;
    int m = 0;
    while (i < arrayOfChar.length)
    {
      int i1 = arrayOfChar[i];
      if ((i1 < 48) || (i1 > 57)) {
        return doNameQuery(new Name(paramString1, paramInt, paramString2), paramInetAddress);
      }
      int j = 0;
      int i2;
      int n;
      for (;;)
      {
        i2 = j;
        n = i;
        if (i1 != 46)
        {
          if ((i1 < 48) || (i1 > 57)) {
            return doNameQuery(new Name(paramString1, paramInt, paramString2), paramInetAddress);
          }
          j = j * 10 + i1 - 48;
          i += 1;
          if (i >= arrayOfChar.length)
          {
            n = i;
            i2 = j;
          }
        }
        else
        {
          if (i2 <= 255) {
            break;
          }
          return doNameQuery(new Name(paramString1, paramInt, paramString2), paramInetAddress);
        }
        i1 = arrayOfChar[i];
      }
      m = (m << 8) + i2;
      k += 1;
      i = n + 1;
    }
    if ((k != 4) || (paramString1.endsWith("."))) {
      return doNameQuery(new Name(paramString1, paramInt, paramString2), paramInetAddress);
    }
    return new NbtAddress(UNKNOWN_NAME, m, false, 0);
  }
  
  static NbtAddress getCachedAddress(Name paramName)
  {
    if (CACHE_POLICY == 0) {
      return null;
    }
    for (;;)
    {
      synchronized (ADDRESS_CACHE)
      {
        NbtAddress.CacheEntry localCacheEntry = (NbtAddress.CacheEntry)ADDRESS_CACHE.get(paramName);
        paramName = localCacheEntry;
        if (localCacheEntry != null)
        {
          paramName = localCacheEntry;
          if (expiration < System.currentTimeMillis())
          {
            paramName = localCacheEntry;
            if (expiration >= 0L) {
              paramName = null;
            }
          }
        }
        if (paramName != null)
        {
          paramName = address;
          return paramName;
        }
      }
      paramName = null;
    }
  }
  
  public static NbtAddress getLocalHost()
  {
    return localhost;
  }
  
  public static Name getLocalName()
  {
    return localhosthostName;
  }
  
  public static InetAddress getWINSAddress()
  {
    if (NBNS.length == 0) {
      return null;
    }
    return NBNS[nbnsIndex];
  }
  
  public static boolean isWINS(InetAddress paramInetAddress)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (paramInetAddress != null)
      {
        bool1 = bool2;
        if (i < NBNS.length)
        {
          if (paramInetAddress.hashCode() != NBNS[i].hashCode()) {
            break label39;
          }
          bool1 = true;
        }
      }
      return bool1;
      label39:
      i += 1;
    }
  }
  
  static InetAddress switchWINS()
  {
    if (nbnsIndex + 1 < NBNS.length) {}
    for (int i = nbnsIndex + 1;; i = 0)
    {
      nbnsIndex = i;
      if (NBNS.length != 0) {
        break;
      }
      return null;
    }
    return NBNS[nbnsIndex];
  }
  
  private static void updateLookupTable(Name paramName)
  {
    synchronized (LOOKUP_TABLE)
    {
      LOOKUP_TABLE.remove(paramName);
      LOOKUP_TABLE.notifyAll();
      return;
    }
  }
  
  void checkData()
  {
    if (hostName == UNKNOWN_NAME) {
      getAllByAddress(this);
    }
  }
  
  void checkNodeStatusData()
  {
    if (!isDataFromNodeStatus) {
      getAllByAddress(this);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    return (paramObject != null) && ((paramObject instanceof NbtAddress)) && (address == address);
  }
  
  public String firstCalledName()
  {
    int j = 0;
    calledName = hostName.name;
    int m;
    char[] arrayOfChar;
    int i;
    if (Character.isDigit(calledName.charAt(0)))
    {
      m = calledName.length();
      arrayOfChar = calledName.toCharArray();
      i = 0;
    }
    for (;;)
    {
      int k;
      if (i < m)
      {
        k = i + 1;
        if (Character.isDigit(arrayOfChar[i]))
        {
          if ((k != m) || (j != 3)) {
            break label89;
          }
          calledName = "*SMBSERVER     ";
        }
      }
      for (;;)
      {
        return calledName;
        label89:
        if ((k >= m) || (arrayOfChar[k] != '.')) {
          break label160;
        }
        j += 1;
        i = k + 1;
        break;
        switch (hostName.hexCode)
        {
        default: 
          break;
        case 27: 
        case 28: 
        case 29: 
          calledName = "*SMBSERVER     ";
        }
      }
      label160:
      i = k;
    }
  }
  
  public byte[] getAddress()
  {
    return new byte[] { (byte)(address >>> 24 & 0xFF), (byte)(address >>> 16 & 0xFF), (byte)(address >>> 8 & 0xFF), (byte)(address & 0xFF) };
  }
  
  public String getHostAddress()
  {
    return (address >>> 24 & 0xFF) + "." + (address >>> 16 & 0xFF) + "." + (address >>> 8 & 0xFF) + "." + (address >>> 0 & 0xFF);
  }
  
  public String getHostName()
  {
    if (hostName == UNKNOWN_NAME) {
      return getHostAddress();
    }
    return hostName.name;
  }
  
  public InetAddress getInetAddress()
  {
    return InetAddress.getByName(getHostAddress());
  }
  
  public byte[] getMacAddress()
  {
    checkNodeStatusData();
    return macAddress;
  }
  
  public int getNameType()
  {
    return hostName.hexCode;
  }
  
  public int getNodeType()
  {
    checkData();
    return nodeType;
  }
  
  public int hashCode()
  {
    return address;
  }
  
  public boolean isActive()
  {
    checkNodeStatusData();
    return isActive;
  }
  
  public boolean isBeingDeleted()
  {
    checkNodeStatusData();
    return isBeingDeleted;
  }
  
  public boolean isGroupAddress()
  {
    checkData();
    return groupName;
  }
  
  public boolean isInConflict()
  {
    checkNodeStatusData();
    return isInConflict;
  }
  
  public boolean isPermanent()
  {
    checkNodeStatusData();
    return isPermanent;
  }
  
  public String nextCalledName()
  {
    Object localObject2 = null;
    Object localObject1;
    if (calledName == hostName.name)
    {
      calledName = "*SMBSERVER     ";
      localObject1 = calledName;
      label27:
      return (String)localObject1;
    }
    if (calledName == "*SMBSERVER     ") {}
    for (;;)
    {
      int i;
      try
      {
        NbtAddress[] arrayOfNbtAddress = CLIENT.getNodeStatus(this);
        if (hostName.hexCode == 29)
        {
          i = 0;
          localObject1 = localObject2;
          if (i >= arrayOfNbtAddress.length) {
            break label27;
          }
          if (hostName.hexCode != 32) {
            break label135;
          }
          return hostName.name;
        }
        if (!isDataFromNodeStatus) {
          break;
        }
        calledName = null;
        localObject1 = hostName.name;
        return (String)localObject1;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        calledName = null;
      }
      break;
      calledName = null;
      break;
      label135:
      i += 1;
    }
  }
  
  public String toString()
  {
    return hostName.toString() + "/" + getHostAddress();
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NbtAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */