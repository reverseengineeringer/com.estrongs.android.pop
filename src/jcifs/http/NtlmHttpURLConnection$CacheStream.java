package jcifs.http;

import java.io.OutputStream;

class NtlmHttpURLConnection$CacheStream
  extends OutputStream
{
  private final OutputStream collector;
  private final OutputStream stream;
  
  public NtlmHttpURLConnection$CacheStream(OutputStream paramOutputStream1, OutputStream paramOutputStream2)
  {
    stream = paramOutputStream1;
    collector = paramOutputStream2;
  }
  
  public void close()
  {
    stream.close();
    collector.close();
  }
  
  public void flush()
  {
    stream.flush();
    collector.flush();
  }
  
  public void write(int paramInt)
  {
    stream.write(paramInt);
    collector.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    stream.write(paramArrayOfByte);
    collector.write(paramArrayOfByte);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    stream.write(paramArrayOfByte, paramInt1, paramInt2);
    collector.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     jcifs.http.NtlmHttpURLConnection.CacheStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */