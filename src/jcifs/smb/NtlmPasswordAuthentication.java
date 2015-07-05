package jcifs.smb;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Principal;
import java.util.Arrays;
import java.util.Random;
import jcifs.Config;
import jcifs.util.DES;
import jcifs.util.Encdec;
import jcifs.util.HMACT64;
import jcifs.util.LogStream;
import jcifs.util.MD4;

public final class NtlmPasswordAuthentication
  implements Serializable, Principal
{
  public static final NtlmPasswordAuthentication ANONYMOUS;
  static final String BLANK = "";
  static final NtlmPasswordAuthentication DEFAULT = new NtlmPasswordAuthentication(null);
  static String DEFAULT_DOMAIN;
  static String DEFAULT_PASSWORD;
  static String DEFAULT_USERNAME;
  static final NtlmPasswordAuthentication GUEST;
  private static final int LM_COMPATIBILITY = Config.getInt("jcifs.smb.lmCompatibility", 3);
  static final NtlmPasswordAuthentication NULL;
  private static final Random RANDOM = new Random();
  private static final byte[] S8;
  private static LogStream log = LogStream.getInstance();
  byte[] ansiHash;
  byte[] challenge = null;
  byte[] clientChallenge = null;
  String domain;
  boolean hashesExternal = false;
  String password;
  byte[] unicodeHash;
  String username;
  
  static
  {
    S8 = new byte[] { 75, 71, 83, 33, 64, 35, 36, 37 };
    ANONYMOUS = new NtlmPasswordAuthentication("", "", "");
    NULL = new NtlmPasswordAuthentication("", "", "");
    GUEST = new NtlmPasswordAuthentication("?", "GUEST", "");
  }
  
  public NtlmPasswordAuthentication(String paramString)
  {
    password = null;
    username = null;
    domain = null;
    if (paramString != null) {}
    try
    {
      String str = unescape(paramString);
      paramString = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      int m;
      int j;
      int i;
      int n;
      int k;
      for (;;) {}
    }
    m = paramString.length();
    j = 0;
    i = 0;
    if (i < m)
    {
      n = paramString.charAt(i);
      if (n == 59)
      {
        domain = paramString.substring(0, i);
        k = i + 1;
      }
      do
      {
        i += 1;
        j = k;
        break;
        k = j;
      } while (n != 58);
      password = paramString.substring(i + 1);
    }
    username = paramString.substring(j, i);
    initDefaults();
    if (domain == null) {
      domain = DEFAULT_DOMAIN;
    }
    if (username == null) {
      username = DEFAULT_USERNAME;
    }
    if (password == null) {
      password = DEFAULT_PASSWORD;
    }
  }
  
  public NtlmPasswordAuthentication(String paramString1, String paramString2, String paramString3)
  {
    String str1 = paramString1;
    String str2 = paramString2;
    int i;
    if (paramString2 != null)
    {
      i = paramString2.indexOf('@');
      if (i <= 0) {
        break label117;
      }
      str1 = paramString2.substring(i + 1);
      str2 = paramString2.substring(0, i);
    }
    for (;;)
    {
      domain = str1;
      username = str2;
      password = paramString3;
      initDefaults();
      if (str1 == null) {
        domain = DEFAULT_DOMAIN;
      }
      if (str2 == null) {
        username = DEFAULT_USERNAME;
      }
      if (paramString3 == null) {
        password = DEFAULT_PASSWORD;
      }
      return;
      label117:
      i = paramString2.indexOf('\\');
      str1 = paramString1;
      str2 = paramString2;
      if (i > 0)
      {
        str1 = paramString2.substring(0, i);
        str2 = paramString2.substring(i + 1);
      }
    }
  }
  
  public NtlmPasswordAuthentication(String paramString1, String paramString2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramArrayOfByte2 == null) || (paramArrayOfByte3 == null)) {
      throw new IllegalArgumentException("External credentials cannot be null");
    }
    domain = paramString1;
    username = paramString2;
    password = null;
    challenge = paramArrayOfByte1;
    ansiHash = paramArrayOfByte2;
    unicodeHash = paramArrayOfByte3;
    hashesExternal = true;
  }
  
  private static void E(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    byte[] arrayOfByte1 = new byte[7];
    byte[] arrayOfByte2 = new byte[8];
    int i = 0;
    while (i < paramArrayOfByte1.length / 7)
    {
      System.arraycopy(paramArrayOfByte1, i * 7, arrayOfByte1, 0, 7);
      new DES(arrayOfByte1).encrypt(paramArrayOfByte2, arrayOfByte2);
      System.arraycopy(arrayOfByte2, 0, paramArrayOfByte3, i * 8, 8);
      i += 1;
    }
  }
  
  static byte[] computeResponse(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, int paramInt1, int paramInt2)
  {
    paramArrayOfByte1 = new HMACT64(paramArrayOfByte1);
    paramArrayOfByte1.update(paramArrayOfByte2);
    paramArrayOfByte1.update(paramArrayOfByte3, paramInt1, paramInt2);
    paramArrayOfByte1 = paramArrayOfByte1.digest();
    paramArrayOfByte2 = new byte[paramArrayOfByte1.length + paramArrayOfByte3.length];
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte3, 0, paramArrayOfByte2, paramArrayOfByte1.length, paramArrayOfByte3.length);
    return paramArrayOfByte2;
  }
  
  public static byte[] getLMv2Response(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      byte[] arrayOfByte = new byte[16];
      arrayOfByte = new byte[24];
      MD4 localMD4 = new MD4();
      localMD4.update(paramString3.getBytes("UTF-16LE"));
      paramString3 = new HMACT64(localMD4.digest());
      paramString3.update(paramString2.toUpperCase().getBytes("UTF-16LE"));
      paramString3.update(paramString1.toUpperCase().getBytes("UTF-16LE"));
      paramString1 = new HMACT64(paramString3.digest());
      paramString1.update(paramArrayOfByte1);
      paramString1.update(paramArrayOfByte2);
      paramString1.digest(arrayOfByte, 0, 16);
      System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, 16, 8);
      return arrayOfByte;
    }
    catch (Exception paramString1)
    {
      paramString2 = log;
      if (LogStream.level > 0) {
        paramString1.printStackTrace(log);
      }
    }
    return null;
  }
  
  public static byte[] getLMv2Response(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    return computeResponse(paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3, 0, paramArrayOfByte3.length);
  }
  
  public static byte[] getNTLM2Response(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    byte[] arrayOfByte = new byte[8];
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte2);
      localMessageDigest.update(paramArrayOfByte3, 0, 8);
      System.arraycopy(localMessageDigest.digest(), 0, arrayOfByte, 0, 8);
      paramArrayOfByte2 = new byte[21];
      System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, 16);
      paramArrayOfByte1 = new byte[24];
      E(paramArrayOfByte2, arrayOfByte, paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (GeneralSecurityException paramArrayOfByte1)
    {
      paramArrayOfByte2 = log;
      if (LogStream.level > 0) {
        paramArrayOfByte1.printStackTrace(log);
      }
      throw new RuntimeException("MD5", paramArrayOfByte1);
    }
  }
  
  public static byte[] getNTLMResponse(String paramString, byte[] paramArrayOfByte)
  {
    Object localObject = null;
    byte[] arrayOfByte1 = new byte[21];
    byte[] arrayOfByte2 = new byte[24];
    try
    {
      paramString = paramString.getBytes("UTF-16LE");
      localObject = new MD4();
      ((MD4)localObject).update(paramString);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      try
      {
        do
        {
          ((MD4)localObject).digest(arrayOfByte1, 0, 16);
          E(arrayOfByte1, paramArrayOfByte, arrayOfByte2);
          return arrayOfByte2;
          localUnsupportedEncodingException = localUnsupportedEncodingException;
          paramString = log;
          paramString = (String)localObject;
        } while (LogStream.level <= 0);
        localUnsupportedEncodingException.printStackTrace(log);
        paramString = (String)localObject;
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          localObject = log;
          if (LogStream.level > 0) {
            paramString.printStackTrace(log);
          }
        }
      }
    }
  }
  
  public static byte[] getNTLMv2Response(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, long paramLong, byte[] paramArrayOfByte4)
  {
    if (paramArrayOfByte4 != null) {}
    for (int i = paramArrayOfByte4.length;; i = 0)
    {
      byte[] arrayOfByte = new byte[i + 28 + 4];
      Encdec.enc_uint32le(257, arrayOfByte, 0);
      Encdec.enc_uint32le(0, arrayOfByte, 4);
      Encdec.enc_uint64le(paramLong, arrayOfByte, 8);
      System.arraycopy(paramArrayOfByte3, 0, arrayOfByte, 16, 8);
      Encdec.enc_uint32le(0, arrayOfByte, 24);
      if (paramArrayOfByte4 != null) {
        System.arraycopy(paramArrayOfByte4, 0, arrayOfByte, 28, i);
      }
      Encdec.enc_uint32le(0, arrayOfByte, i + 28);
      return computeResponse(paramArrayOfByte1, paramArrayOfByte2, arrayOfByte, 0, arrayOfByte.length);
    }
  }
  
  public static byte[] getPreNTLMResponse(String paramString, byte[] paramArrayOfByte)
  {
    int i = 14;
    byte[] arrayOfByte1 = new byte[14];
    byte[] arrayOfByte2 = new byte[21];
    byte[] arrayOfByte3 = new byte[24];
    for (;;)
    {
      int j;
      try
      {
        paramString = paramString.toUpperCase().getBytes(ServerMessageBlock.OEM_ENCODING);
        j = paramString.length;
        if (j > 14)
        {
          System.arraycopy(paramString, 0, arrayOfByte1, 0, i);
          E(arrayOfByte1, S8, arrayOfByte2);
          E(arrayOfByte2, paramArrayOfByte, arrayOfByte3);
          return arrayOfByte3;
        }
      }
      catch (UnsupportedEncodingException paramString)
      {
        throw new RuntimeException("Try setting jcifs.encoding=US-ASCII", paramString);
      }
      i = j;
    }
  }
  
  static void initDefaults()
  {
    if (DEFAULT_DOMAIN != null) {
      return;
    }
    DEFAULT_DOMAIN = Config.getProperty("jcifs.smb.client.domain", "?");
    DEFAULT_USERNAME = Config.getProperty("jcifs.smb.client.username", "GUEST");
    DEFAULT_PASSWORD = Config.getProperty("jcifs.smb.client.password", "");
  }
  
  public static byte[] nTOWFv1(String paramString)
  {
    if (paramString == null) {
      throw new RuntimeException("Password parameter is required");
    }
    try
    {
      MD4 localMD4 = new MD4();
      localMD4.update(paramString.getBytes("UTF-16LE"));
      paramString = localMD4.digest();
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException(paramString.getMessage());
    }
  }
  
  public static byte[] nTOWFv2(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      MD4 localMD4 = new MD4();
      localMD4.update(paramString3.getBytes("UTF-16LE"));
      paramString3 = new HMACT64(localMD4.digest());
      paramString3.update(paramString2.toUpperCase().getBytes("UTF-16LE"));
      paramString3.update(paramString1.getBytes("UTF-16LE"));
      paramString1 = paramString3.digest();
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new RuntimeException(paramString1.getMessage());
    }
  }
  
  static String unescape(String paramString)
  {
    byte[] arrayOfByte = new byte[1];
    if (paramString == null) {
      return null;
    }
    int n = paramString.length();
    char[] arrayOfChar = new char[n];
    int k = 0;
    int m = 0;
    int j = 0;
    if (j < n)
    {
      switch (k)
      {
      }
      for (;;)
      {
        j += 1;
        break;
        int i = paramString.charAt(j);
        if (i == 37)
        {
          k = 1;
        }
        else
        {
          arrayOfChar[m] = i;
          m += 1;
          continue;
          arrayOfByte[0] = ((byte)(Integer.parseInt(paramString.substring(j, j + 2), 16) & 0xFF));
          arrayOfChar[m] = new String(arrayOfByte, 0, 1, "ASCII").charAt(0);
          j += 1;
          m += 1;
          k = 0;
        }
      }
    }
    return new String(arrayOfChar, 0, m);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof NtlmPasswordAuthentication))
    {
      paramObject = (NtlmPasswordAuthentication)paramObject;
      if ((domain.toUpperCase().equals(domain.toUpperCase())) && (username.toUpperCase().equals(username.toUpperCase())))
      {
        if ((hashesExternal) && (hashesExternal)) {
          if ((!Arrays.equals(ansiHash, ansiHash)) || (!Arrays.equals(unicodeHash, unicodeHash))) {}
        }
        while ((!hashesExternal) && (password.equals(password)))
        {
          return true;
          return false;
        }
      }
    }
    return false;
  }
  
  public byte[] getAnsiHash(byte[] paramArrayOfByte)
  {
    if (hashesExternal) {
      return ansiHash;
    }
    switch (LM_COMPATIBILITY)
    {
    default: 
      return getPreNTLMResponse(password, paramArrayOfByte);
    case 0: 
    case 1: 
      return getPreNTLMResponse(password, paramArrayOfByte);
    case 2: 
      return getNTLMResponse(password, paramArrayOfByte);
    }
    if (clientChallenge == null)
    {
      clientChallenge = new byte[8];
      RANDOM.nextBytes(clientChallenge);
    }
    return getLMv2Response(domain, username, password, paramArrayOfByte, clientChallenge);
  }
  
  public String getDomain()
  {
    return domain;
  }
  
  public String getName()
  {
    if ((domain.length() > 0) && (!domain.equals("?"))) {}
    for (int i = 1; i != 0; i = 0) {
      return domain + "\\" + username;
    }
    return username;
  }
  
  public String getPassword()
  {
    return password;
  }
  
  public byte[] getSigningKey(byte[] paramArrayOfByte)
  {
    switch (LM_COMPATIBILITY)
    {
    default: 
      return null;
    case 0: 
    case 1: 
    case 2: 
      byte[] arrayOfByte = new byte[40];
      getUserSessionKey(paramArrayOfByte, arrayOfByte, 0);
      System.arraycopy(getUnicodeHash(paramArrayOfByte), 0, arrayOfByte, 16, 24);
      return arrayOfByte;
    }
    throw new SmbException("NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)");
  }
  
  public byte[] getUnicodeHash(byte[] paramArrayOfByte)
  {
    if (hashesExternal) {
      return unicodeHash;
    }
    switch (LM_COMPATIBILITY)
    {
    default: 
      return getNTLMResponse(password, paramArrayOfByte);
    case 0: 
    case 1: 
    case 2: 
      return getNTLMResponse(password, paramArrayOfByte);
    }
    return new byte[0];
  }
  
  void getUserSessionKey(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    if (hashesExternal) {
      return;
    }
    for (;;)
    {
      try
      {
        localObject = new MD4();
        ((MD4)localObject).update(password.getBytes("UTF-16LE"));
        switch (LM_COMPATIBILITY)
        {
        case 0: 
          ((MD4)localObject).update(((MD4)localObject).digest());
          ((MD4)localObject).digest(paramArrayOfByte2, paramInt, 16);
          return;
        }
      }
      catch (Exception paramArrayOfByte1)
      {
        throw new SmbException("", paramArrayOfByte1);
      }
      ((MD4)localObject).update(((MD4)localObject).digest());
      ((MD4)localObject).digest(paramArrayOfByte2, paramInt, 16);
      return;
      if (clientChallenge == null)
      {
        clientChallenge = new byte[8];
        RANDOM.nextBytes(clientChallenge);
      }
      Object localObject = new HMACT64(((MD4)localObject).digest());
      ((HMACT64)localObject).update(username.toUpperCase().getBytes("UTF-16LE"));
      ((HMACT64)localObject).update(domain.toUpperCase().getBytes("UTF-16LE"));
      byte[] arrayOfByte = ((HMACT64)localObject).digest();
      localObject = new HMACT64(arrayOfByte);
      ((HMACT64)localObject).update(paramArrayOfByte1);
      ((HMACT64)localObject).update(clientChallenge);
      paramArrayOfByte1 = new HMACT64(arrayOfByte);
      paramArrayOfByte1.update(((HMACT64)localObject).digest());
      paramArrayOfByte1.digest(paramArrayOfByte2, paramInt, 16);
      return;
    }
  }
  
  public byte[] getUserSessionKey(byte[] paramArrayOfByte)
  {
    if (hashesExternal) {
      paramArrayOfByte = null;
    }
    byte[] arrayOfByte;
    do
    {
      return paramArrayOfByte;
      arrayOfByte = new byte[16];
      try
      {
        getUserSessionKey(paramArrayOfByte, arrayOfByte, 0);
        return arrayOfByte;
      }
      catch (Exception localException)
      {
        paramArrayOfByte = log;
        paramArrayOfByte = arrayOfByte;
      }
    } while (LogStream.level <= 0);
    localException.printStackTrace(log);
    return arrayOfByte;
  }
  
  public String getUsername()
  {
    return username;
  }
  
  public int hashCode()
  {
    return getName().toUpperCase().hashCode();
  }
  
  public String toString()
  {
    return getName();
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NtlmPasswordAuthentication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */