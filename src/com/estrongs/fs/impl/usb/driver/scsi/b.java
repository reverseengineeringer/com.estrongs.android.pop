package com.estrongs.fs.impl.usb.driver.scsi;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.UsbFsException;
import com.estrongs.fs.impl.usb.UsbFsException.ERROR_CODE;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class b
  implements com.estrongs.fs.impl.usb.driver.a
{
  private static final String a = b.class.getSimpleName();
  private boolean b = false;
  private com.estrongs.fs.impl.usb.a c;
  private ByteBuffer d;
  private byte[] e;
  private int f;
  private int g;
  private Object h = new Object();
  
  public b(com.estrongs.fs.impl.usb.a parama)
  {
    c = parama;
    d = ByteBuffer.allocate(31);
    e = new byte[13];
  }
  
  private boolean a(CommandBlockWrapper paramCommandBlockWrapper, ByteBuffer paramByteBuffer)
  {
    boolean bool = false;
    byte[] arrayOfByte;
    int i;
    int k;
    int j;
    for (;;)
    {
      synchronized (h)
      {
        arrayOfByte = d.array();
        d.clear();
        Arrays.fill(arrayOfByte, (byte)0);
        paramCommandBlockWrapper.a(d);
        i = c.a(arrayOfByte, arrayOfByte.length);
        if (i != arrayOfByte.length)
        {
          l.e(a, "Writing all bytes on command " + paramCommandBlockWrapper + " failed!");
          l.e(a, "outArray " + arrayOfByte.length + " written " + i);
        }
        k = paramCommandBlockWrapper.b();
        if (k <= 0) {
          break;
        }
        arrayOfByte = paramByteBuffer.array();
        if (paramCommandBlockWrapper.c() != CommandBlockWrapper.Direction.IN) {
          break label489;
        }
        i = 0;
        j = c.b(arrayOfByte, paramByteBuffer.position() + i, paramByteBuffer.remaining() - i);
        if (j == -1) {
          throw new IOException("reading failed!");
        }
      }
      j = i + j;
      i = j;
      if (j >= k) {
        if (j != k) {
          throw new IOException("Unexpected command size (" + j + ") on response to " + paramCommandBlockWrapper);
        }
      }
    }
    for (;;)
    {
      j = c.a(arrayOfByte, paramByteBuffer.position() + i, paramByteBuffer.remaining() - i);
      if (j == -1) {
        throw new IOException("writing failed!");
      }
      j = i + j;
      i = j;
      if (j >= k)
      {
        if (j != k) {
          throw new IOException("Could not write all bytes: " + paramCommandBlockWrapper);
        }
        i = c.b(e, e.length);
        if (i != 13) {
          l.e(a, "Unexpected command size while expecting csw " + i);
        }
        paramByteBuffer = a.a(ByteBuffer.wrap(e));
        if (paramByteBuffer.b() != 0) {
          l.e(a, "Unsuccessful Csw status: " + paramByteBuffer.b());
        }
        if (paramByteBuffer.a() != paramCommandBlockWrapper.a()) {
          l.e(a, "wrong csw tag!");
        }
        if (paramByteBuffer.b() == 0) {
          bool = true;
        }
        return bool;
        label489:
        i = 0;
      }
    }
  }
  
  public void a()
  {
    Object localObject = ByteBuffer.allocate(36);
    if ((!a(new f(), null)) && (b)) {
      l.d(a, "unit not ready!");
    }
    a(new d(), (ByteBuffer)localObject);
    localObject = e.a((ByteBuffer)localObject);
    f = ((e)localObject).b();
    g = ((e)localObject).a();
    if (b) {
      l.c(a, "Block size: " + f);
    }
    if (b) {
      l.c(a, "Last block address: " + g);
    }
  }
  
  public void a(long paramLong, ByteBuffer paramByteBuffer)
  {
    Object localObject = h;
    if ((paramLong < 0L) || (paramLong > 2147483647L)) {
      try
      {
        throw new IOException(new UsbFsException("Address overflow", UsbFsException.ERROR_CODE.USB_ERROR_ADDRESS_OVERFLOW));
      }
      finally {}
    }
    long l = System.currentTimeMillis();
    ByteBuffer localByteBuffer;
    if (paramByteBuffer.remaining() % f != 0)
    {
      if (b) {
        l.c(a, "we have to round up size to next block sector");
      }
      int i = f;
      int j = paramByteBuffer.remaining();
      int k = f;
      i = paramByteBuffer.remaining() + (i - j % k);
      localByteBuffer = ByteBuffer.allocate(i);
      localByteBuffer.limit(i);
    }
    for (;;)
    {
      c localc = new c((int)paramLong, localByteBuffer.remaining(), f);
      if (b) {
        l.b(a, "reading: " + localc);
      }
      a(localc, localByteBuffer);
      if (paramByteBuffer.remaining() % f != 0) {
        System.arraycopy(localByteBuffer.array(), 0, paramByteBuffer.array(), paramByteBuffer.position(), paramByteBuffer.remaining());
      }
      paramByteBuffer.position(paramByteBuffer.limit());
      if (b) {
        l.b(a, "read time: " + (System.currentTimeMillis() - l));
      }
      return;
      localByteBuffer = paramByteBuffer;
    }
  }
  
  public void a(com.estrongs.fs.impl.usb.a parama)
  {
    synchronized (h)
    {
      c = parama;
      return;
    }
  }
  
  public int b()
  {
    return f;
  }
  
  public void b(long paramLong, ByteBuffer paramByteBuffer)
  {
    Object localObject;
    try
    {
      localObject = h;
      if ((paramLong < 0L) || (paramLong > 2147483647L)) {
        try
        {
          throw new IOException(new UsbFsException("Address overflow", UsbFsException.ERROR_CODE.USB_ERROR_ADDRESS_OVERFLOW));
        }
        finally {}
      }
      l = System.currentTimeMillis();
    }
    finally {}
    long l;
    ByteBuffer localByteBuffer;
    if (paramByteBuffer.remaining() % f != 0)
    {
      if (b) {
        l.c(a, "we have to round up size to next block sector");
      }
      int i = f;
      int j = paramByteBuffer.remaining();
      int k = f;
      i = paramByteBuffer.remaining() + (i - j % k);
      localByteBuffer = ByteBuffer.allocate(i);
      localByteBuffer.limit(i);
      System.arraycopy(paramByteBuffer.array(), paramByteBuffer.position(), localByteBuffer.array(), 0, paramByteBuffer.remaining());
    }
    for (;;)
    {
      g localg = new g((int)paramLong, localByteBuffer.remaining(), f);
      if (b) {
        l.b(a, "writing: " + localg);
      }
      a(localg, localByteBuffer);
      paramByteBuffer.position(paramByteBuffer.limit());
      if (b) {
        l.b(a, "write time: " + (System.currentTimeMillis() - l));
      }
      return;
      localByteBuffer = paramByteBuffer;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.driver.scsi.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */