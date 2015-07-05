package jcifs.smb;

import java.io.IOException;
import java.io.OutputStream;
import jcifs.util.LogStream;

public class SmbFileOutputStream
  extends OutputStream
{
  private int access;
  private boolean append;
  private SmbFile file;
  private long fp;
  private int openFlags;
  private SmbComWrite req;
  private SmbComWriteAndX reqx;
  private SmbComWriteResponse rsp;
  private SmbComWriteAndXResponse rspx;
  private byte[] tmp = new byte[1];
  private boolean useNTSmbs;
  private int writeSize;
  private int writeSizeFile;
  
  public SmbFileOutputStream(String paramString)
  {
    this(paramString, false);
  }
  
  public SmbFileOutputStream(String paramString, int paramInt)
  {
    this(new SmbFile(paramString, "", null, paramInt), false);
  }
  
  public SmbFileOutputStream(String paramString, boolean paramBoolean)
  {
    this(new SmbFile(paramString), paramBoolean);
  }
  
  public SmbFileOutputStream(SmbFile paramSmbFile)
  {
    this(paramSmbFile, false);
  }
  
  public SmbFileOutputStream(SmbFile paramSmbFile, boolean paramBoolean) {}
  
  SmbFileOutputStream(SmbFile paramSmbFile, boolean paramBoolean, int paramInt)
  {
    file = paramSmbFile;
    append = paramBoolean;
    openFlags = paramInt;
    access = (paramInt >>> 16 & 0xFFFF);
    if (paramBoolean) {}
    try
    {
      fp = paramSmbFile.length();
      if (((paramSmbFile instanceof SmbNamedPipe)) && (unc.startsWith("\\pipe\\")))
      {
        unc = unc.substring(5);
        paramSmbFile.send(new TransWaitNamedPipe("\\pipe" + unc), new TransWaitNamedPipeResponse());
      }
      paramSmbFile.open(paramInt, access | 0x2, 128, 0);
      openFlags &= 0xFFFFFFAF;
      writeSize = (tree.session.transport.snd_buf_size - 70);
      if (((tree.session.transport.server.capabilities & 0x8000) == 32768) && (!tree.session.server_is_windows))
      {
        writeSizeFile = Math.min(SmbConstants.RCV_BUF_SIZE - 70, 65465);
        useNTSmbs = tree.session.transport.hasCapability(16);
        if (!useNTSmbs) {
          break label291;
        }
        reqx = new SmbComWriteAndX();
        rspx = new SmbComWriteAndXResponse();
      }
    }
    catch (SmbAuthException paramSmbFile)
    {
      throw paramSmbFile;
    }
    catch (SmbException localSmbException)
    {
      for (;;)
      {
        fp = 0L;
        continue;
        writeSizeFile = writeSize;
      }
      label291:
      req = new SmbComWrite();
      rsp = new SmbComWriteResponse();
    }
  }
  
  public void close()
  {
    file.close();
    tmp = null;
  }
  
  void ensureOpen()
  {
    if (!file.isOpen())
    {
      file.open(openFlags, access | 0x2, 128, 0);
      if (append) {
        fp = file.length();
      }
    }
  }
  
  public boolean isOpen()
  {
    return file.isOpen();
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
    if ((!file.isOpen()) && ((file instanceof SmbNamedPipe))) {
      file.send(new TransWaitNamedPipe("\\pipe" + file.unc), new TransWaitNamedPipeResponse());
    }
    writeDirect(paramArrayOfByte, paramInt1, paramInt2, 0);
  }
  
  public void writeDirect(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 <= 0) {
      return;
    }
    if (tmp == null) {
      throw new IOException("Bad file descriptor");
    }
    ensureOpen();
    Object localObject = file;
    localObject = SmbFile.log;
    int j = paramInt1;
    int i = paramInt2;
    if (LogStream.level >= 4)
    {
      localObject = file;
      SmbFile.log.println("write: fid=" + file.fid + ",off=" + paramInt1 + ",len=" + paramInt2);
      i = paramInt2;
      j = paramInt1;
    }
    if (file.getType() == 1)
    {
      paramInt1 = writeSizeFile;
      label127:
      if (i <= paramInt1) {
        break label282;
      }
      label133:
      if (!useNTSmbs) {
        break label299;
      }
      reqx.setParam(file.fid, fp, i - paramInt1, paramArrayOfByte, j, paramInt1);
      if ((paramInt3 & 0x1) == 0) {
        break label288;
      }
      reqx.setParam(file.fid, fp, i, paramArrayOfByte, j, paramInt1);
      reqx.writeMode = 8;
      label206:
      file.send(reqx, rspx);
      fp += rspx.count;
      paramInt1 = (int)(i - rspx.count);
      paramInt2 = (int)(j + rspx.count);
    }
    for (;;)
    {
      j = paramInt2;
      i = paramInt1;
      if (paramInt1 > 0) {
        break;
      }
      return;
      paramInt1 = writeSize;
      break label127;
      label282:
      paramInt1 = i;
      break label133;
      label288:
      reqx.writeMode = 0;
      break label206;
      label299:
      req.setParam(file.fid, fp, i - paramInt1, paramArrayOfByte, j, paramInt1);
      fp += rsp.count;
      paramInt1 = (int)(i - rsp.count);
      paramInt2 = (int)(j + rsp.count);
      file.send(req, rsp);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbFileOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */