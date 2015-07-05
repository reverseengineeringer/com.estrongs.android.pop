package jcifs.smb;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.util.LogStream;

public class Dfs
{
  static final boolean DISABLED = Config.getBoolean("jcifs.smb.client.dfs.disabled", false);
  protected static Dfs.CacheEntry FALSE_ENTRY = new Dfs.CacheEntry(0L);
  static final long TTL;
  static LogStream log = ;
  static final boolean strictView = Config.getBoolean("jcifs.smb.client.dfs.strictView", false);
  protected Dfs.CacheEntry _domains = null;
  protected Dfs.CacheEntry referrals = null;
  
  static
  {
    TTL = Config.getLong("jcifs.smb.client.dfs.ttl", 300L);
  }
  
  public SmbTransport getDc(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    if (DISABLED) {
      return null;
    }
    try
    {
      paramNtlmPasswordAuthentication = SmbTransport.getSmbTransport(UniAddress.getByName(paramString, true), 0).getDfsReferrals(paramNtlmPasswordAuthentication, "\\" + paramString, 1);
      if (paramNtlmPasswordAuthentication != null)
      {
        paramString = paramNtlmPasswordAuthentication;
        Object localObject;
        do
        {
          try
          {
            localObject = SmbTransport.getSmbTransport(UniAddress.getByName(server), 0);
            return (SmbTransport)localObject;
          }
          catch (IOException localIOException)
          {
            localObject = next;
            paramString = (String)localObject;
          }
        } while (localObject != paramNtlmPasswordAuthentication);
        throw localIOException;
      }
    }
    catch (IOException paramString)
    {
      paramNtlmPasswordAuthentication = log;
      if (LogStream.level >= 3) {
        paramString.printStackTrace(log);
      }
      if ((strictView) && ((paramString instanceof SmbAuthException))) {
        throw ((SmbAuthException)paramString);
      }
    }
    return null;
  }
  
  public DfsReferral getReferral(SmbTransport paramSmbTransport, String paramString1, String paramString2, String paramString3, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    if (DISABLED) {
      paramSmbTransport = null;
    }
    for (;;)
    {
      return paramSmbTransport;
      try
      {
        paramString2 = "\\" + paramString1 + "\\" + paramString2;
        paramString1 = paramString2;
        if (paramString3 != null) {
          paramString1 = paramString2 + paramString3;
        }
        paramString1 = paramSmbTransport.getDfsReferrals(paramNtlmPasswordAuthentication, paramString1, 0);
        paramSmbTransport = paramString1;
        if (paramString1 != null) {}
      }
      catch (IOException paramSmbTransport)
      {
        do
        {
          paramString1 = log;
          if (LogStream.level >= 4) {
            paramSmbTransport.printStackTrace(log);
          }
        } while ((!strictView) || (!(paramSmbTransport instanceof SmbAuthException)));
        throw ((SmbAuthException)paramSmbTransport);
      }
    }
    return null;
  }
  
  public HashMap getTrustedDomains(NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    if ((DISABLED) || (domain == "?")) {
      return null;
    }
    if ((_domains != null) && (System.currentTimeMillis() > _domains.expiration)) {
      _domains = null;
    }
    if (_domains != null) {
      return _domains.map;
    }
    try
    {
      localObject1 = SmbTransport.getSmbTransport(UniAddress.getByName(domain, true), 0);
      Dfs.CacheEntry localCacheEntry = new Dfs.CacheEntry(TTL * 10L);
      localObject1 = ((SmbTransport)localObject1).getDfsReferrals(paramNtlmPasswordAuthentication, "", 0);
      if (localObject1 != null)
      {
        paramNtlmPasswordAuthentication = (NtlmPasswordAuthentication)localObject1;
        Object localObject2;
        do
        {
          localObject2 = server.toLowerCase();
          map.put(localObject2, new HashMap());
          localObject2 = next;
          paramNtlmPasswordAuthentication = (NtlmPasswordAuthentication)localObject2;
        } while (localObject2 != localObject1);
        _domains = localCacheEntry;
        paramNtlmPasswordAuthentication = _domains.map;
        return paramNtlmPasswordAuthentication;
      }
    }
    catch (IOException paramNtlmPasswordAuthentication)
    {
      Object localObject1 = log;
      if (LogStream.level >= 3) {
        paramNtlmPasswordAuthentication.printStackTrace(log);
      }
      if ((strictView) && ((paramNtlmPasswordAuthentication instanceof SmbAuthException))) {
        throw ((SmbAuthException)paramNtlmPasswordAuthentication);
      }
    }
    return null;
  }
  
  /* Error */
  void insert(String paramString, DfsReferral paramDfsReferral)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 49	jcifs/smb/Dfs:DISABLED	Z
    //   5: istore 5
    //   7: iload 5
    //   9: ifeq +6 -> 15
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: aload_1
    //   16: bipush 92
    //   18: iconst_1
    //   19: invokevirtual 166	java/lang/String:indexOf	(II)I
    //   22: istore_3
    //   23: aload_1
    //   24: bipush 92
    //   26: iload_3
    //   27: iconst_1
    //   28: iadd
    //   29: invokevirtual 166	java/lang/String:indexOf	(II)I
    //   32: istore 4
    //   34: aload_1
    //   35: iconst_1
    //   36: iload_3
    //   37: invokevirtual 170	java/lang/String:substring	(II)Ljava/lang/String;
    //   40: astore 7
    //   42: aload_1
    //   43: iload_3
    //   44: iconst_1
    //   45: iadd
    //   46: iload 4
    //   48: invokevirtual 170	java/lang/String:substring	(II)Ljava/lang/String;
    //   51: astore 8
    //   53: aload_1
    //   54: iconst_0
    //   55: aload_2
    //   56: getfield 173	jcifs/smb/DfsReferral:pathConsumed	I
    //   59: invokevirtual 170	java/lang/String:substring	(II)Ljava/lang/String;
    //   62: invokevirtual 153	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   65: astore 6
    //   67: aload 6
    //   69: invokevirtual 177	java/lang/String:length	()I
    //   72: istore_3
    //   73: iload_3
    //   74: iconst_1
    //   75: if_icmple +23 -> 98
    //   78: aload 6
    //   80: iload_3
    //   81: iconst_1
    //   82: isub
    //   83: invokevirtual 181	java/lang/String:charAt	(I)C
    //   86: bipush 92
    //   88: if_icmpne +10 -> 98
    //   91: iload_3
    //   92: iconst_1
    //   93: isub
    //   94: istore_3
    //   95: goto -22 -> 73
    //   98: aload 6
    //   100: astore_1
    //   101: iload_3
    //   102: aload 6
    //   104: invokevirtual 177	java/lang/String:length	()I
    //   107: if_icmpge +11 -> 118
    //   110: aload 6
    //   112: iconst_0
    //   113: iload_3
    //   114: invokevirtual 170	java/lang/String:substring	(II)Ljava/lang/String;
    //   117: astore_1
    //   118: aload_2
    //   119: aload_2
    //   120: getfield 173	jcifs/smb/DfsReferral:pathConsumed	I
    //   123: aload 7
    //   125: invokevirtual 177	java/lang/String:length	()I
    //   128: iconst_1
    //   129: iadd
    //   130: iconst_1
    //   131: iadd
    //   132: aload 8
    //   134: invokevirtual 177	java/lang/String:length	()I
    //   137: iadd
    //   138: isub
    //   139: putfield 173	jcifs/smb/DfsReferral:pathConsumed	I
    //   142: aload_0
    //   143: getfield 64	jcifs/smb/Dfs:referrals	Ljcifs/smb/Dfs$CacheEntry;
    //   146: ifnull +26 -> 172
    //   149: invokestatic 137	java/lang/System:currentTimeMillis	()J
    //   152: ldc2_w 182
    //   155: ladd
    //   156: aload_0
    //   157: getfield 64	jcifs/smb/Dfs:referrals	Ljcifs/smb/Dfs$CacheEntry;
    //   160: getfield 140	jcifs/smb/Dfs$CacheEntry:expiration	J
    //   163: lcmp
    //   164: ifle +8 -> 172
    //   167: aload_0
    //   168: aconst_null
    //   169: putfield 64	jcifs/smb/Dfs:referrals	Ljcifs/smb/Dfs$CacheEntry;
    //   172: aload_0
    //   173: getfield 64	jcifs/smb/Dfs:referrals	Ljcifs/smb/Dfs$CacheEntry;
    //   176: ifnonnull +15 -> 191
    //   179: aload_0
    //   180: new 51	jcifs/smb/Dfs$CacheEntry
    //   183: dup
    //   184: lconst_0
    //   185: invokespecial 55	jcifs/smb/Dfs$CacheEntry:<init>	(J)V
    //   188: putfield 64	jcifs/smb/Dfs:referrals	Ljcifs/smb/Dfs$CacheEntry;
    //   191: aload_0
    //   192: getfield 64	jcifs/smb/Dfs:referrals	Ljcifs/smb/Dfs$CacheEntry;
    //   195: getfield 144	jcifs/smb/Dfs$CacheEntry:map	Ljava/util/HashMap;
    //   198: aload_1
    //   199: aload_2
    //   200: invokevirtual 160	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   203: pop
    //   204: goto -192 -> 12
    //   207: astore_1
    //   208: aload_0
    //   209: monitorexit
    //   210: aload_1
    //   211: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	this	Dfs
    //   0	212	1	paramString	String
    //   0	212	2	paramDfsReferral	DfsReferral
    //   22	92	3	i	int
    //   32	15	4	j	int
    //   5	3	5	bool	boolean
    //   65	46	6	str1	String
    //   40	84	7	str2	String
    //   51	82	8	str3	String
    // Exception table:
    //   from	to	target	type
    //   2	7	207	finally
    //   15	73	207	finally
    //   78	91	207	finally
    //   101	118	207	finally
    //   118	172	207	finally
    //   172	191	207	finally
    //   191	204	207	finally
  }
  
  public boolean isTrustedDomain(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    paramNtlmPasswordAuthentication = getTrustedDomains(paramNtlmPasswordAuthentication);
    if (paramNtlmPasswordAuthentication == null) {}
    while (paramNtlmPasswordAuthentication.get(paramString.toLowerCase()) == null) {
      return false;
    }
    return true;
  }
  
  public DfsReferral resolve(String paramString1, String paramString2, String paramString3, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    long l;
    boolean bool;
    label32:
    Object localObject1;
    String str1;
    String str2;
    label109:
    SmbTransport localSmbTransport;
    int i;
    Object localObject2;
    label269:
    label388:
    label405:
    label478:
    do
    {
      do
      {
        try
        {
          l = System.currentTimeMillis();
          if (!DISABLED)
          {
            bool = paramString2.equals("IPC$");
            if (!bool) {
              break label32;
            }
          }
          HashMap localHashMap;
          for (paramString1 = null;; paramString1 = null)
          {
            return paramString1;
            localObject1 = getTrustedDomains(paramNtlmPasswordAuthentication);
            if (localObject1 == null) {
              break label789;
            }
            str1 = paramString1.toLowerCase();
            localHashMap = (HashMap)((HashMap)localObject1).get(str1);
            if (localHashMap == null) {
              break label777;
            }
            str2 = paramString2.toLowerCase();
            paramString1 = (Dfs.CacheEntry)localHashMap.get(str2);
            if ((paramString1 == null) || (l <= expiration)) {
              break label774;
            }
            localHashMap.remove(str2);
            paramString1 = null;
            if (paramString1 != null) {
              break label388;
            }
            localSmbTransport = getDc(str1, paramNtlmPasswordAuthentication);
            if (localSmbTransport != null) {
              break;
            }
          }
          paramString2 = getReferral(localSmbTransport, str1, str2, paramString3, paramNtlmPasswordAuthentication);
          if (paramString2 != null)
          {
            i = str1.length();
            int j = str2.length();
            localObject1 = new Dfs.CacheEntry(0L);
            paramString1 = paramString2;
            do
            {
              if (paramString3 == null)
              {
                map = map;
                key = "\\";
              }
              pathConsumed -= i + 1 + 1 + j;
              localObject2 = next;
              paramString1 = (String)localObject2;
            } while (localObject2 != paramString2);
            if (key != null) {
              map.put(key, paramString2);
            }
            localHashMap.put(str2, localObject1);
            paramString1 = paramString2;
            paramString2 = (String)localObject1;
            localObject1 = localSmbTransport;
          }
          for (;;)
          {
            if (paramString2 == null) {
              break label804;
            }
            paramString1 = (DfsReferral)map.get("\\");
            localObject2 = paramString1;
            if (paramString1 != null)
            {
              localObject2 = paramString1;
              if (l > expiration)
              {
                map.remove("\\");
                localObject2 = null;
              }
            }
            paramString1 = (String)localObject2;
            if (localObject2 != null) {
              break label804;
            }
            paramString1 = (String)localObject1;
            if (localObject1 != null) {
              break label405;
            }
            localObject1 = getDc(str1, paramNtlmPasswordAuthentication);
            paramString1 = (String)localObject1;
            if (localObject1 != null) {
              break label405;
            }
            paramString1 = null;
            break;
            if (paramString3 != null) {
              break label759;
            }
            localHashMap.put(str2, FALSE_ENTRY);
            localObject2 = paramString1;
            paramString1 = paramString2;
            localObject1 = localSmbTransport;
            paramString2 = (String)localObject2;
            continue;
            if (paramString1 != FALSE_ENTRY) {
              break label749;
            }
            paramString2 = null;
            paramString1 = null;
            localObject1 = null;
          }
          paramNtlmPasswordAuthentication = getReferral(paramString1, str1, str2, paramString3, paramNtlmPasswordAuthentication);
          paramString1 = paramNtlmPasswordAuthentication;
          if (paramNtlmPasswordAuthentication == null) {
            break label804;
          }
          pathConsumed -= str1.length() + 1 + 1 + str2.length();
          link = "\\";
          map.put("\\", paramNtlmPasswordAuthentication);
          paramString1 = paramNtlmPasswordAuthentication;
        }
        finally {}
        paramString1 = paramString2;
      } while (paramString2 != null);
      paramString1 = paramString2;
    } while (paramString3 == null);
    if ((referrals != null) && (l > referrals.expiration)) {
      referrals = null;
    }
    if (referrals == null) {
      referrals = new Dfs.CacheEntry(0L);
    }
    paramNtlmPasswordAuthentication = "\\" + (String)localObject1 + "\\" + paramNtlmPasswordAuthentication;
    paramString1 = paramNtlmPasswordAuthentication;
    if (!paramString3.equals("\\")) {
      paramString1 = paramNtlmPasswordAuthentication + paramString3;
    }
    paramString3 = paramString1.toLowerCase();
    paramNtlmPasswordAuthentication = referrals.map.keySet().iterator();
    for (;;)
    {
      paramString1 = paramString2;
      if (!paramNtlmPasswordAuthentication.hasNext()) {
        break;
      }
      paramString1 = (String)paramNtlmPasswordAuthentication.next();
      i = paramString1.length();
      bool = false;
      if (i == paramString3.length()) {
        bool = paramString1.equals(paramString3);
      }
      while (bool)
      {
        paramString1 = (DfsReferral)referrals.map.get(paramString1);
        break label817;
        if (i < paramString3.length())
        {
          if (paramString1.regionMatches(0, paramString3, 0, i))
          {
            i = paramString3.charAt(i);
            if (i == 92)
            {
              bool = true;
              continue;
            }
          }
          bool = false;
        }
      }
      paramString1 = paramString2;
      break label817;
      label749:
      paramString2 = paramString1;
      paramString1 = null;
      localObject1 = null;
      break label269;
      label759:
      localObject2 = paramString1;
      paramString1 = paramString2;
      localObject1 = localSmbTransport;
      paramString2 = (String)localObject2;
      break label269;
      label774:
      break label109;
      label777:
      paramNtlmPasswordAuthentication = paramString2;
      localObject1 = str1;
      paramString2 = null;
      break label478;
      label789:
      localObject1 = null;
      paramNtlmPasswordAuthentication = paramString2;
      paramString2 = (String)localObject1;
      localObject1 = paramString1;
      break label478;
      label804:
      localObject1 = str1;
      paramString2 = paramString1;
      paramNtlmPasswordAuthentication = str2;
      break label478;
      label817:
      paramString2 = paramString1;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Dfs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */