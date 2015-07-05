package a.a.a.a;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

final class c
  extends CharsetEncoder
{
  private byte[] a;
  
  c(a parama)
  {
    super(parama, 1.0F, 1.0F);
    parama = parama.a();
    int i = 0;
    int j = 0;
    if (i >= parama.length)
    {
      a = new byte[j + 1];
      i = m;
    }
    for (;;)
    {
      if (i >= parama.length)
      {
        return;
        int n = parama[i];
        int k = j;
        if (n > j)
        {
          k = j;
          if (n < 65533) {
            k = n;
          }
        }
        i += 1;
        j = k;
        break;
      }
      j = parama[i];
      if ((j != 0) && (j < 65533)) {
        a[j] = ((byte)i);
      }
      i += 1;
    }
  }
  
  protected CoderResult encodeLoop(CharBuffer paramCharBuffer, ByteBuffer paramByteBuffer)
  {
    if (!paramCharBuffer.hasRemaining()) {
      return CoderResult.UNDERFLOW;
    }
    int i = paramCharBuffer.get();
    if (!paramByteBuffer.hasRemaining())
    {
      paramCharBuffer.position(paramCharBuffer.position() - 1);
      return CoderResult.OVERFLOW;
    }
    if (i < a.length) {}
    for (byte b = a[i];; b = 0)
    {
      if ((b == 0) && (i != 0)) {
        break label80;
      }
      paramByteBuffer.put(b);
      break;
    }
    label80:
    paramCharBuffer.position(paramCharBuffer.position() - 1);
    return CoderResult.unmappableForLength(1);
  }
}

/* Location:
 * Qualified Name:     a.a.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */