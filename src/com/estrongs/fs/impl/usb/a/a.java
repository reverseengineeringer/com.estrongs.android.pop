package com.estrongs.fs.impl.usb.a;

import com.estrongs.android.util.l;
import com.estrongs.android.util.x;
import com.estrongs.fs.impl.usb.fs.ntfs.y;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class a
  implements c
{
  private static final String b = a.class.getSimpleName();
  private static boolean c = false;
  public List<d> a = new ArrayList();
  
  public static a a(ByteBuffer paramByteBuffer)
  {
    int i = 0;
    a locala = new a();
    paramByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    Object localObject;
    if ((paramByteBuffer.get(510) != 85) || (paramByteBuffer.get(511) != -86))
    {
      if (c) {
        l.c(b, "not a valid mbr partition table!");
      }
      localObject = null;
    }
    do
    {
      return (a)localObject;
      if (com.estrongs.fs.impl.usb.fs.a.d.a(paramByteBuffer.array()))
      {
        x.a("FAT32 no mbr");
        paramByteBuffer = new d((byte)11, 0, 0);
        a.add(paramByteBuffer);
        return locala;
      }
      if (y.a(paramByteBuffer.array()))
      {
        x.a("NTFS no mbr");
        paramByteBuffer = new d((byte)7, 0, 0);
        a.add(paramByteBuffer);
        return locala;
      }
      localObject = locala;
    } while (i >= 4);
    int j = i * 16 + 446;
    byte b1 = paramByteBuffer.get(j + 4);
    if (b1 == 0) {}
    for (;;)
    {
      i += 1;
      break;
      if ((b1 == 5) || (b1 == 15))
      {
        if (c) {
          l.d(b, "extended partitions are currently unsupported!");
        }
      }
      else
      {
        localObject = new d(b1, paramByteBuffer.getInt(j + 8), paramByteBuffer.getInt(j + 12));
        a.add(localObject);
      }
    }
  }
  
  public Collection<d> a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */