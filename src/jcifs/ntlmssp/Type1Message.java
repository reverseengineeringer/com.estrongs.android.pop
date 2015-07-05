package jcifs.ntlmssp;

import java.io.IOException;
import java.net.UnknownHostException;
import jcifs.Config;
import jcifs.netbios.NbtAddress;
import jcifs.util.Hexdump;

public class Type1Message
  extends NtlmMessage
{
  private static final String DEFAULT_DOMAIN;
  private static final int DEFAULT_FLAGS;
  private static final String DEFAULT_WORKSTATION;
  private String suppliedDomain;
  private String suppliedWorkstation;
  
  static
  {
    int i = 1;
    if (Config.getBoolean("jcifs.smb.client.useUnicode", true)) {}
    for (;;)
    {
      DEFAULT_FLAGS = i | 0x200;
      DEFAULT_DOMAIN = Config.getProperty("jcifs.smb.client.domain", null);
      try
      {
        String str = NbtAddress.getLocalHost().getHostName();
        DEFAULT_WORKSTATION = str;
        return;
        i = 2;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        for (;;)
        {
          Object localObject = null;
        }
      }
    }
  }
  
  public Type1Message()
  {
    this(getDefaultFlags(), getDefaultDomain(), getDefaultWorkstation());
  }
  
  public Type1Message(int paramInt, String paramString1, String paramString2)
  {
    setFlags(getDefaultFlags() | paramInt);
    setSuppliedDomain(paramString1);
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = getDefaultWorkstation();
    }
    setSuppliedWorkstation(paramString1);
  }
  
  public Type1Message(byte[] paramArrayOfByte)
  {
    parse(paramArrayOfByte);
  }
  
  public static String getDefaultDomain()
  {
    return DEFAULT_DOMAIN;
  }
  
  public static int getDefaultFlags()
  {
    return DEFAULT_FLAGS;
  }
  
  public static String getDefaultWorkstation()
  {
    return DEFAULT_WORKSTATION;
  }
  
  private void parse(byte[] paramArrayOfByte)
  {
    String str2 = null;
    int i = 0;
    while (i < 8)
    {
      if (paramArrayOfByte[i] != NTLMSSP_SIGNATURE[i]) {
        throw new IOException("Not an NTLMSSP message.");
      }
      i += 1;
    }
    if (readULong(paramArrayOfByte, 8) != 1) {
      throw new IOException("Not a Type 1 message.");
    }
    i = readULong(paramArrayOfByte, 12);
    if ((i & 0x1000) != 0) {}
    for (String str1 = new String(readSecurityBuffer(paramArrayOfByte, 16), getOEMEncoding());; str1 = null)
    {
      if ((i & 0x2000) != 0) {
        str2 = new String(readSecurityBuffer(paramArrayOfByte, 24), getOEMEncoding());
      }
      setFlags(i);
      setSuppliedDomain(str1);
      setSuppliedWorkstation(str2);
      return;
    }
  }
  
  public String getSuppliedDomain()
  {
    return suppliedDomain;
  }
  
  public String getSuppliedWorkstation()
  {
    return suppliedWorkstation;
  }
  
  public void setSuppliedDomain(String paramString)
  {
    suppliedDomain = paramString;
  }
  
  public void setSuppliedWorkstation(String paramString)
  {
    suppliedWorkstation = paramString;
  }
  
  /* Error */
  public byte[] toByteArray()
  {
    // Byte code:
    //   0: bipush 16
    //   2: istore_3
    //   3: iconst_1
    //   4: istore 4
    //   6: iconst_0
    //   7: istore_1
    //   8: aload_0
    //   9: invokevirtual 115	jcifs/ntlmssp/Type1Message:getSuppliedDomain	()Ljava/lang/String;
    //   12: astore 5
    //   14: aload_0
    //   15: invokevirtual 117	jcifs/ntlmssp/Type1Message:getSuppliedWorkstation	()Ljava/lang/String;
    //   18: astore 7
    //   20: aload_0
    //   21: invokevirtual 120	jcifs/ntlmssp/Type1Message:getFlags	()I
    //   24: istore_2
    //   25: aload 5
    //   27: ifnull +153 -> 180
    //   30: aload 5
    //   32: invokevirtual 123	java/lang/String:length	()I
    //   35: ifeq +145 -> 180
    //   38: aload 5
    //   40: invokevirtual 126	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   43: invokestatic 102	jcifs/ntlmssp/Type1Message:getOEMEncoding	()Ljava/lang/String;
    //   46: invokevirtual 130	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   49: astore 5
    //   51: iload_2
    //   52: sipush 4096
    //   55: ior
    //   56: istore_2
    //   57: iconst_1
    //   58: istore_1
    //   59: iconst_0
    //   60: newarray <illegal type>
    //   62: astore 6
    //   64: aload 7
    //   66: ifnull +128 -> 194
    //   69: aload 7
    //   71: invokevirtual 123	java/lang/String:length	()I
    //   74: ifeq +120 -> 194
    //   77: iload_2
    //   78: sipush 8192
    //   81: ior
    //   82: istore_2
    //   83: aload 7
    //   85: invokevirtual 126	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   88: invokestatic 102	jcifs/ntlmssp/Type1Message:getOEMEncoding	()Ljava/lang/String;
    //   91: invokevirtual 130	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   94: astore 6
    //   96: iload 4
    //   98: istore_1
    //   99: iload_1
    //   100: ifeq +14 -> 114
    //   103: aload 5
    //   105: arraylength
    //   106: bipush 32
    //   108: iadd
    //   109: aload 6
    //   111: arraylength
    //   112: iadd
    //   113: istore_3
    //   114: iload_3
    //   115: newarray <illegal type>
    //   117: astore 7
    //   119: getstatic 81	jcifs/ntlmssp/Type1Message:NTLMSSP_SIGNATURE	[B
    //   122: iconst_0
    //   123: aload 7
    //   125: iconst_0
    //   126: bipush 8
    //   128: invokestatic 136	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   131: aload 7
    //   133: bipush 8
    //   135: iconst_1
    //   136: invokestatic 140	jcifs/ntlmssp/Type1Message:writeULong	([BII)V
    //   139: aload 7
    //   141: bipush 12
    //   143: iload_2
    //   144: invokestatic 140	jcifs/ntlmssp/Type1Message:writeULong	([BII)V
    //   147: iload_1
    //   148: ifeq +29 -> 177
    //   151: aload 7
    //   153: bipush 16
    //   155: bipush 32
    //   157: aload 5
    //   159: invokestatic 144	jcifs/ntlmssp/Type1Message:writeSecurityBuffer	([BII[B)V
    //   162: aload 7
    //   164: bipush 24
    //   166: aload 5
    //   168: arraylength
    //   169: bipush 32
    //   171: iadd
    //   172: aload 6
    //   174: invokestatic 144	jcifs/ntlmssp/Type1Message:writeSecurityBuffer	([BII[B)V
    //   177: aload 7
    //   179: areturn
    //   180: iload_2
    //   181: sipush 61439
    //   184: iand
    //   185: istore_2
    //   186: iconst_0
    //   187: newarray <illegal type>
    //   189: astore 5
    //   191: goto -132 -> 59
    //   194: iload_2
    //   195: sipush 57343
    //   198: iand
    //   199: istore_2
    //   200: goto -101 -> 99
    //   203: astore 5
    //   205: new 146	java/lang/IllegalStateException
    //   208: dup
    //   209: aload 5
    //   211: invokevirtual 149	java/io/IOException:getMessage	()Ljava/lang/String;
    //   214: invokespecial 150	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   217: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	this	Type1Message
    //   7	141	1	i	int
    //   24	176	2	j	int
    //   2	113	3	k	int
    //   4	93	4	m	int
    //   12	178	5	localObject1	Object
    //   203	7	5	localIOException	IOException
    //   62	111	6	arrayOfByte	byte[]
    //   18	160	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   8	25	203	java/io/IOException
    //   30	51	203	java/io/IOException
    //   59	64	203	java/io/IOException
    //   69	77	203	java/io/IOException
    //   83	96	203	java/io/IOException
    //   103	114	203	java/io/IOException
    //   114	147	203	java/io/IOException
    //   151	177	203	java/io/IOException
  }
  
  public String toString()
  {
    Object localObject2 = getSuppliedDomain();
    String str = getSuppliedWorkstation();
    StringBuilder localStringBuilder = new StringBuilder().append("Type1Message[suppliedDomain=");
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "null";
    }
    localObject2 = localStringBuilder.append((String)localObject1).append(",suppliedWorkstation=");
    if (str == null) {}
    for (localObject1 = "null";; localObject1 = str) {
      return (String)localObject1 + ",flags=0x" + Hexdump.toHexString(getFlags(), 8) + "]";
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.ntlmssp.Type1Message
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */