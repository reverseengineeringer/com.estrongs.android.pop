package jcifs.smb;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import jcifs.util.Encdec;

public class SmbRandomAccessFile
  implements DataInput, DataOutput
{
  private static final int WRITE_OPTIONS = 2114;
  private int access = 0;
  private int ch;
  private SmbFile file;
  private long fp;
  private int openFlags;
  private int options = 0;
  private int readSize;
  private byte[] tmp = new byte[8];
  private int writeSize;
  private SmbComWriteAndXResponse write_andx_resp = null;
  
  public SmbRandomAccessFile(String paramString1, String paramString2, int paramInt)
  {
    this(new SmbFile(paramString1, "", null, paramInt), paramString2);
  }
  
  public SmbRandomAccessFile(SmbFile paramSmbFile, String paramString)
  {
    file = paramSmbFile;
    if (paramString.equals("r"))
    {
      openFlags = 17;
      paramSmbFile.open(openFlags, access, 128, options);
      if ((tree.session.transport.server.capabilities & 0x4000) != 16384) {
        break label216;
      }
      readSize = Math.min(SmbConstants.RCV_BUF_SIZE - 70, 65465);
      label107:
      if (((tree.session.transport.server.capabilities & 0x8000) != 32768) || (tree.session.server_is_windows)) {
        break label239;
      }
    }
    label216:
    label239:
    for (writeSize = Math.min(SmbConstants.SND_BUF_SIZE - 70, 65465);; writeSize = Math.min(tree.session.transport.snd_buf_size - 70, tree.session.transport.server.maxBufferSize - 70))
    {
      fp = 0L;
      return;
      if (paramString.equals("rw"))
      {
        openFlags = 23;
        write_andx_resp = new SmbComWriteAndXResponse();
        options = 2114;
        access = 3;
        break;
      }
      throw new IllegalArgumentException("Invalid mode");
      readSize = (tree.session.transport.rcv_buf_size - 70);
      break label107;
    }
  }
  
  public void close()
  {
    file.close();
  }
  
  public long getFilePointer()
  {
    return fp;
  }
  
  public long length()
  {
    return file.length();
  }
  
  public int read()
  {
    if (read(tmp, 0, 1) == -1) {
      return -1;
    }
    return tmp[0] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 <= 0) {
      return 0;
    }
    long l = fp;
    if (!file.isOpen()) {
      file.open(openFlags, 0, 128, options);
    }
    paramArrayOfByte = new SmbComReadAndXResponse(paramArrayOfByte, paramInt1);
    int i;
    label133:
    label141:
    do
    {
      if (paramInt2 > readSize)
      {
        paramInt1 = readSize;
        file.send(new SmbComReadAndX(file.fid, fp, paramInt1, null), paramArrayOfByte);
        i = dataLength;
        if (i > 0) {
          break label141;
        }
        if (fp - l <= 0L) {
          break label133;
        }
      }
      for (l = fp - l;; l = -1L)
      {
        return (int)l;
        paramInt1 = paramInt2;
        break;
      }
      fp += i;
      paramInt2 -= i;
      off += i;
    } while ((paramInt2 > 0) && (i == paramInt1));
    return (int)(fp - l);
  }
  
  public final boolean readBoolean()
  {
    if (read(tmp, 0, 1) < 0) {
      throw new SmbException("EOF");
    }
    return tmp[0] != 0;
  }
  
  public final byte readByte()
  {
    if (read(tmp, 0, 1) < 0) {
      throw new SmbException("EOF");
    }
    return tmp[0];
  }
  
  public final char readChar()
  {
    if (read(tmp, 0, 2) < 0) {
      throw new SmbException("EOF");
    }
    return (char)Encdec.dec_uint16be(tmp, 0);
  }
  
  public final double readDouble()
  {
    if (read(tmp, 0, 8) < 0) {
      throw new SmbException("EOF");
    }
    return Encdec.dec_doublebe(tmp, 0);
  }
  
  public final float readFloat()
  {
    if (read(tmp, 0, 4) < 0) {
      throw new SmbException("EOF");
    }
    return Encdec.dec_floatbe(tmp, 0);
  }
  
  public final void readFully(byte[] paramArrayOfByte)
  {
    readFully(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    int j;
    do
    {
      int k = read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
      if (k < 0) {
        throw new SmbException("EOF");
      }
      j = i + k;
      fp += k;
      i = j;
    } while (j < paramInt2);
  }
  
  public final int readInt()
  {
    if (read(tmp, 0, 4) < 0) {
      throw new SmbException("EOF");
    }
    return Encdec.dec_uint32be(tmp, 0);
  }
  
  public final String readLine()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    int j = -1;
    for (;;)
    {
      if (i == 0)
      {
        j = read();
        switch (j)
        {
        default: 
          localStringBuffer.append((char)j);
          break;
        case -1: 
        case 10: 
          i = 1;
          break;
        case 13: 
          long l = fp;
          if (read() == 10) {
            break label117;
          }
          fp = l;
          i = 1;
          break;
        }
      }
      else
      {
        if ((j == -1) && (localStringBuffer.length() == 0)) {
          return null;
        }
        return localStringBuffer.toString();
        label117:
        i = 1;
      }
    }
  }
  
  public final long readLong()
  {
    if (read(tmp, 0, 8) < 0) {
      throw new SmbException("EOF");
    }
    return Encdec.dec_uint64be(tmp, 0);
  }
  
  public final short readShort()
  {
    if (read(tmp, 0, 2) < 0) {
      throw new SmbException("EOF");
    }
    return Encdec.dec_uint16be(tmp, 0);
  }
  
  public final String readUTF()
  {
    int i = readUnsignedShort();
    Object localObject = new byte[i];
    read((byte[])localObject, 0, i);
    try
    {
      localObject = Encdec.dec_utf8((byte[])localObject, 0, i);
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      throw new SmbException("", localIOException);
    }
  }
  
  public final int readUnsignedByte()
  {
    if (read(tmp, 0, 1) < 0) {
      throw new SmbException("EOF");
    }
    return tmp[0] & 0xFF;
  }
  
  public final int readUnsignedShort()
  {
    if (read(tmp, 0, 2) < 0) {
      throw new SmbException("EOF");
    }
    return Encdec.dec_uint16be(tmp, 0) & 0xFFFF;
  }
  
  public void seek(long paramLong)
  {
    fp = paramLong;
  }
  
  public void setLength(long paramLong)
  {
    if (!file.isOpen()) {
      file.open(openFlags, 0, 128, options);
    }
    SmbComWriteResponse localSmbComWriteResponse = new SmbComWriteResponse();
    file.send(new SmbComWrite(file.fid, (int)(0xFFFFFFFF & paramLong), 0, tmp, 0, 0), localSmbComWriteResponse);
  }
  
  public int skipBytes(int paramInt)
  {
    if (paramInt > 0)
    {
      fp += paramInt;
      return paramInt;
    }
    return 0;
  }
  
  public void write(int paramInt)
  {
    tmp[0] = ((byte)paramInt);
    write(tmp, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 <= 0) {
      return;
    }
    int j = paramInt1;
    int i = paramInt2;
    if (!file.isOpen())
    {
      file.open(openFlags, 0, 128, options);
      i = paramInt2;
      j = paramInt1;
    }
    if (i > writeSize) {}
    for (paramInt1 = writeSize;; paramInt1 = i)
    {
      file.send(new SmbComWriteAndX(file.fid, fp, i - paramInt1, paramArrayOfByte, j, paramInt1, null), write_andx_resp);
      fp += write_andx_resp.count;
      paramInt1 = (int)(i - write_andx_resp.count);
      j = (int)(j + write_andx_resp.count);
      i = paramInt1;
      if (paramInt1 > 0) {
        break;
      }
      return;
    }
  }
  
  public final void writeBoolean(boolean paramBoolean)
  {
    byte[] arrayOfByte = tmp;
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      arrayOfByte[0] = ((byte)i);
      write(tmp, 0, 1);
      return;
    }
  }
  
  public final void writeByte(int paramInt)
  {
    tmp[0] = ((byte)paramInt);
    write(tmp, 0, 1);
  }
  
  public final void writeBytes(String paramString)
  {
    paramString = paramString.getBytes();
    write(paramString, 0, paramString.length);
  }
  
  public final void writeChar(int paramInt)
  {
    Encdec.enc_uint16be((short)paramInt, tmp, 0);
    write(tmp, 0, 2);
  }
  
  public final void writeChars(String paramString)
  {
    int k = paramString.length();
    int m = k * 2;
    byte[] arrayOfByte = new byte[m];
    char[] arrayOfChar = new char[k];
    paramString.getChars(0, k, arrayOfChar, 0);
    int j = 0;
    int i = 0;
    while (i < k)
    {
      int n = j + 1;
      arrayOfByte[j] = ((byte)(arrayOfChar[i] >>> '\b'));
      j = n + 1;
      arrayOfByte[n] = ((byte)(arrayOfChar[i] >>> '\000'));
      i += 1;
    }
    write(arrayOfByte, 0, m);
  }
  
  public final void writeDouble(double paramDouble)
  {
    Encdec.enc_doublebe(paramDouble, tmp, 0);
    write(tmp, 0, 8);
  }
  
  public final void writeFloat(float paramFloat)
  {
    Encdec.enc_floatbe(paramFloat, tmp, 0);
    write(tmp, 0, 4);
  }
  
  public final void writeInt(int paramInt)
  {
    Encdec.enc_uint32be(paramInt, tmp, 0);
    write(tmp, 0, 4);
  }
  
  public final void writeLong(long paramLong)
  {
    Encdec.enc_uint64be(paramLong, tmp, 0);
    write(tmp, 0, 8);
  }
  
  public final void writeShort(int paramInt)
  {
    Encdec.enc_uint16be((short)paramInt, tmp, 0);
    write(tmp, 0, 2);
  }
  
  public final void writeUTF(String paramString)
  {
    int m = paramString.length();
    int j = 0;
    int k = 0;
    if (j < m)
    {
      int i = paramString.charAt(j);
      if (i > 127) {
        if (i > 2047) {
          i = 3;
        }
      }
      for (;;)
      {
        k += i;
        j += 1;
        break;
        i = 2;
        continue;
        i = 1;
      }
    }
    byte[] arrayOfByte = new byte[k];
    writeShort(k);
    try
    {
      Encdec.enc_utf8(paramString, arrayOfByte, 0, k);
      write(arrayOfByte, 0, k);
      return;
    }
    catch (IOException paramString)
    {
      throw new SmbException("", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbRandomAccessFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */