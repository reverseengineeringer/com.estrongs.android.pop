package jcifs.smb;

import jcifs.util.Hexdump;

public class ACE
{
  public static final int DELETE = 65536;
  public static final int FILE_APPEND_DATA = 4;
  public static final int FILE_DELETE = 64;
  public static final int FILE_EXECUTE = 32;
  public static final int FILE_READ_ATTRIBUTES = 128;
  public static final int FILE_READ_DATA = 1;
  public static final int FILE_READ_EA = 8;
  public static final int FILE_WRITE_ATTRIBUTES = 256;
  public static final int FILE_WRITE_DATA = 2;
  public static final int FILE_WRITE_EA = 16;
  public static final int FLAGS_CONTAINER_INHERIT = 2;
  public static final int FLAGS_INHERITED = 16;
  public static final int FLAGS_INHERIT_ONLY = 8;
  public static final int FLAGS_NO_PROPAGATE = 4;
  public static final int FLAGS_OBJECT_INHERIT = 1;
  public static final int GENERIC_ALL = 268435456;
  public static final int GENERIC_EXECUTE = 536870912;
  public static final int GENERIC_READ = Integer.MIN_VALUE;
  public static final int GENERIC_WRITE = 1073741824;
  public static final int READ_CONTROL = 131072;
  public static final int SYNCHRONIZE = 1048576;
  public static final int WRITE_DAC = 262144;
  public static final int WRITE_OWNER = 524288;
  int access;
  boolean allow;
  int flags;
  SID sid;
  
  void appendCol(StringBuffer paramStringBuffer, String paramString, int paramInt)
  {
    paramStringBuffer.append(paramString);
    int j = paramString.length();
    int i = 0;
    while (i < paramInt - j)
    {
      paramStringBuffer.append(' ');
      i += 1;
    }
  }
  
  int decode(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    if (paramArrayOfByte[paramInt] == 0) {}
    for (boolean bool = true;; bool = false)
    {
      allow = bool;
      paramInt = i + 1;
      flags = (paramArrayOfByte[i] & 0xFF);
      i = ServerMessageBlock.readInt2(paramArrayOfByte, paramInt);
      paramInt += 2;
      access = ServerMessageBlock.readInt4(paramArrayOfByte, paramInt);
      sid = new SID(paramArrayOfByte, paramInt + 4);
      return i;
    }
  }
  
  public int getAccessMask()
  {
    return access;
  }
  
  public String getApplyToText()
  {
    switch (flags & 0xB)
    {
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    default: 
      return "Invalid";
    case 0: 
      return "This folder only";
    case 3: 
      return "This folder, subfolders and files";
    case 11: 
      return "Subfolders and files only";
    case 2: 
      return "This folder and subfolders";
    case 10: 
      return "Subfolders only";
    case 1: 
      return "This folder and files";
    }
    return "Files only";
  }
  
  public int getFlags()
  {
    return flags;
  }
  
  public SID getSID()
  {
    return sid;
  }
  
  public boolean isAllow()
  {
    return allow;
  }
  
  public boolean isInherited()
  {
    return (flags & 0x10) != 0;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (isAllow())
    {
      str = "Allow ";
      localStringBuffer.append(str);
      appendCol(localStringBuffer, sid.toDisplayString(), 25);
      localStringBuffer.append(" 0x").append(Hexdump.toHexString(access, 8)).append(' ');
      if (!isInherited()) {
        break label100;
      }
    }
    label100:
    for (String str = "Inherited ";; str = "Direct    ")
    {
      localStringBuffer.append(str);
      appendCol(localStringBuffer, getApplyToText(), 34);
      return localStringBuffer.toString();
      str = "Deny  ";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.ACE
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */