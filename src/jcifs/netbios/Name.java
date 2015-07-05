package jcifs.netbios;

import java.io.UnsupportedEncodingException;
import jcifs.Config;
import jcifs.util.Hexdump;

public class Name
{
  private static final String DEFAULT_SCOPE = Config.getProperty("jcifs.netbios.scope");
  static final String OEM_ENCODING = Config.getProperty("jcifs.encoding", System.getProperty("file.encoding"));
  private static final int SCOPE_OFFSET = 33;
  private static final int TYPE_OFFSET = 31;
  public int hexCode;
  public String name;
  public String scope;
  int srcHashCode;
  
  Name() {}
  
  public Name(String paramString1, int paramInt, String paramString2)
  {
    String str = paramString1;
    if (paramString1.length() > 15) {
      str = paramString1.substring(0, 15);
    }
    name = str.toUpperCase();
    hexCode = paramInt;
    if ((paramString2 != null) && (paramString2.length() > 0)) {}
    for (;;)
    {
      scope = paramString2;
      srcHashCode = 0;
      return;
      paramString2 = DEFAULT_SCOPE;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (!(paramObject instanceof Name)) {
      bool = false;
    }
    do
    {
      do
      {
        return bool;
        paramObject = (Name)paramObject;
        if ((scope != null) || (scope != null)) {
          break;
        }
      } while ((name.equals(name)) && (hexCode == hexCode));
      return false;
    } while ((name.equals(name)) && (hexCode == hexCode) && (scope.equals(scope)));
    return false;
  }
  
  public int hashCode()
  {
    int j = name.hashCode() + hexCode * 65599 + srcHashCode * 65599;
    int i = j;
    if (scope != null)
    {
      i = j;
      if (scope.length() != 0) {
        i = j + scope.hashCode();
      }
    }
    return i;
  }
  
  int readScopeWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramInt + 1;
    int k = paramArrayOfByte[paramInt] & 0xFF;
    if (k == 0)
    {
      scope = null;
      return 1;
    }
    int i = j;
    try
    {
      StringBuffer localStringBuffer = new StringBuffer(new String(paramArrayOfByte, j, k, OEM_ENCODING));
      for (i = j + k;; i = j + k)
      {
        j = i + 1;
        k = paramArrayOfByte[i] & 0xFF;
        if (k == 0) {
          break;
        }
        i = j;
        localStringBuffer.append('.').append(new String(paramArrayOfByte, j, k, OEM_ENCODING));
      }
      i = j;
      scope = localStringBuffer.toString();
      i = j;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      for (;;) {}
    }
    return i - paramInt;
  }
  
  int readWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[33];
    int i = 0;
    int j = 15;
    while (i < 15)
    {
      arrayOfByte[i] = ((byte)((paramArrayOfByte[(i * 2 + 1 + paramInt)] & 0xFF) - 65 << 4));
      arrayOfByte[i] = ((byte)(arrayOfByte[i] | (byte)((paramArrayOfByte[(i * 2 + 2 + paramInt)] & 0xFF) - 65 & 0xF)));
      if (arrayOfByte[i] != 32) {
        j = i + 1;
      }
      i += 1;
    }
    try
    {
      name = new String(arrayOfByte, 0, j, OEM_ENCODING);
      hexCode = ((paramArrayOfByte[(paramInt + 31)] & 0xFF) - 65 << 4);
      hexCode |= (paramArrayOfByte[(paramInt + 31 + 1)] & 0xFF) - 65 & 0xF;
      return readScopeWireFormat(paramArrayOfByte, paramInt + 33) + 33;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;) {}
    }
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = name;
    Object localObject;
    if (str == null) {
      localObject = "null";
    }
    for (;;)
    {
      localStringBuffer.append((String)localObject).append("<").append(Hexdump.toHexString(hexCode, 2)).append(">");
      if (scope != null) {
        localStringBuffer.append(".").append(scope);
      }
      return localStringBuffer.toString();
      localObject = str;
      if (str.charAt(0) == '\001')
      {
        localObject = str.toCharArray();
        localObject[0] = 46;
        localObject[1] = 46;
        localObject[14] = 46;
        localObject = new String((char[])localObject);
      }
    }
  }
  
  int writeScopeWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    if (scope == null)
    {
      paramArrayOfByte[paramInt] = 0;
      return 1;
    }
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = 46;
    try
    {
      System.arraycopy(scope.getBytes(OEM_ENCODING), 0, paramArrayOfByte, i, scope.length());
      paramInt = i + scope.length();
      paramArrayOfByte[paramInt] = 0;
      int j = paramInt + 1 - 2;
      int k = scope.length();
      i = j;
      paramInt = 0;
      if (paramArrayOfByte[i] == 46)
      {
        paramArrayOfByte[i] = ((byte)paramInt);
        paramInt = 0;
      }
      while (i <= j - k)
      {
        return scope.length() + 2;
        paramInt += 1;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        continue;
        i -= 1;
      }
    }
  }
  
  int writeWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = 32;
    for (;;)
    {
      int j;
      try
      {
        byte[] arrayOfByte = name.getBytes(OEM_ENCODING);
        int i = 0;
        j = i;
        if (i >= arrayOfByte.length) {
          break label136;
        }
        paramArrayOfByte[(i * 2 + 1 + paramInt)] = ((byte)(((arrayOfByte[i] & 0xF0) >> 4) + 65));
        paramArrayOfByte[(i * 2 + 2 + paramInt)] = ((byte)((arrayOfByte[i] & 0xF) + 65));
        i += 1;
        continue;
        paramArrayOfByte[(paramInt + 31)] = ((byte)(((hexCode & 0xF0) >> 4) + 65));
        paramArrayOfByte[(paramInt + 31 + 1)] = ((byte)((hexCode & 0xF) + 65));
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        continue;
      }
      return writeScopeWireFormat(paramArrayOfByte, paramInt + 33) + 33;
      label136:
      while (j < 15)
      {
        paramArrayOfByte[(j * 2 + 1 + paramInt)] = 67;
        paramArrayOfByte[(j * 2 + 2 + paramInt)] = 65;
        j += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.Name
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */