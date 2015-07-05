package jcifs.smb;

class TransactNamedPipeOutputStream
  extends SmbFileOutputStream
{
  private boolean dcePipe;
  private String path;
  private SmbNamedPipe pipe;
  private byte[] tmp = new byte[1];
  
  TransactNamedPipeOutputStream(SmbNamedPipe paramSmbNamedPipe)
  {
    super(paramSmbNamedPipe, false, pipeType & 0xFFFF00FF | 0x20);
    pipe = paramSmbNamedPipe;
    if ((pipeType & 0x600) == 1536) {}
    for (;;)
    {
      dcePipe = bool;
      path = unc;
      return;
      bool = false;
    }
  }
  
  public void close()
  {
    pipe.close();
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
    int i = paramInt2;
    if (paramInt2 < 0) {
      i = 0;
    }
    if ((pipe.pipeType & 0x100) == 256)
    {
      pipe.send(new TransWaitNamedPipe(path), new TransWaitNamedPipeResponse());
      pipe.send(new TransCallNamedPipe(path, paramArrayOfByte, paramInt1, i), new TransCallNamedPipeResponse(pipe));
    }
    while ((pipe.pipeType & 0x200) != 512) {
      return;
    }
    ensureOpen();
    paramArrayOfByte = new TransTransactNamedPipe(pipe.fid, paramArrayOfByte, paramInt1, i);
    if (dcePipe) {
      maxDataCount = 1024;
    }
    pipe.send(paramArrayOfByte, new TransTransactNamedPipeResponse(pipe));
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.TransactNamedPipeOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */