package a.a.a.a;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

final class b
  extends CharsetDecoder
{
  private char[] a;
  
  b(a parama)
  {
    super(parama, 1.0F, 1.0F);
    a = parama.a();
  }
  
  protected CoderResult decodeLoop(ByteBuffer paramByteBuffer, CharBuffer paramCharBuffer)
  {
    for (;;)
    {
      if (!paramByteBuffer.hasRemaining()) {
        return CoderResult.UNDERFLOW;
      }
      int j = paramByteBuffer.get();
      if (!paramCharBuffer.hasRemaining())
      {
        paramByteBuffer.position(paramByteBuffer.position() - 1);
        return CoderResult.OVERFLOW;
      }
      int i = a[(j & 0xFF)];
      if (i == 65533) {}
      paramCharBuffer.put(i);
    }
  }
}

/* Location:
 * Qualified Name:     a.a.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */