package jcifs.ntlmssp;

import java.io.IOException;
import java.net.UnknownHostException;
import jcifs.Config;
import jcifs.netbios.NbtAddress;
import jcifs.util.Hexdump;

public class Type2Message
  extends NtlmMessage
{
  private static final String DEFAULT_DOMAIN;
  private static final int DEFAULT_FLAGS;
  private static final byte[] DEFAULT_TARGET_INFORMATION;
  private byte[] challenge;
  private byte[] context;
  private String target;
  private byte[] targetInformation;
  
  static
  {
    int i;
    if (Config.getBoolean("jcifs.smb.client.useUnicode", true)) {
      i = 1;
    }
    for (;;)
    {
      DEFAULT_FLAGS = i | 0x200;
      DEFAULT_DOMAIN = Config.getProperty("jcifs.smb.client.domain", null);
      Object localObject3 = new byte[0];
      Object localObject1 = localObject3;
      if (DEFAULT_DOMAIN != null) {}
      try
      {
        localObject1 = DEFAULT_DOMAIN.getBytes("UTF-16LE");
        int m = localObject1.length;
        byte[] arrayOfByte = new byte[0];
        try
        {
          str = NbtAddress.getLocalHost().getHostName();
          localObject3 = arrayOfByte;
          if (str == null) {}
        }
        catch (UnknownHostException localUnknownHostException)
        {
          try
          {
            String str;
            label100:
            label199:
            Object localObject4;
            for (localObject3 = str.getBytes("UTF-16LE");; localObject4 = arrayOfByte)
            {
              int k = localObject3.length;
              if (m > 0)
              {
                i = m + 4;
                if (k <= 0) {
                  break label199;
                }
              }
              for (int j = k + 4;; j = 0)
              {
                arrayOfByte = new byte[j + i + 4];
                if (m <= 0) {
                  break label231;
                }
                writeUShort(arrayOfByte, 0, 2);
                writeUShort(arrayOfByte, 2, m);
                System.arraycopy(localObject1, 0, arrayOfByte, 4, m);
                i = m + 4;
                if (k > 0)
                {
                  writeUShort(arrayOfByte, i, 1);
                  i += 2;
                  writeUShort(arrayOfByte, i, k);
                  System.arraycopy(localObject3, 0, arrayOfByte, i + 2, k);
                }
                DEFAULT_TARGET_INFORMATION = arrayOfByte;
                return;
                i = 2;
                break;
                i = 0;
                break label100;
              }
              localUnknownHostException = localUnknownHostException;
            }
          }
          catch (IOException localIOException2)
          {
            for (;;)
            {
              localObject5 = arrayOfByte;
            }
          }
        }
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          Object localObject5;
          Object localObject2 = localObject5;
          continue;
          label231:
          i = 0;
        }
      }
    }
  }
  
  public Type2Message()
  {
    this(getDefaultFlags(), null, null);
  }
  
  public Type2Message(int paramInt, byte[] paramArrayOfByte, String paramString)
  {
    setFlags(paramInt);
    setChallenge(paramArrayOfByte);
    setTarget(paramString);
    if (paramString != null) {
      setTargetInformation(getDefaultTargetInformation());
    }
  }
  
  public Type2Message(Type1Message paramType1Message)
  {
    this(paramType1Message, null, null);
  }
  
  public Type2Message(Type1Message paramType1Message, byte[] paramArrayOfByte, String paramString)
  {
    this(i, paramArrayOfByte, str);
  }
  
  public Type2Message(byte[] paramArrayOfByte)
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
  
  public static int getDefaultFlags(Type1Message paramType1Message)
  {
    if (paramType1Message == null)
    {
      i = DEFAULT_FLAGS;
      return i;
    }
    int k = paramType1Message.getFlags();
    if ((k & 0x1) != 0) {}
    for (int i = 1;; i = 2)
    {
      int j = i | 0x200;
      i = j;
      if ((k & 0x4) == 0) {
        break;
      }
      i = j;
      if (getDefaultDomain() == null) {
        break;
      }
      return j | 0x10004;
    }
  }
  
  public static byte[] getDefaultTargetInformation()
  {
    return DEFAULT_TARGET_INFORMATION;
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
    if (readULong(paramArrayOfByte, 8) != 2) {
      throw new IOException("Not a Type 2 message.");
    }
    i = readULong(paramArrayOfByte, 20);
    setFlags(i);
    Object localObject = null;
    byte[] arrayOfByte = readSecurityBuffer(paramArrayOfByte, 12);
    if (arrayOfByte.length != 0)
    {
      if ((i & 0x1) != 0)
      {
        localObject = "UTF-16LE";
        localObject = new String(arrayOfByte, (String)localObject);
      }
    }
    else
    {
      setTarget((String)localObject);
      i = 24;
    }
    int j;
    for (;;)
    {
      if (i < 32)
      {
        if (paramArrayOfByte[i] != 0)
        {
          localObject = new byte[8];
          System.arraycopy(paramArrayOfByte, 24, localObject, 0, 8);
          setChallenge((byte[])localObject);
        }
      }
      else
      {
        j = readULong(paramArrayOfByte, 16);
        if ((j != 32) && (paramArrayOfByte.length != 32)) {
          break label188;
        }
        return;
        localObject = getOEMEncoding();
        break;
      }
      i += 1;
    }
    label188:
    i = 32;
    for (;;)
    {
      if (i < 40)
      {
        if (paramArrayOfByte[i] != 0)
        {
          localObject = new byte[8];
          System.arraycopy(paramArrayOfByte, 32, localObject, 0, 8);
          setContext((byte[])localObject);
        }
      }
      else
      {
        if ((j == 40) || (paramArrayOfByte.length == 40)) {
          break;
        }
        paramArrayOfByte = readSecurityBuffer(paramArrayOfByte, 40);
        if (paramArrayOfByte.length == 0) {
          break;
        }
        setTargetInformation(paramArrayOfByte);
        return;
      }
      i += 1;
    }
  }
  
  public byte[] getChallenge()
  {
    return challenge;
  }
  
  public byte[] getContext()
  {
    return context;
  }
  
  public String getTarget()
  {
    return target;
  }
  
  public byte[] getTargetInformation()
  {
    return targetInformation;
  }
  
  public void setChallenge(byte[] paramArrayOfByte)
  {
    challenge = paramArrayOfByte;
  }
  
  public void setContext(byte[] paramArrayOfByte)
  {
    context = paramArrayOfByte;
  }
  
  public void setTarget(String paramString)
  {
    target = paramString;
  }
  
  public void setTargetInformation(byte[] paramArrayOfByte)
  {
    targetInformation = paramArrayOfByte;
  }
  
  public byte[] toByteArray()
  {
    for (;;)
    {
      Object localObject;
      byte[] arrayOfByte2;
      byte[] arrayOfByte4;
      int i;
      try
      {
        localObject = getTarget();
        byte[] arrayOfByte3 = getChallenge();
        arrayOfByte2 = getContext();
        arrayOfByte4 = getTargetInformation();
        i = getFlags();
        byte[] arrayOfByte1 = new byte[0];
        if ((i & 0x4) != 0)
        {
          if ((localObject == null) || (((String)localObject).length() == 0)) {
            break label301;
          }
          if ((i & 0x1) != 0)
          {
            arrayOfByte1 = ((String)localObject).getBytes("UTF-16LE");
            break label274;
            int j = i;
            if (arrayOfByte4 == null) {
              break label268;
            }
            i |= 0x800000;
            j = i;
            if (arrayOfByte2 != null) {
              break label268;
            }
            arrayOfByte2 = new byte[8];
            j = i;
            break label277;
            int m = arrayOfByte1.length;
            if (arrayOfByte4 == null) {
              break label309;
            }
            k = arrayOfByte4.length;
            localObject = new byte[k + (i + m)];
            System.arraycopy(NTLMSSP_SIGNATURE, 0, localObject, 0, 8);
            writeULong((byte[])localObject, 8, 2);
            writeSecurityBuffer((byte[])localObject, 12, i, arrayOfByte1);
            writeULong((byte[])localObject, 20, j);
            if (arrayOfByte3 != null)
            {
              System.arraycopy(arrayOfByte3, 0, localObject, 24, 8);
              if (arrayOfByte2 != null) {
                System.arraycopy(arrayOfByte2, 0, localObject, 32, 8);
              }
              if (arrayOfByte4 == null) {
                break label298;
              }
              writeSecurityBuffer((byte[])localObject, 40, arrayOfByte1.length + i, arrayOfByte4);
              return (byte[])localObject;
            }
          }
          else
          {
            arrayOfByte1 = ((String)localObject).toUpperCase().getBytes(getOEMEncoding());
            break label274;
          }
          arrayOfByte3 = new byte[8];
          continue;
          continue;
        }
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException.getMessage());
      }
      label268:
      label274:
      label277:
      label285:
      do
      {
        do
        {
          i = 32;
          break label285;
          continue;
          break;
          break;
        } while (arrayOfByte2 == null);
        i = 40;
      } while (arrayOfByte4 == null);
      i += 8;
      continue;
      label298:
      return (byte[])localObject;
      label301:
      i &= 0xFFFFFFFB;
      continue;
      label309:
      int k = 0;
    }
  }
  
  public String toString()
  {
    Object localObject3 = getTarget();
    Object localObject1 = getChallenge();
    Object localObject2 = getContext();
    byte[] arrayOfByte = getTargetInformation();
    localObject3 = new StringBuilder().append("Type2Message[target=").append((String)localObject3).append(",challenge=");
    if (localObject1 == null)
    {
      localObject1 = "null";
      localObject3 = ((StringBuilder)localObject3).append((String)localObject1).append(",context=");
      if (localObject2 != null) {
        break label151;
      }
      localObject1 = "null";
      label72:
      localObject2 = ((StringBuilder)localObject3).append((String)localObject1).append(",targetInformation=");
      if (arrayOfByte != null) {
        break label180;
      }
    }
    label151:
    label180:
    for (localObject1 = "null";; localObject1 = "<" + arrayOfByte.length + " bytes>")
    {
      return (String)localObject1 + ",flags=0x" + Hexdump.toHexString(getFlags(), 8) + "]";
      localObject1 = "<" + localObject1.length + " bytes>";
      break;
      localObject1 = "<" + localObject2.length + " bytes>";
      break label72;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.ntlmssp.Type2Message
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */