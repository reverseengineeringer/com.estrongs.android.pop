package jcifs.smb;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.UnicodeString;
import jcifs.dcerpc.msrpc.LsaPolicyHandle;
import jcifs.dcerpc.msrpc.MsrpcGetMembersInAlias;
import jcifs.dcerpc.msrpc.MsrpcLookupSids;
import jcifs.dcerpc.msrpc.SamrAliasHandle;
import jcifs.dcerpc.msrpc.SamrDomainHandle;
import jcifs.dcerpc.msrpc.lsarpc.LsarSidArray;
import jcifs.dcerpc.msrpc.lsarpc.LsarSidPtr;
import jcifs.dcerpc.msrpc.lsarpc.LsarTranslatedName;
import jcifs.dcerpc.msrpc.lsarpc.LsarTrustInformation;
import jcifs.dcerpc.rpc.sid_t;
import jcifs.util.Encdec;
import jcifs.util.Hexdump;

public class SID
  extends rpc.sid_t
{
  public static SID CREATOR_OWNER = null;
  public static SID EVERYONE;
  public static final int SID_FLAG_RESOLVE_SIDS = 1;
  public static final int SID_TYPE_ALIAS = 4;
  public static final int SID_TYPE_DELETED = 6;
  public static final int SID_TYPE_DOMAIN = 3;
  public static final int SID_TYPE_DOM_GRP = 2;
  public static final int SID_TYPE_INVALID = 7;
  static final String[] SID_TYPE_NAMES = { "0", "User", "Domain group", "Domain", "Local group", "Builtin group", "Deleted", "Invalid", "Unknown" };
  public static final int SID_TYPE_UNKNOWN = 8;
  public static final int SID_TYPE_USER = 1;
  public static final int SID_TYPE_USE_NONE = 0;
  public static final int SID_TYPE_WKN_GRP = 5;
  public static SID SYSTEM = null;
  static Map sid_cache;
  String acctName = null;
  String domainName = null;
  NtlmPasswordAuthentication origin_auth = null;
  String origin_server = null;
  int type;
  
  static
  {
    EVERYONE = null;
    try
    {
      EVERYONE = new SID("S-1-1-0");
      CREATOR_OWNER = new SID("S-1-3-0");
      SYSTEM = new SID("S-1-5-18");
      sid_cache = new HashMap();
      return;
    }
    catch (SmbException localSmbException)
    {
      for (;;) {}
    }
  }
  
  public SID(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, "-");
    if ((localStringTokenizer.countTokens() < 3) || (!localStringTokenizer.nextToken().equals("S"))) {
      throw new SmbException("Bad textual SID format: " + paramString);
    }
    revision = Byte.parseByte(localStringTokenizer.nextToken());
    paramString = localStringTokenizer.nextToken();
    if (paramString.startsWith("0x")) {}
    int i;
    for (long l = Long.parseLong(paramString.substring(2), 16);; l = Long.parseLong(paramString))
    {
      identifier_authority = new byte[6];
      i = 5;
      while (l > 0L)
      {
        identifier_authority[i] = ((byte)(int)(l % 256L));
        l >>= 8;
        i -= 1;
      }
    }
    sub_authority_count = ((byte)localStringTokenizer.countTokens());
    if (sub_authority_count > 0)
    {
      sub_authority = new int[sub_authority_count];
      i = 0;
      while (i < sub_authority_count)
      {
        sub_authority[i] = ((int)(Long.parseLong(localStringTokenizer.nextToken()) & 0xFFFFFFFF));
        i += 1;
      }
    }
  }
  
  public SID(rpc.sid_t paramsid_t, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    revision = revision;
    sub_authority_count = sub_authority_count;
    identifier_authority = identifier_authority;
    sub_authority = sub_authority;
    type = paramInt;
    domainName = paramString1;
    acctName = paramString2;
    if (paramBoolean)
    {
      sub_authority_count = ((byte)(sub_authority_count - 1));
      sub_authority = new int[sub_authority_count];
      paramInt = 0;
      while (paramInt < sub_authority_count)
      {
        sub_authority[paramInt] = sub_authority[paramInt];
        paramInt += 1;
      }
    }
  }
  
  public SID(SID paramSID, int paramInt)
  {
    revision = revision;
    identifier_authority = identifier_authority;
    sub_authority_count = ((byte)(sub_authority_count + 1));
    sub_authority = new int[sub_authority_count];
    int i = 0;
    while (i < sub_authority_count)
    {
      sub_authority[i] = sub_authority[i];
      i += 1;
    }
    sub_authority[i] = paramInt;
  }
  
  public SID(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    revision = paramArrayOfByte[paramInt];
    paramInt = i + 1;
    sub_authority_count = paramArrayOfByte[i];
    identifier_authority = new byte[6];
    System.arraycopy(paramArrayOfByte, paramInt, identifier_authority, 0, 6);
    i = paramInt + 6;
    if (sub_authority_count > 100) {
      throw new RuntimeException("Invalid SID sub_authority_count");
    }
    sub_authority = new int[sub_authority_count];
    paramInt = j;
    while (paramInt < sub_authority_count)
    {
      sub_authority[paramInt] = ServerMessageBlock.readInt4(paramArrayOfByte, i);
      i += 4;
      paramInt += 1;
    }
  }
  
  static SID[] getGroupMemberSids0(DcerpcHandle paramDcerpcHandle, SamrDomainHandle paramSamrDomainHandle, SID paramSID, int paramInt1, int paramInt2)
  {
    paramSID = null;
    Object localObject = new lsarpc.LsarSidArray();
    try
    {
      paramSamrDomainHandle = new SamrAliasHandle(paramDcerpcHandle, paramSamrDomainHandle, 131084, paramInt1);
      try
      {
        paramSID = new MsrpcGetMembersInAlias(paramSamrDomainHandle, (lsarpc.LsarSidArray)localObject);
        paramDcerpcHandle.sendrecv(paramSID);
        if (retval == 0) {
          break label71;
        }
        throw new SmbException(retval, false);
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        label71:
        String str;
        paramSamrDomainHandle = paramSID;
      }
    }
    if (paramSamrDomainHandle != null) {
      paramSamrDomainHandle.close();
    }
    throw paramDcerpcHandle;
    localObject = new SID[sids.num_sids];
    str = paramDcerpcHandle.getServer();
    paramDcerpcHandle = (NtlmPasswordAuthentication)paramDcerpcHandle.getPrincipal();
    paramInt1 = 0;
    while (paramInt1 < localObject.length)
    {
      localObject[paramInt1] = new SID(sids.sids[paramInt1].sid, 0, null, null, false);
      origin_server = str;
      origin_auth = paramDcerpcHandle;
      paramInt1 += 1;
    }
    if ((localObject.length > 0) && ((paramInt2 & 0x1) != 0)) {
      resolveSids(str, paramDcerpcHandle, (SID[])localObject);
    }
    if (paramSamrDomainHandle != null) {
      paramSamrDomainHandle.close();
    }
    return (SID[])localObject;
  }
  
  /* Error */
  public static Map getLocalGroupsMap(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokestatic 269	jcifs/smb/SID:getServerSid	(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;
    //   5: astore 8
    //   7: aconst_null
    //   8: astore 6
    //   10: new 271	jcifs/dcerpc/msrpc/samr$SamrSamArray
    //   13: dup
    //   14: invokespecial 272	jcifs/dcerpc/msrpc/samr$SamrSamArray:<init>	()V
    //   17: astore 5
    //   19: getstatic 87	jcifs/smb/SID:sid_cache	Ljava/util/Map;
    //   22: astore 9
    //   24: aload 9
    //   26: monitorenter
    //   27: new 120	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 121	java/lang/StringBuilder:<init>	()V
    //   34: ldc_w 274
    //   37: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_0
    //   41: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: ldc_w 276
    //   47: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: aload_1
    //   54: invokestatic 280	jcifs/dcerpc/DcerpcHandle:getHandle	(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    //   57: astore_1
    //   58: new 282	jcifs/dcerpc/msrpc/SamrPolicyHandle
    //   61: dup
    //   62: aload_1
    //   63: aload_0
    //   64: ldc_w 283
    //   67: invokespecial 286	jcifs/dcerpc/msrpc/SamrPolicyHandle:<init>	(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    //   70: astore_0
    //   71: new 288	jcifs/dcerpc/msrpc/SamrDomainHandle
    //   74: dup
    //   75: aload_1
    //   76: aload_0
    //   77: ldc_w 283
    //   80: aload 8
    //   82: invokespecial 291	jcifs/dcerpc/msrpc/SamrDomainHandle:<init>	(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    //   85: astore 7
    //   87: new 293	jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain
    //   90: dup
    //   91: aload 7
    //   93: ldc_w 294
    //   96: aload 5
    //   98: invokespecial 297	jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain:<init>	(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V
    //   101: astore 10
    //   103: aload_1
    //   104: aload 10
    //   106: invokevirtual 223	jcifs/dcerpc/DcerpcHandle:sendrecv	(Ljcifs/dcerpc/DcerpcMessage;)V
    //   109: aload 10
    //   111: getfield 298	jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain:retval	I
    //   114: ifeq +67 -> 181
    //   117: new 43	jcifs/smb/SmbException
    //   120: dup
    //   121: aload 10
    //   123: getfield 298	jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain:retval	I
    //   126: iconst_0
    //   127: invokespecial 229	jcifs/smb/SmbException:<init>	(IZ)V
    //   130: athrow
    //   131: astore 8
    //   133: aload_1
    //   134: astore 6
    //   136: aload_0
    //   137: astore 5
    //   139: aload 7
    //   141: astore_1
    //   142: aload 8
    //   144: astore_0
    //   145: aload 6
    //   147: ifnull +26 -> 173
    //   150: aload 5
    //   152: ifnull +16 -> 168
    //   155: aload_1
    //   156: ifnull +7 -> 163
    //   159: aload_1
    //   160: invokevirtual 299	jcifs/dcerpc/msrpc/SamrDomainHandle:close	()V
    //   163: aload 5
    //   165: invokevirtual 300	jcifs/dcerpc/msrpc/SamrPolicyHandle:close	()V
    //   168: aload 6
    //   170: invokevirtual 301	jcifs/dcerpc/DcerpcHandle:close	()V
    //   173: aload_0
    //   174: athrow
    //   175: astore_0
    //   176: aload 9
    //   178: monitorexit
    //   179: aload_0
    //   180: athrow
    //   181: new 83	java/util/HashMap
    //   184: dup
    //   185: invokespecial 85	java/util/HashMap:<init>	()V
    //   188: astore 11
    //   190: iconst_0
    //   191: istore_3
    //   192: iload_3
    //   193: aload 10
    //   195: getfield 305	jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain:sam	Ljcifs/dcerpc/msrpc/samr$SamrSamArray;
    //   198: getfield 308	jcifs/dcerpc/msrpc/samr$SamrSamArray:count	I
    //   201: if_icmpge +179 -> 380
    //   204: aload 10
    //   206: getfield 305	jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain:sam	Ljcifs/dcerpc/msrpc/samr$SamrSamArray;
    //   209: getfield 312	jcifs/dcerpc/msrpc/samr$SamrSamArray:entries	[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;
    //   212: iload_3
    //   213: aaload
    //   214: astore 5
    //   216: aload_1
    //   217: aload 7
    //   219: aload 8
    //   221: aload 5
    //   223: getfield 317	jcifs/dcerpc/msrpc/samr$SamrSamEntry:idx	I
    //   226: iload_2
    //   227: invokestatic 319	jcifs/smb/SID:getGroupMemberSids0	(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;
    //   230: astore 12
    //   232: new 2	jcifs/smb/SID
    //   235: dup
    //   236: aload 8
    //   238: aload 5
    //   240: getfield 317	jcifs/dcerpc/msrpc/samr$SamrSamEntry:idx	I
    //   243: invokespecial 321	jcifs/smb/SID:<init>	(Ljcifs/smb/SID;I)V
    //   246: astore 13
    //   248: aload 13
    //   250: iconst_4
    //   251: putfield 182	jcifs/smb/SID:type	I
    //   254: aload 13
    //   256: aload 8
    //   258: invokevirtual 324	jcifs/smb/SID:getDomainName	()Ljava/lang/String;
    //   261: putfield 91	jcifs/smb/SID:domainName	Ljava/lang/String;
    //   264: aload 13
    //   266: new 326	jcifs/dcerpc/UnicodeString
    //   269: dup
    //   270: aload 5
    //   272: getfield 330	jcifs/dcerpc/msrpc/samr$SamrSamEntry:name	Ljcifs/dcerpc/rpc$unicode_string;
    //   275: iconst_0
    //   276: invokespecial 333	jcifs/dcerpc/UnicodeString:<init>	(Ljcifs/dcerpc/rpc$unicode_string;Z)V
    //   279: invokevirtual 334	jcifs/dcerpc/UnicodeString:toString	()Ljava/lang/String;
    //   282: putfield 93	jcifs/smb/SID:acctName	Ljava/lang/String;
    //   285: iconst_0
    //   286: istore 4
    //   288: iload 4
    //   290: aload 12
    //   292: arraylength
    //   293: if_icmpge +80 -> 373
    //   296: aload 11
    //   298: aload 12
    //   300: iload 4
    //   302: aaload
    //   303: invokeinterface 340 2 0
    //   308: checkcast 342	java/util/ArrayList
    //   311: astore 6
    //   313: aload 6
    //   315: astore 5
    //   317: aload 6
    //   319: ifnonnull +27 -> 346
    //   322: new 342	java/util/ArrayList
    //   325: dup
    //   326: invokespecial 343	java/util/ArrayList:<init>	()V
    //   329: astore 5
    //   331: aload 11
    //   333: aload 12
    //   335: iload 4
    //   337: aaload
    //   338: aload 5
    //   340: invokeinterface 347 3 0
    //   345: pop
    //   346: aload 5
    //   348: aload 13
    //   350: invokevirtual 350	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   353: ifne +11 -> 364
    //   356: aload 5
    //   358: aload 13
    //   360: invokevirtual 353	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   363: pop
    //   364: iload 4
    //   366: iconst_1
    //   367: iadd
    //   368: istore 4
    //   370: goto -82 -> 288
    //   373: iload_3
    //   374: iconst_1
    //   375: iadd
    //   376: istore_3
    //   377: goto -185 -> 192
    //   380: aload_1
    //   381: ifnull +25 -> 406
    //   384: aload_0
    //   385: ifnull +17 -> 402
    //   388: aload 7
    //   390: ifnull +8 -> 398
    //   393: aload 7
    //   395: invokevirtual 299	jcifs/dcerpc/msrpc/SamrDomainHandle:close	()V
    //   398: aload_0
    //   399: invokevirtual 300	jcifs/dcerpc/msrpc/SamrPolicyHandle:close	()V
    //   402: aload_1
    //   403: invokevirtual 301	jcifs/dcerpc/DcerpcHandle:close	()V
    //   406: aload 9
    //   408: monitorexit
    //   409: aload 11
    //   411: areturn
    //   412: astore_0
    //   413: aconst_null
    //   414: astore 5
    //   416: aconst_null
    //   417: astore_1
    //   418: goto -273 -> 145
    //   421: astore_0
    //   422: aload_1
    //   423: astore 6
    //   425: aconst_null
    //   426: astore_1
    //   427: aconst_null
    //   428: astore 5
    //   430: goto -285 -> 145
    //   433: astore 8
    //   435: aconst_null
    //   436: astore 7
    //   438: aload_0
    //   439: astore 5
    //   441: aload_1
    //   442: astore 6
    //   444: aload 8
    //   446: astore_0
    //   447: aload 7
    //   449: astore_1
    //   450: goto -305 -> 145
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	453	0	paramString	String
    //   0	453	1	paramNtlmPasswordAuthentication	NtlmPasswordAuthentication
    //   0	453	2	paramInt	int
    //   191	186	3	i	int
    //   286	83	4	j	int
    //   17	423	5	localObject1	Object
    //   8	435	6	localObject2	Object
    //   85	363	7	localSamrDomainHandle	SamrDomainHandle
    //   5	76	8	localSID1	SID
    //   131	126	8	localSID2	SID
    //   433	12	8	localObject3	Object
    //   22	385	9	localMap	Map
    //   101	104	10	localMsrpcEnumerateAliasesInDomain	jcifs.dcerpc.msrpc.MsrpcEnumerateAliasesInDomain
    //   188	222	11	localHashMap	HashMap
    //   230	104	12	arrayOfSID	SID[]
    //   246	113	13	localSID3	SID
    // Exception table:
    //   from	to	target	type
    //   87	131	131	finally
    //   181	190	131	finally
    //   192	285	131	finally
    //   288	313	131	finally
    //   322	346	131	finally
    //   346	364	131	finally
    //   159	163	175	finally
    //   163	168	175	finally
    //   168	173	175	finally
    //   173	175	175	finally
    //   176	179	175	finally
    //   393	398	175	finally
    //   398	402	175	finally
    //   402	406	175	finally
    //   406	409	175	finally
    //   27	58	412	finally
    //   58	71	421	finally
    //   71	87	433	finally
  }
  
  /* Error */
  public static SID getServerSid(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 355	jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo
    //   5: dup
    //   6: invokespecial 356	jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo:<init>	()V
    //   9: astore_3
    //   10: getstatic 87	jcifs/smb/SID:sid_cache	Ljava/util/Map;
    //   13: astore 4
    //   15: aload 4
    //   17: monitorenter
    //   18: new 120	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 121	java/lang/StringBuilder:<init>	()V
    //   25: ldc_w 274
    //   28: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: aload_0
    //   32: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: ldc_w 358
    //   38: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: aload_1
    //   45: invokestatic 280	jcifs/dcerpc/DcerpcHandle:getHandle	(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    //   48: astore_0
    //   49: new 360	jcifs/dcerpc/msrpc/LsaPolicyHandle
    //   52: dup
    //   53: aload_0
    //   54: aconst_null
    //   55: iconst_1
    //   56: invokespecial 361	jcifs/dcerpc/msrpc/LsaPolicyHandle:<init>	(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    //   59: astore_1
    //   60: new 363	jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy
    //   63: dup
    //   64: aload_1
    //   65: iconst_5
    //   66: aload_3
    //   67: invokespecial 366	jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy:<init>	(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V
    //   70: astore_2
    //   71: aload_0
    //   72: aload_2
    //   73: invokevirtual 223	jcifs/dcerpc/DcerpcHandle:sendrecv	(Ljcifs/dcerpc/DcerpcMessage;)V
    //   76: aload_2
    //   77: getfield 367	jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy:retval	I
    //   80: ifeq +47 -> 127
    //   83: new 43	jcifs/smb/SmbException
    //   86: dup
    //   87: aload_2
    //   88: getfield 367	jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy:retval	I
    //   91: iconst_0
    //   92: invokespecial 229	jcifs/smb/SmbException:<init>	(IZ)V
    //   95: athrow
    //   96: astore_3
    //   97: aload_1
    //   98: astore_2
    //   99: aload_0
    //   100: astore_1
    //   101: aload_3
    //   102: astore_0
    //   103: aload_1
    //   104: ifnull +15 -> 119
    //   107: aload_2
    //   108: ifnull +7 -> 115
    //   111: aload_2
    //   112: invokevirtual 368	jcifs/dcerpc/msrpc/LsaPolicyHandle:close	()V
    //   115: aload_1
    //   116: invokevirtual 301	jcifs/dcerpc/DcerpcHandle:close	()V
    //   119: aload_0
    //   120: athrow
    //   121: astore_0
    //   122: aload 4
    //   124: monitorexit
    //   125: aload_0
    //   126: athrow
    //   127: new 2	jcifs/smb/SID
    //   130: dup
    //   131: aload_3
    //   132: getfield 369	jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo:sid	Ljcifs/dcerpc/rpc$sid_t;
    //   135: iconst_3
    //   136: new 326	jcifs/dcerpc/UnicodeString
    //   139: dup
    //   140: aload_3
    //   141: getfield 370	jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo:name	Ljcifs/dcerpc/rpc$unicode_string;
    //   144: iconst_0
    //   145: invokespecial 333	jcifs/dcerpc/UnicodeString:<init>	(Ljcifs/dcerpc/rpc$unicode_string;Z)V
    //   148: invokevirtual 334	jcifs/dcerpc/UnicodeString:toString	()Ljava/lang/String;
    //   151: aconst_null
    //   152: iconst_0
    //   153: invokespecial 259	jcifs/smb/SID:<init>	(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    //   156: astore_2
    //   157: aload_0
    //   158: ifnull +15 -> 173
    //   161: aload_1
    //   162: ifnull +7 -> 169
    //   165: aload_1
    //   166: invokevirtual 368	jcifs/dcerpc/msrpc/LsaPolicyHandle:close	()V
    //   169: aload_0
    //   170: invokevirtual 301	jcifs/dcerpc/DcerpcHandle:close	()V
    //   173: aload 4
    //   175: monitorexit
    //   176: aload_2
    //   177: areturn
    //   178: astore_0
    //   179: aconst_null
    //   180: astore_1
    //   181: goto -78 -> 103
    //   184: astore_3
    //   185: aload_0
    //   186: astore_1
    //   187: aload_3
    //   188: astore_0
    //   189: goto -86 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	192	0	paramString	String
    //   0	192	1	paramNtlmPasswordAuthentication	NtlmPasswordAuthentication
    //   1	176	2	localObject1	Object
    //   9	58	3	localLsarDomainInfo	jcifs.dcerpc.msrpc.lsarpc.LsarDomainInfo
    //   96	45	3	localObject2	Object
    //   184	4	3	localObject3	Object
    //   13	161	4	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   60	96	96	finally
    //   127	157	96	finally
    //   111	115	121	finally
    //   115	119	121	finally
    //   119	121	121	finally
    //   122	125	121	finally
    //   165	169	121	finally
    //   169	173	121	finally
    //   173	176	121	finally
    //   18	49	178	finally
    //   49	60	184	finally
  }
  
  public static void resolveSids(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication, SID[] paramArrayOfSID)
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList(paramArrayOfSID.length);
    Map localMap = sid_cache;
    int i = 0;
    for (;;)
    {
      try
      {
        if (i < paramArrayOfSID.length)
        {
          SID localSID = (SID)sid_cache.get(paramArrayOfSID[i]);
          if (localSID != null)
          {
            type = type;
            domainName = domainName;
            acctName = acctName;
          }
          else
          {
            localArrayList.add(paramArrayOfSID[i]);
          }
        }
      }
      finally {}
      if (localArrayList.size() > 0)
      {
        paramArrayOfSID = (SID[])localArrayList.toArray(new SID[0]);
        resolveSids0(paramString, paramNtlmPasswordAuthentication, paramArrayOfSID);
        i = j;
        while (i < paramArrayOfSID.length)
        {
          sid_cache.put(paramArrayOfSID[i], paramArrayOfSID[i]);
          i += 1;
        }
      }
      return;
      i += 1;
    }
  }
  
  public static void resolveSids(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication, SID[] paramArrayOfSID, int paramInt1, int paramInt2)
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList(paramArrayOfSID.length);
    Map localMap = sid_cache;
    int i = 0;
    for (;;)
    {
      if (i < paramInt2) {
        try
        {
          SID localSID = (SID)sid_cache.get(paramArrayOfSID[(paramInt1 + i)]);
          if (localSID != null)
          {
            type = type;
            domainName = domainName;
            acctName = acctName;
          }
          else
          {
            localArrayList.add(paramArrayOfSID[(paramInt1 + i)]);
          }
        }
        finally {}
      }
      if (localArrayList.size() > 0)
      {
        paramArrayOfSID = (SID[])localArrayList.toArray(new SID[0]);
        resolveSids0(paramString, paramNtlmPasswordAuthentication, paramArrayOfSID);
        paramInt1 = j;
        while (paramInt1 < paramArrayOfSID.length)
        {
          sid_cache.put(paramArrayOfSID[paramInt1], paramArrayOfSID[paramInt1]);
          paramInt1 += 1;
        }
      }
      return;
      i += 1;
    }
  }
  
  static void resolveSids(DcerpcHandle paramDcerpcHandle, LsaPolicyHandle paramLsaPolicyHandle, SID[] paramArrayOfSID)
  {
    paramLsaPolicyHandle = new MsrpcLookupSids(paramLsaPolicyHandle, paramArrayOfSID);
    paramDcerpcHandle.sendrecv(paramLsaPolicyHandle);
    switch (retval)
    {
    default: 
      throw new SmbException(retval, false);
    }
    int i = 0;
    if (i < paramArrayOfSID.length)
    {
      type = names.names[i].sid_type;
      domainName = null;
      switch (type)
      {
      }
      for (;;)
      {
        acctName = new UnicodeString(names.names[i].name, false).toString();
        origin_server = null;
        origin_auth = null;
        i += 1;
        break;
        int j = names.names[i].sid_index;
        paramDcerpcHandle = domains.domains[j].name;
        domainName = new UnicodeString(paramDcerpcHandle, false).toString();
      }
    }
  }
  
  /* Error */
  static void resolveSids0(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication, SID[] paramArrayOfSID)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: getstatic 87	jcifs/smb/SID:sid_cache	Ljava/util/Map;
    //   6: astore 6
    //   8: aload 6
    //   10: monitorenter
    //   11: new 120	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 121	java/lang/StringBuilder:<init>	()V
    //   18: ldc_w 274
    //   21: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_0
    //   25: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: ldc_w 358
    //   31: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: aload_1
    //   38: invokestatic 280	jcifs/dcerpc/DcerpcHandle:getHandle	(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    //   41: astore_1
    //   42: aload_0
    //   43: bipush 46
    //   45: invokevirtual 427	java/lang/String:indexOf	(I)I
    //   48: istore_3
    //   49: aload_0
    //   50: astore 4
    //   52: iload_3
    //   53: ifle +25 -> 78
    //   56: aload_0
    //   57: astore 4
    //   59: aload_0
    //   60: iconst_0
    //   61: invokevirtual 431	java/lang/String:charAt	(I)C
    //   64: invokestatic 437	java/lang/Character:isDigit	(C)Z
    //   67: ifne +11 -> 78
    //   70: aload_0
    //   71: iconst_0
    //   72: iload_3
    //   73: invokevirtual 440	java/lang/String:substring	(II)Ljava/lang/String;
    //   76: astore 4
    //   78: new 360	jcifs/dcerpc/msrpc/LsaPolicyHandle
    //   81: dup
    //   82: aload_1
    //   83: new 120	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 121	java/lang/StringBuilder:<init>	()V
    //   90: ldc_w 442
    //   93: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: aload 4
    //   98: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: sipush 2048
    //   107: invokespecial 361	jcifs/dcerpc/msrpc/LsaPolicyHandle:<init>	(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    //   110: astore_0
    //   111: aload_1
    //   112: aload_0
    //   113: aload_2
    //   114: invokestatic 444	jcifs/smb/SID:resolveSids	(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    //   117: aload_1
    //   118: ifnull +15 -> 133
    //   121: aload_0
    //   122: ifnull +7 -> 129
    //   125: aload_0
    //   126: invokevirtual 368	jcifs/dcerpc/msrpc/LsaPolicyHandle:close	()V
    //   129: aload_1
    //   130: invokevirtual 301	jcifs/dcerpc/DcerpcHandle:close	()V
    //   133: aload 6
    //   135: monitorexit
    //   136: return
    //   137: aload_1
    //   138: ifnull +15 -> 153
    //   141: aload_2
    //   142: ifnull +7 -> 149
    //   145: aload_2
    //   146: invokevirtual 368	jcifs/dcerpc/msrpc/LsaPolicyHandle:close	()V
    //   149: aload_1
    //   150: invokevirtual 301	jcifs/dcerpc/DcerpcHandle:close	()V
    //   153: aload_0
    //   154: athrow
    //   155: astore_0
    //   156: aload 6
    //   158: monitorexit
    //   159: aload_0
    //   160: athrow
    //   161: astore_0
    //   162: aload 5
    //   164: astore_2
    //   165: goto -28 -> 137
    //   168: astore 4
    //   170: aload_0
    //   171: astore_2
    //   172: aload 4
    //   174: astore_0
    //   175: goto -38 -> 137
    //   178: astore_0
    //   179: aconst_null
    //   180: astore_1
    //   181: aload 5
    //   183: astore_2
    //   184: goto -47 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	paramString	String
    //   0	187	1	paramNtlmPasswordAuthentication	NtlmPasswordAuthentication
    //   0	187	2	paramArrayOfSID	SID[]
    //   48	25	3	i	int
    //   50	47	4	str	String
    //   168	5	4	localObject1	Object
    //   1	181	5	localObject2	Object
    //   6	151	6	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   125	129	155	finally
    //   129	133	155	finally
    //   133	136	155	finally
    //   145	149	155	finally
    //   149	153	155	finally
    //   153	155	155	finally
    //   156	159	155	finally
    //   42	49	161	finally
    //   59	78	161	finally
    //   78	111	161	finally
    //   111	117	168	finally
    //   11	42	178	finally
  }
  
  public static byte[] toByteArray(rpc.sid_t paramsid_t)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[sub_authority_count * 4 + 8];
    arrayOfByte[0] = revision;
    arrayOfByte[1] = sub_authority_count;
    System.arraycopy(identifier_authority, 0, arrayOfByte, 2, 6);
    int j = 8;
    while (i < sub_authority_count)
    {
      Encdec.enc_uint32le(sub_authority[i], arrayOfByte, j);
      j += 4;
      i += 1;
    }
    return arrayOfByte;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = false;
    boolean bool1 = bool3;
    if ((paramObject instanceof SID))
    {
      paramObject = (SID)paramObject;
      if (paramObject != this) {
        break label33;
      }
      bool1 = true;
    }
    label33:
    do
    {
      return bool1;
      bool1 = bool3;
    } while (sub_authority_count != sub_authority_count);
    int j;
    for (int i = sub_authority_count;; i = j)
    {
      j = i - 1;
      if (i <= 0) {
        break label85;
      }
      bool1 = bool3;
      if (sub_authority[j] != sub_authority[j]) {
        break;
      }
    }
    label85:
    i = 0;
    for (;;)
    {
      if (i >= 6) {
        break label119;
      }
      bool1 = bool3;
      if (identifier_authority[i] != identifier_authority[i]) {
        break;
      }
      i += 1;
    }
    label119:
    if (revision == revision) {}
    for (bool1 = bool2;; bool1 = false) {
      return bool1;
    }
  }
  
  public String getAccountName()
  {
    if (origin_server != null) {
      resolveWeak();
    }
    if (type == 8) {
      return "" + sub_authority[(sub_authority_count - 1)];
    }
    if (type == 3) {
      return "";
    }
    return acctName;
  }
  
  public String getDomainName()
  {
    if (origin_server != null) {
      resolveWeak();
    }
    if (type == 8)
    {
      String str = toString();
      return str.substring(0, str.length() - getAccountName().length() - 1);
    }
    return domainName;
  }
  
  public SID getDomainSid()
  {
    String str = domainName;
    if (getType() != 3) {}
    for (boolean bool = true;; bool = false) {
      return new SID(this, 3, str, null, bool);
    }
  }
  
  /* Error */
  public SID[] getGroupMemberSids(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: getfield 182	jcifs/smb/SID:type	I
    //   7: iconst_2
    //   8: if_icmpeq +16 -> 24
    //   11: aload_0
    //   12: getfield 182	jcifs/smb/SID:type	I
    //   15: iconst_4
    //   16: if_icmpeq +8 -> 24
    //   19: iconst_0
    //   20: anewarray 2	jcifs/smb/SID
    //   23: areturn
    //   24: aload_0
    //   25: invokevirtual 476	jcifs/smb/SID:getDomainSid	()Ljcifs/smb/SID;
    //   28: astore 4
    //   30: getstatic 87	jcifs/smb/SID:sid_cache	Ljava/util/Map;
    //   33: astore 8
    //   35: aload 8
    //   37: monitorenter
    //   38: new 120	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 121	java/lang/StringBuilder:<init>	()V
    //   45: ldc_w 274
    //   48: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: aload_1
    //   52: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc_w 276
    //   58: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: aload_2
    //   65: invokestatic 280	jcifs/dcerpc/DcerpcHandle:getHandle	(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    //   68: astore_2
    //   69: new 282	jcifs/dcerpc/msrpc/SamrPolicyHandle
    //   72: dup
    //   73: aload_2
    //   74: aload_1
    //   75: bipush 48
    //   77: invokespecial 286	jcifs/dcerpc/msrpc/SamrPolicyHandle:<init>	(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    //   80: astore_1
    //   81: new 288	jcifs/dcerpc/msrpc/SamrDomainHandle
    //   84: dup
    //   85: aload_2
    //   86: aload_1
    //   87: sipush 512
    //   90: aload 4
    //   92: invokespecial 291	jcifs/dcerpc/msrpc/SamrDomainHandle:<init>	(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    //   95: astore 6
    //   97: aload_2
    //   98: aload 6
    //   100: aload 4
    //   102: aload_0
    //   103: invokevirtual 479	jcifs/smb/SID:getRid	()I
    //   106: iload_3
    //   107: invokestatic 319	jcifs/smb/SID:getGroupMemberSids0	(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;
    //   110: astore 4
    //   112: aload_2
    //   113: ifnull +25 -> 138
    //   116: aload_1
    //   117: ifnull +17 -> 134
    //   120: aload 6
    //   122: ifnull +8 -> 130
    //   125: aload 6
    //   127: invokevirtual 299	jcifs/dcerpc/msrpc/SamrDomainHandle:close	()V
    //   130: aload_1
    //   131: invokevirtual 300	jcifs/dcerpc/msrpc/SamrPolicyHandle:close	()V
    //   134: aload_2
    //   135: invokevirtual 301	jcifs/dcerpc/DcerpcHandle:close	()V
    //   138: aload 8
    //   140: monitorexit
    //   141: aload 4
    //   143: areturn
    //   144: astore_1
    //   145: aload 8
    //   147: monitorexit
    //   148: aload_1
    //   149: athrow
    //   150: astore_1
    //   151: aconst_null
    //   152: astore_2
    //   153: aconst_null
    //   154: astore 4
    //   156: aload 4
    //   158: ifnull +26 -> 184
    //   161: aload 5
    //   163: ifnull +16 -> 179
    //   166: aload_2
    //   167: ifnull +7 -> 174
    //   170: aload_2
    //   171: invokevirtual 299	jcifs/dcerpc/msrpc/SamrDomainHandle:close	()V
    //   174: aload 5
    //   176: invokevirtual 300	jcifs/dcerpc/msrpc/SamrPolicyHandle:close	()V
    //   179: aload 4
    //   181: invokevirtual 301	jcifs/dcerpc/DcerpcHandle:close	()V
    //   184: aload_1
    //   185: athrow
    //   186: astore_1
    //   187: aconst_null
    //   188: astore 6
    //   190: aload_2
    //   191: astore 4
    //   193: aload 6
    //   195: astore_2
    //   196: goto -40 -> 156
    //   199: astore 7
    //   201: aconst_null
    //   202: astore 6
    //   204: aload_1
    //   205: astore 5
    //   207: aload_2
    //   208: astore 4
    //   210: aload 7
    //   212: astore_1
    //   213: aload 6
    //   215: astore_2
    //   216: goto -60 -> 156
    //   219: astore 7
    //   221: aload_1
    //   222: astore 5
    //   224: aload_2
    //   225: astore 4
    //   227: aload 7
    //   229: astore_1
    //   230: aload 6
    //   232: astore_2
    //   233: goto -77 -> 156
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	this	SID
    //   0	236	1	paramString	String
    //   0	236	2	paramNtlmPasswordAuthentication	NtlmPasswordAuthentication
    //   0	236	3	paramInt	int
    //   28	198	4	localObject1	Object
    //   1	222	5	str	String
    //   95	136	6	localSamrDomainHandle	SamrDomainHandle
    //   199	12	7	localObject2	Object
    //   219	9	7	localObject3	Object
    //   33	113	8	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   125	130	144	finally
    //   130	134	144	finally
    //   134	138	144	finally
    //   138	141	144	finally
    //   145	148	144	finally
    //   170	174	144	finally
    //   174	179	144	finally
    //   179	184	144	finally
    //   184	186	144	finally
    //   38	69	150	finally
    //   69	81	186	finally
    //   81	97	199	finally
    //   97	112	219	finally
  }
  
  public int getRid()
  {
    if (getType() == 3) {
      throw new IllegalArgumentException("This SID is a domain sid");
    }
    return sub_authority[(sub_authority_count - 1)];
  }
  
  public int getType()
  {
    if (origin_server != null) {
      resolveWeak();
    }
    return type;
  }
  
  public String getTypeText()
  {
    if (origin_server != null) {
      resolveWeak();
    }
    return SID_TYPE_NAMES[type];
  }
  
  public int hashCode()
  {
    int j = identifier_authority[5];
    int i = 0;
    while (i < sub_authority_count)
    {
      j += 65599 * sub_authority[i];
      i += 1;
    }
    return j;
  }
  
  public void resolve(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    resolveSids(paramString, paramNtlmPasswordAuthentication, new SID[] { this });
  }
  
  void resolveWeak()
  {
    if (origin_server != null) {}
    try
    {
      resolve(origin_server, origin_auth);
      origin_server = null;
      origin_auth = null;
      return;
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      origin_server = null;
      origin_auth = null;
      return;
    }
    finally
    {
      localObject = finally;
      origin_server = null;
      origin_auth = null;
      throw ((Throwable)localObject);
    }
  }
  
  public String toDisplayString()
  {
    if (origin_server != null) {
      resolveWeak();
    }
    if (domainName != null)
    {
      if (type == 3) {
        return domainName;
      }
      if ((type == 5) || (domainName.equals("BUILTIN")))
      {
        if (type == 8) {
          return toString();
        }
        return acctName;
      }
      return domainName + "\\" + acctName;
    }
    return toString();
  }
  
  public String toString()
  {
    long l2 = 0L;
    String str = "S-" + (revision & 0xFF) + "-";
    if ((identifier_authority[0] != 0) || (identifier_authority[1] != 0)) {
      str = str + "0x";
    }
    for (str = str + Hexdump.toHexString(identifier_authority, 0, 6);; str = str + l2)
    {
      int i = 0;
      while (i < sub_authority_count)
      {
        str = str + "-" + (sub_authority[i] & 0xFFFFFFFF);
        i += 1;
      }
      i = 5;
      long l1 = 0L;
      while (i > 1)
      {
        l2 += ((identifier_authority[i] & 0xFF) << (int)l1);
        l1 += 8L;
        i -= 1;
      }
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SID
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */