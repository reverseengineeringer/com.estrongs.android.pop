package jcifs.smb;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import jcifs.util.LogStream;
import jcifs.util.transport.TransportException;

public class SmbFileInputStream
  extends InputStream
{
  private int access;
  SmbFile file;
  private long fp;
  private int openFlags;
  private int readSize;
  private int readSizeFile;
  private byte[] tmp = new byte[1];
  
  public SmbFileInputStream(String paramString)
  {
    this(new SmbFile(paramString));
  }
  
  public SmbFileInputStream(SmbFile paramSmbFile)
  {
    this(paramSmbFile, 1);
  }
  
  SmbFileInputStream(SmbFile paramSmbFile, int paramInt)
  {
    file = paramSmbFile;
    openFlags = (paramInt & 0xFFFF);
    access = (paramInt >>> 16 & 0xFFFF);
    if (type != 16)
    {
      paramSmbFile.open(paramInt, access, 128, 0);
      openFlags &= 0xFFFFFFAF;
    }
    for (;;)
    {
      readSize = (tree.session.transport.rcv_buf_size - 70);
      if ((tree.session.transport.server.capabilities & 0x4000) != 16384) {
        break;
      }
      readSizeFile = Math.min(SmbConstants.RCV_BUF_SIZE - 70, 65465);
      return;
      paramSmbFile.connect0();
    }
    readSizeFile = readSize;
  }
  
  public int available()
  {
    if (file.type != 16) {
      return 0;
    }
    try
    {
      SmbNamedPipe localSmbNamedPipe = (SmbNamedPipe)file;
      file.open(32, pipeType & 0xFF0000, 128, 0);
      TransPeekNamedPipe localTransPeekNamedPipe = new TransPeekNamedPipe(file.unc, file.fid);
      TransPeekNamedPipeResponse localTransPeekNamedPipeResponse = new TransPeekNamedPipeResponse(localSmbNamedPipe);
      localSmbNamedPipe.send(localTransPeekNamedPipe, localTransPeekNamedPipeResponse);
      if ((status == 1) || (status == 4))
      {
        file.opened = false;
        return 0;
      }
      int i = available;
      return i;
    }
    catch (SmbException localSmbException)
    {
      throw seToIoe(localSmbException);
    }
  }
  
  public void close()
  {
    try
    {
      file.close();
      tmp = null;
      return;
    }
    catch (SmbException localSmbException)
    {
      throw seToIoe(localSmbException);
    }
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
    return readDirect(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public int readDirect(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 <= 0) {
      return 0;
    }
    long l = fp;
    if (tmp == null) {
      throw new IOException("Bad file descriptor");
    }
    file.open(openFlags, access, 128, 0);
    Object localObject = file;
    localObject = SmbFile.log;
    if (LogStream.level >= 4)
    {
      localObject = file;
      SmbFile.log.println("read: fid=" + file.fid + ",off=" + paramInt1 + ",len=" + paramInt2);
    }
    paramArrayOfByte = new SmbComReadAndXResponse(paramArrayOfByte, paramInt1);
    paramInt1 = paramInt2;
    if (file.type == 16)
    {
      responseTimeout = 0L;
      paramInt1 = paramInt2;
    }
    label173:
    int i;
    label355:
    label390:
    label398:
    do
    {
      if (file.getType() == 1)
      {
        paramInt2 = readSizeFile;
        if (paramInt1 <= paramInt2) {
          break label355;
        }
        localObject = file;
        localObject = SmbFile.log;
        if (LogStream.level >= 4)
        {
          localObject = file;
          SmbFile.log.println("read: len=" + paramInt1 + ",r=" + paramInt2 + ",fp=" + fp);
        }
      }
      for (;;)
      {
        try
        {
          localObject = new SmbComReadAndX(file.fid, fp, paramInt2, null);
          if (file.type == 16)
          {
            remaining = 1024;
            maxCount = 1024;
            minCount = 1024;
          }
          file.send((ServerMessageBlock)localObject, paramArrayOfByte);
          i = dataLength;
          if (i > 0) {
            break label398;
          }
          if (fp - l <= 0L) {
            break label390;
          }
          l = fp - l;
          return (int)l;
        }
        catch (SmbException paramArrayOfByte)
        {
          if ((file.type != 16) || (paramArrayOfByte.getNtStatus() != -1073741493)) {
            continue;
          }
          return -1;
          throw seToIoe(paramArrayOfByte);
        }
        paramInt2 = readSize;
        break;
        paramInt2 = paramInt1;
        break label173;
        l = -1L;
      }
      fp += i;
      paramInt1 -= i;
      off += i;
    } while ((paramInt1 > 0) && (i == paramInt2));
    return (int)(fp - l);
  }
  
  protected IOException seToIoe(SmbException paramSmbException)
  {
    Throwable localThrowable2 = paramSmbException.getRootCause();
    Throwable localThrowable1 = localThrowable2;
    if ((localThrowable2 instanceof TransportException))
    {
      paramSmbException = (TransportException)localThrowable2;
      localThrowable1 = ((TransportException)paramSmbException).getRootCause();
    }
    if ((localThrowable1 instanceof InterruptedException))
    {
      paramSmbException = new InterruptedIOException(localThrowable1.getMessage());
      paramSmbException.initCause(localThrowable1);
    }
    return paramSmbException;
  }
  
  public long skip(long paramLong)
  {
    if (paramLong > 0L)
    {
      fp += paramLong;
      return paramLong;
    }
    return 0L;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbFileInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */