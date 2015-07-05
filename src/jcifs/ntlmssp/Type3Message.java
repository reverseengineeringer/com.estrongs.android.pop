package jcifs.ntlmssp;

import java.io.IOException;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.Arrays;
import jcifs.Config;
import jcifs.netbios.NbtAddress;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.util.HMACT64;
import jcifs.util.Hexdump;
import jcifs.util.MD4;
import jcifs.util.RC4;

public class Type3Message
  extends NtlmMessage
{
  private static final String DEFAULT_DOMAIN;
  private static final int DEFAULT_FLAGS;
  private static final String DEFAULT_PASSWORD;
  private static final String DEFAULT_USER;
  private static final String DEFAULT_WORKSTATION;
  private static final int LM_COMPATIBILITY;
  static final long MILLISECONDS_BETWEEN_1970_AND_1601 = 11644473600000L;
  private static final SecureRandom RANDOM;
  private String domain;
  private byte[] lmResponse;
  private byte[] masterKey = null;
  private byte[] ntResponse;
  private byte[] sessionKey = null;
  private String user;
  private String workstation;
  
  static
  {
    int i = 1;
    RANDOM = new SecureRandom();
    if (Config.getBoolean("jcifs.smb.client.useUnicode", true)) {}
    for (;;)
    {
      DEFAULT_FLAGS = i | 0x200;
      DEFAULT_DOMAIN = Config.getProperty("jcifs.smb.client.domain", null);
      DEFAULT_USER = Config.getProperty("jcifs.smb.client.username", null);
      DEFAULT_PASSWORD = Config.getProperty("jcifs.smb.client.password", null);
      try
      {
        String str = NbtAddress.getLocalHost().getHostName();
        DEFAULT_WORKSTATION = str;
        LM_COMPATIBILITY = Config.getInt("jcifs.smb.lmCompatibility", 3);
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
  
  public Type3Message()
  {
    setFlags(getDefaultFlags());
    setDomain(getDefaultDomain());
    setUser(getDefaultUser());
    setWorkstation(getDefaultWorkstation());
  }
  
  public Type3Message(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, String paramString1, String paramString2, String paramString3)
  {
    setFlags(paramInt);
    setLMResponse(paramArrayOfByte1);
    setNTResponse(paramArrayOfByte2);
    setDomain(paramString1);
    setUser(paramString2);
    setWorkstation(paramString3);
  }
  
  public Type3Message(Type2Message paramType2Message)
  {
    setFlags(getDefaultFlags(paramType2Message));
    setWorkstation(getDefaultWorkstation());
    String str1 = getDefaultDomain();
    setDomain(str1);
    String str2 = getDefaultUser();
    setUser(str2);
    String str3 = getDefaultPassword();
    switch (LM_COMPATIBILITY)
    {
    default: 
      setLMResponse(getLMResponse(paramType2Message, str3));
      setNTResponse(getNTResponse(paramType2Message, str3));
      return;
    case 0: 
    case 1: 
      setLMResponse(getLMResponse(paramType2Message, str3));
      setNTResponse(getNTResponse(paramType2Message, str3));
      return;
    case 2: 
      paramType2Message = getNTResponse(paramType2Message, str3);
      setLMResponse(paramType2Message);
      setNTResponse(paramType2Message);
      return;
    }
    byte[] arrayOfByte = new byte[8];
    RANDOM.nextBytes(arrayOfByte);
    setLMResponse(getLMv2Response(paramType2Message, str1, str2, str3, arrayOfByte));
  }
  
  public Type3Message(Type2Message paramType2Message, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    setFlags(getDefaultFlags(paramType2Message) | paramInt);
    Object localObject = paramString4;
    if (paramString4 == null) {
      localObject = getDefaultWorkstation();
    }
    setWorkstation((String)localObject);
    setDomain(paramString2);
    setUser(paramString3);
    switch (LM_COMPATIBILITY)
    {
    default: 
      setLMResponse(getLMResponse(paramType2Message, paramString1));
      setNTResponse(getNTResponse(paramType2Message, paramString1));
    }
    do
    {
      do
      {
        return;
        if ((getFlags() & 0x80000) == 0)
        {
          setLMResponse(getLMResponse(paramType2Message, paramString1));
          setNTResponse(getNTResponse(paramType2Message, paramString1));
          return;
        }
        paramString2 = new byte[24];
        RANDOM.nextBytes(paramString2);
        Arrays.fill(paramString2, 8, 24, (byte)0);
        paramString1 = NtlmPasswordAuthentication.nTOWFv1(paramString1);
        paramString3 = NtlmPasswordAuthentication.getNTLM2Response(paramString1, paramType2Message.getChallenge(), paramString2);
        setLMResponse(paramString2);
        setNTResponse(paramString3);
      } while ((getFlags() & 0x10) != 16);
      paramString3 = new byte[16];
      System.arraycopy(paramType2Message.getChallenge(), 0, paramString3, 0, 8);
      System.arraycopy(paramString2, 0, paramString3, 8, 8);
      paramType2Message = new MD4();
      paramType2Message.update(paramString1);
      paramType2Message = new HMACT64(paramType2Message.digest());
      paramType2Message.update(paramString3);
      paramType2Message = paramType2Message.digest();
      if ((getFlags() & 0x40000000) != 0)
      {
        masterKey = new byte[16];
        RANDOM.nextBytes(masterKey);
        paramString1 = new byte[16];
        new RC4(paramType2Message).update(masterKey, 0, 16, paramString1, 0);
        setSessionKey(paramString1);
        return;
      }
      masterKey = paramType2Message;
      setSessionKey(masterKey);
      return;
      paramType2Message = getNTResponse(paramType2Message, paramString1);
      setLMResponse(paramType2Message);
      setNTResponse(paramType2Message);
      return;
      paramString4 = NtlmPasswordAuthentication.nTOWFv2(paramString2, paramString3, paramString1);
      localObject = new byte[8];
      RANDOM.nextBytes((byte[])localObject);
      setLMResponse(getLMv2Response(paramType2Message, paramString2, paramString3, paramString1, (byte[])localObject));
      paramString1 = new byte[8];
      RANDOM.nextBytes(paramString1);
      setNTResponse(getNTLMv2Response(paramType2Message, paramString4, paramString1));
    } while ((getFlags() & 0x10) != 16);
    paramType2Message = new HMACT64(paramString4);
    paramType2Message.update(ntResponse, 0, 16);
    paramType2Message = paramType2Message.digest();
    if ((getFlags() & 0x40000000) != 0)
    {
      masterKey = new byte[16];
      RANDOM.nextBytes(masterKey);
      paramString1 = new byte[16];
      new RC4(paramType2Message).update(masterKey, 0, 16, paramString1, 0);
      setSessionKey(paramString1);
      return;
    }
    masterKey = paramType2Message;
    setSessionKey(masterKey);
  }
  
  public Type3Message(byte[] paramArrayOfByte)
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
  
  public static int getDefaultFlags(Type2Message paramType2Message)
  {
    if (paramType2Message == null) {
      return DEFAULT_FLAGS;
    }
    if ((paramType2Message.getFlags() & 0x1) != 0) {}
    for (int i = 1;; i = 2) {
      return i | 0x200;
    }
  }
  
  public static String getDefaultPassword()
  {
    return DEFAULT_PASSWORD;
  }
  
  public static String getDefaultUser()
  {
    return DEFAULT_USER;
  }
  
  public static String getDefaultWorkstation()
  {
    return DEFAULT_WORKSTATION;
  }
  
  public static byte[] getLMResponse(Type2Message paramType2Message, String paramString)
  {
    if ((paramType2Message == null) || (paramString == null)) {
      return null;
    }
    return NtlmPasswordAuthentication.getPreNTLMResponse(paramString, paramType2Message.getChallenge());
  }
  
  public static byte[] getLMv2Response(Type2Message paramType2Message, String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
  {
    if ((paramType2Message == null) || (paramString1 == null) || (paramString2 == null) || (paramString3 == null) || (paramArrayOfByte == null)) {
      return null;
    }
    return NtlmPasswordAuthentication.getLMv2Response(paramString1, paramString2, paramString3, paramType2Message.getChallenge(), paramArrayOfByte);
  }
  
  public static byte[] getNTLMv2Response(Type2Message paramType2Message, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramType2Message == null) || (paramArrayOfByte1 == null) || (paramArrayOfByte2 == null)) {
      return null;
    }
    long l = System.currentTimeMillis();
    return NtlmPasswordAuthentication.getNTLMv2Response(paramArrayOfByte1, paramType2Message.getChallenge(), paramArrayOfByte2, (l + 11644473600000L) * 10000L, paramType2Message.getTargetInformation());
  }
  
  public static byte[] getNTResponse(Type2Message paramType2Message, String paramString)
  {
    if ((paramType2Message == null) || (paramString == null)) {
      return null;
    }
    return NtlmPasswordAuthentication.getNTLMResponse(paramString, paramType2Message.getChallenge());
  }
  
  private void parse(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < 8)
    {
      if (paramArrayOfByte[i] != NTLMSSP_SIGNATURE[i]) {
        throw new IOException("Not an NTLMSSP message.");
      }
      i += 1;
    }
    if (readULong(paramArrayOfByte, 8) != 3) {
      throw new IOException("Not a Type 3 message.");
    }
    byte[] arrayOfByte2 = readSecurityBuffer(paramArrayOfByte, 12);
    i = readULong(paramArrayOfByte, 16);
    byte[] arrayOfByte3 = readSecurityBuffer(paramArrayOfByte, 20);
    int j = readULong(paramArrayOfByte, 24);
    byte[] arrayOfByte4 = readSecurityBuffer(paramArrayOfByte, 28);
    int k = readULong(paramArrayOfByte, 32);
    byte[] arrayOfByte5 = readSecurityBuffer(paramArrayOfByte, 36);
    int m = readULong(paramArrayOfByte, 40);
    byte[] arrayOfByte6 = readSecurityBuffer(paramArrayOfByte, 44);
    int n = readULong(paramArrayOfByte, 48);
    byte[] arrayOfByte1 = null;
    if ((i == 52) || (j == 52) || (k == 52) || (m == 52) || (n == 52))
    {
      i = 514;
      paramArrayOfByte = getOEMEncoding();
      setSessionKey(arrayOfByte1);
      setFlags(i);
      setLMResponse(arrayOfByte2);
      setNTResponse(arrayOfByte3);
      setDomain(new String(arrayOfByte4, paramArrayOfByte));
      setUser(new String(arrayOfByte5, paramArrayOfByte));
      setWorkstation(new String(arrayOfByte6, paramArrayOfByte));
      return;
    }
    arrayOfByte1 = readSecurityBuffer(paramArrayOfByte, 52);
    i = readULong(paramArrayOfByte, 60);
    if ((i & 0x1) != 0) {}
    for (paramArrayOfByte = "UTF-16LE";; paramArrayOfByte = getOEMEncoding()) {
      break;
    }
  }
  
  public String getDomain()
  {
    return domain;
  }
  
  public byte[] getLMResponse()
  {
    return lmResponse;
  }
  
  public byte[] getMasterKey()
  {
    return masterKey;
  }
  
  public byte[] getNTResponse()
  {
    return ntResponse;
  }
  
  public byte[] getSessionKey()
  {
    return sessionKey;
  }
  
  public String getUser()
  {
    return user;
  }
  
  public String getWorkstation()
  {
    return workstation;
  }
  
  public void setDomain(String paramString)
  {
    domain = paramString;
  }
  
  public void setLMResponse(byte[] paramArrayOfByte)
  {
    lmResponse = paramArrayOfByte;
  }
  
  public void setNTResponse(byte[] paramArrayOfByte)
  {
    ntResponse = paramArrayOfByte;
  }
  
  public void setSessionKey(byte[] paramArrayOfByte)
  {
    sessionKey = paramArrayOfByte;
  }
  
  public void setUser(String paramString)
  {
    user = paramString;
  }
  
  public void setWorkstation(String paramString)
  {
    workstation = paramString;
  }
  
  public byte[] toByteArray()
  {
    int k;
    label54:
    Object localObject3;
    int i;
    label63:
    label99:
    Object localObject5;
    try
    {
      i2 = getFlags();
      if ((i2 & 0x1) == 0) {
        break label475;
      }
      k = 1;
    }
    catch (IOException localIOException)
    {
      int i2;
      Object localObject1;
      throw new IllegalStateException(localIOException.getMessage());
    }
    localObject1 = getDomain();
    if ((localObject1 != null) && (((String)localObject1).length() != 0)) {
      if (k != 0)
      {
        localObject1 = ((String)localObject1).getBytes("UTF-16LE");
        break label458;
        if (localObject3 == null) {
          break label480;
        }
        i = localObject3.length;
        localObject1 = getUser();
        if ((localObject1 == null) || (((String)localObject1).length() == 0)) {
          break label436;
        }
        if (k == 0) {
          break label362;
        }
        localObject1 = ((String)localObject1).getBytes("UTF-16LE");
        break label465;
        if (localObject5 == null) {
          break label485;
        }
      }
    }
    label144:
    label153:
    label169:
    label185:
    label201:
    label362:
    label392:
    label397:
    label403:
    label409:
    label436:
    label458:
    label465:
    label472:
    label475:
    label478:
    label480:
    label485:
    for (int j = localObject5.length;; j = 0)
    {
      localObject1 = getWorkstation();
      Object localObject4;
      int m;
      int n;
      int i1;
      if ((localObject1 != null) && (((String)localObject1).length() != 0)) {
        if (k != 0)
        {
          localObject1 = ((String)localObject1).getBytes("UTF-16LE");
          break label472;
          if (localObject1 == null) {
            break label392;
          }
          k = localObject1.length;
          localObject4 = getLMResponse();
          if (localObject4 == null) {
            break label397;
          }
          m = localObject4.length;
          byte[] arrayOfByte1 = getNTResponse();
          if (arrayOfByte1 == null) {
            break label403;
          }
          n = arrayOfByte1.length;
          byte[] arrayOfByte2 = getSessionKey();
          if (arrayOfByte2 == null) {
            break label409;
          }
          i1 = arrayOfByte2.length;
          byte[] arrayOfByte3 = new byte[i1 + (i + 64 + j + k + m + n)];
          System.arraycopy(NTLMSSP_SIGNATURE, 0, arrayOfByte3, 0, 8);
          writeULong(arrayOfByte3, 8, 3);
          writeSecurityBuffer(arrayOfByte3, 12, 64, (byte[])localObject4);
          m += 64;
          writeSecurityBuffer(arrayOfByte3, 20, m, arrayOfByte1);
          m = n + m;
          writeSecurityBuffer(arrayOfByte3, 28, m, (byte[])localObject3);
          i = m + i;
          writeSecurityBuffer(arrayOfByte3, 36, i, (byte[])localObject5);
          i += j;
          writeSecurityBuffer(arrayOfByte3, 44, i, (byte[])localObject1);
          writeSecurityBuffer(arrayOfByte3, 52, i + k, arrayOfByte2);
          writeULong(arrayOfByte3, 60, i2);
          return arrayOfByte3;
        }
      }
      for (;;)
      {
        localObject4 = getOEMEncoding();
        break;
        localObject1 = ((String)localObject1).getBytes((String)localObject4);
        break label458;
        localObject1 = ((String)localObject1).toUpperCase().getBytes((String)localObject4);
        break label465;
        localObject1 = ((String)localObject1).toUpperCase().getBytes((String)localObject4);
        break label472;
        k = 0;
        break label153;
        m = 0;
        break label169;
        n = 0;
        break label185;
        i1 = 0;
        break label201;
        Object localObject2 = null;
        break label144;
        localObject5 = null;
        break label99;
        localObject3 = null;
        break label54;
        for (;;)
        {
          if (k == 0) {
            break label478;
          }
          localObject4 = null;
          break;
          localObject3 = localObject2;
          break label54;
          localObject5 = localObject2;
          break label99;
          break label144;
          k = 0;
        }
      }
      i = 0;
      break label63;
    }
  }
  
  public String toString()
  {
    Object localObject3 = getUser();
    String str1 = getDomain();
    String str2 = getWorkstation();
    Object localObject1 = getLMResponse();
    Object localObject2 = getNTResponse();
    byte[] arrayOfByte = getSessionKey();
    localObject3 = new StringBuilder().append("Type3Message[domain=").append(str1).append(",user=").append((String)localObject3).append(",workstation=").append(str2).append(",lmResponse=");
    if (localObject1 == null)
    {
      localObject1 = "null";
      localObject3 = ((StringBuilder)localObject3).append((String)localObject1).append(",ntResponse=");
      if (localObject2 != null) {
        break label196;
      }
      localObject1 = "null";
      label111:
      localObject2 = ((StringBuilder)localObject3).append((String)localObject1).append(",sessionKey=");
      if (arrayOfByte != null) {
        break label227;
      }
    }
    label196:
    label227:
    for (localObject1 = "null";; localObject1 = "<" + arrayOfByte.length + " bytes>")
    {
      return (String)localObject1 + ",flags=0x" + Hexdump.toHexString(getFlags(), 8) + "]";
      localObject1 = "<" + localObject1.length + " bytes>";
      break;
      localObject1 = "<" + localObject2.length + " bytes>";
      break label111;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.ntlmssp.Type3Message
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */