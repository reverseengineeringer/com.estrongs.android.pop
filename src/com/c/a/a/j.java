package com.c.a.a;

import b.b.c;
import com.c.a.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.TimeZone;
import java.util.Vector;

class j
  implements c
{
  private int a;
  private Hashtable b = new Hashtable();
  private Vector c;
  private Vector d;
  
  j()
  {
    this(Integer.MIN_VALUE);
  }
  
  private j(int paramInt)
  {
    a = paramInt;
    c = null;
    d = null;
  }
  
  static long a(byte[] paramArrayOfByte, int paramInt)
  {
    long l = 0L;
    int i = 0;
    while (i < 4)
    {
      l = (l << 8) + (paramArrayOfByte[(paramInt + i)] & 0xFF);
      i += 1;
    }
    return l;
  }
  
  static c a(c paramc1, c paramc2)
  {
    int[] arrayOfInt = paramc2.a();
    int i = 0;
    if ((arrayOfInt != null) && (i < arrayOfInt.length))
    {
      int j = arrayOfInt[i];
      if ((j == 72) || (j == 73)) {}
      for (;;)
      {
        i += 1;
        break;
        paramc1.a(j, paramc2.a(j));
      }
    }
    return paramc1;
  }
  
  static j a(byte paramByte, byte[] paramArrayOfByte, int paramInt)
  {
    return a(new j(paramByte & 0xFF), paramArrayOfByte, paramInt);
  }
  
  private static j a(j paramj, byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int j = paramInt;
    if (j < paramArrayOfByte.length)
    {
      int k = paramArrayOfByte[j] & 0xFF;
      switch (k & 0xC0)
      {
      default: 
        throw new IOException("Unsupported encoding " + (k & 0xC0));
      case 0: 
        paramInt = v.a(paramArrayOfByte[(j + 1)], paramArrayOfByte[(j + 2)]);
        if (paramInt == 3) {
          paramj.a(k, "");
        }
        break;
      }
      for (;;)
      {
        j += paramInt;
        i += 1;
        break;
        Object localObject = new byte[paramInt - 5];
        System.arraycopy(paramArrayOfByte, j + 3, localObject, 0, localObject.length);
        paramj.a(k, v.b((byte[])localObject));
        continue;
        paramInt = v.a(paramArrayOfByte[(j + 1)], paramArrayOfByte[(j + 2)]);
        localObject = new byte[paramInt - 3];
        System.arraycopy(paramArrayOfByte, j + 3, localObject, 0, localObject.length);
        if (k == 66)
        {
          if (localObject[(localObject.length - 1)] != 0) {
            paramj.a(k, new String((byte[])localObject, "iso-8859-1"));
          } else {
            paramj.a(k, new String((byte[])localObject, 0, localObject.length - 1, "iso-8859-1"));
          }
        }
        else if (k == 68)
        {
          paramj.a(k, b((byte[])localObject));
        }
        else if (k == 77)
        {
          try
          {
            if (d == null) {
              d = new Vector();
            }
            d.addElement(localObject);
            a.a("received AUTH_CHALLENGE");
            continue;
          }
          finally {}
        }
        else if (k == 78)
        {
          try
          {
            if (c == null) {
              c = new Vector();
            }
            c.addElement(localObject);
            a.a("received AUTH_RESPONSE");
            continue;
          }
          finally {}
        }
        else
        {
          paramj.a(k, localObject);
          continue;
          paramInt = 2;
          paramj.a(k, new Byte(paramArrayOfByte[(j + 1)]));
          continue;
          paramInt = 5;
          long l = a(paramArrayOfByte, j + 1);
          if (k == 196)
          {
            localObject = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
            ((Calendar)localObject).setTime(new Date(l * 1000L));
            paramj.a(k, localObject);
          }
          else
          {
            paramj.a(k, new Long(l));
          }
        }
      }
    }
    if (i != 0) {
      a.a("read headers", i);
    }
    return paramj;
  }
  
  static void a(c paramc)
  {
    if (paramc == null) {}
    do
    {
      return;
      if (!(paramc instanceof j)) {
        throw new IllegalArgumentException("Illegal HeaderSet type");
      }
    } while (a == Integer.MIN_VALUE);
    throw new IllegalArgumentException("Illegal HeaderSet");
  }
  
  static void a(OutputStream paramOutputStream, int paramInt1, int paramInt2)
  {
    int i = (byte)paramInt1;
    if ((paramInt2 < 0) || (paramInt2 > 65535)) {
      throw new IOException("very large data" + paramInt2);
    }
    paramOutputStream.write(new byte[] { i, v.a(paramInt2), v.b(paramInt2) });
  }
  
  static void a(OutputStream paramOutputStream, int paramInt, long paramLong)
  {
    paramOutputStream.write(new byte[] { (byte)paramInt, (byte)(int)(paramLong >>> 24 & 0xFF), (byte)(int)(paramLong >>> 16 & 0xFF), (byte)(int)(paramLong >>> 8 & 0xFF), (byte)(int)(paramLong >>> 0 & 0xFF) });
  }
  
  static void a(OutputStream paramOutputStream, int paramInt, String paramString)
  {
    a(paramOutputStream, paramInt, paramString.length() + 3 + 1);
    paramOutputStream.write(paramString.getBytes("iso-8859-1"));
    paramOutputStream.write(0);
  }
  
  static void a(OutputStream paramOutputStream, Calendar paramCalendar)
  {
    Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
    localCalendar.setTime(paramCalendar.getTime());
    paramOutputStream.write(c(localCalendar.get(1)));
    paramOutputStream.write(d(localCalendar.get(2) + 1));
    paramOutputStream.write(d(localCalendar.get(5)));
    paramOutputStream.write(84);
    paramOutputStream.write(d(localCalendar.get(11)));
    paramOutputStream.write(d(localCalendar.get(12)));
    paramOutputStream.write(d(localCalendar.get(13)));
    paramOutputStream.write(90);
  }
  
  static j b(c paramc)
  {
    if (paramc == null) {
      return null;
    }
    if (!(paramc instanceof j)) {
      throw new IllegalArgumentException("Illegal HeaderSet type");
    }
    j localj = new j(a);
    int[] arrayOfInt = paramc.a();
    int i = 0;
    if ((arrayOfInt != null) && (i < arrayOfInt.length))
    {
      int j = arrayOfInt[i];
      if ((j == 72) || (j == 73)) {}
      for (;;)
      {
        i += 1;
        break;
        localj.a(j, paramc.a(j));
      }
    }
    return localj;
  }
  
  static j b(byte[] paramArrayOfByte, int paramInt)
  {
    return a(new j(Integer.MIN_VALUE), paramArrayOfByte, paramInt);
  }
  
  static Calendar b(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte.length != 16) && (paramArrayOfByte.length != 15)) {
      throw new IOException("Invalid ISO-8601 date length " + new String(paramArrayOfByte) + " length " + paramArrayOfByte.length);
    }
    if (paramArrayOfByte[8] != 84) {
      throw new IOException("Invalid ISO-8601 date " + new String(paramArrayOfByte));
    }
    if (paramArrayOfByte.length == 16) {
      if (paramArrayOfByte[15] != 90) {
        throw new IOException("Invalid ISO-8601 date " + new String(paramArrayOfByte));
      }
    }
    for (int i = 1;; i = 0)
    {
      if (i != 0) {}
      for (Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));; localCalendar = Calendar.getInstance())
      {
        localCalendar.set(1, Integer.valueOf(new String(paramArrayOfByte, 0, 4)).intValue());
        localCalendar.set(2, Integer.valueOf(new String(paramArrayOfByte, 4, 2)).intValue() - 1);
        localCalendar.set(5, Integer.valueOf(new String(paramArrayOfByte, 6, 2)).intValue());
        localCalendar.set(11, Integer.valueOf(new String(paramArrayOfByte, 9, 2)).intValue());
        localCalendar.set(12, Integer.valueOf(new String(paramArrayOfByte, 11, 2)).intValue());
        localCalendar.set(13, Integer.valueOf(new String(paramArrayOfByte, 13, 2)).intValue());
        return localCalendar;
      }
    }
  }
  
  private void b(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 255)) {
      throw new IllegalArgumentException("Expected header ID in range 0 to 255");
    }
    paramInt &= 0x3F;
    if ((paramInt >= 16) && (paramInt < 47)) {
      throw new IllegalArgumentException("Reserved header ID");
    }
  }
  
  static void b(OutputStream paramOutputStream, int paramInt, String paramString)
  {
    if (paramString.length() == 0)
    {
      a(paramOutputStream, paramInt, 3);
      return;
    }
    paramString = v.b(paramString);
    a(paramOutputStream, paramInt, paramString.length + 3 + 2);
    paramOutputStream.write(paramString);
    paramOutputStream.write(new byte[] { 0, 0 });
  }
  
  private static byte[] c(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    int i = 1000;
    int k = 0;
    int j = paramInt;
    paramInt = k;
    while (paramInt < 4)
    {
      arrayOfByte[paramInt] = ((byte)(j / i + 48));
      j %= i;
      i /= 10;
      paramInt += 1;
    }
    return arrayOfByte;
  }
  
  static byte[] c(c paramc)
  {
    if (paramc == null) {
      return new byte[0];
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    Object localObject1 = paramc.a();
    int i = 0;
    Object localObject2;
    if ((localObject1 != null) && (i < localObject1.length))
    {
      int j = localObject1[i];
      if (j == 68)
      {
        localObject2 = (Calendar)paramc.a(j);
        a(localByteArrayOutputStream, j, 19);
        a(localByteArrayOutputStream, (Calendar)localObject2);
      }
      for (;;)
      {
        i += 1;
        break;
        if (j == 196) {
          a(localByteArrayOutputStream, j, ((Calendar)paramc.a(j)).getTime().getTime() / 1000L);
        } else if (j == 66) {
          a(localByteArrayOutputStream, j, (String)paramc.a(j));
        } else {
          switch (j & 0xC0)
          {
          default: 
            throw new IOException("Unsupported encoding " + (j & 0xC0));
          case 0: 
            b(localByteArrayOutputStream, j, (String)paramc.a(j));
            break;
          case 64: 
            localObject2 = (byte[])paramc.a(j);
            a(localByteArrayOutputStream, j, localObject2.length + 3);
            localByteArrayOutputStream.write((byte[])localObject2);
            break;
          case 128: 
            localByteArrayOutputStream.write(j);
            localByteArrayOutputStream.write(((Byte)paramc.a(j)).byteValue());
            break;
          case 192: 
            a(localByteArrayOutputStream, j, ((Long)paramc.a(j)).longValue());
          }
        }
      }
    }
    if ((localObject1 != null) && (localObject1.length != 0)) {
      a.a("written headers", localObject1.length);
    }
    if (((j)paramc).d())
    {
      localObject1 = d.elements();
      while (((Enumeration)localObject1).hasMoreElements())
      {
        localObject2 = (byte[])((Enumeration)localObject1).nextElement();
        a(localByteArrayOutputStream, 77, localObject2.length + 3);
        localByteArrayOutputStream.write((byte[])localObject2);
        a.a("written AUTH_CHALLENGE");
      }
    }
    if (((j)paramc).f())
    {
      paramc = c.elements();
      while (paramc.hasMoreElements())
      {
        localObject1 = (byte[])paramc.nextElement();
        a(localByteArrayOutputStream, 78, localObject1.length + 3);
        localByteArrayOutputStream.write((byte[])localObject1);
        a.a("written AUTH_RESPONSE");
      }
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  private static byte[] d(int paramInt)
  {
    return new byte[] { (byte)(paramInt / 10 + 48), (byte)(paramInt % 10 + 48) };
  }
  
  public Object a(int paramInt)
  {
    b(paramInt);
    return b.get(new Integer(paramInt));
  }
  
  public void a(int paramInt, Object paramObject)
  {
    b(paramInt);
    if (paramObject == null)
    {
      b.remove(new Integer(paramInt));
      return;
    }
    if ((paramInt == 68) || (paramInt == 196))
    {
      if (!(paramObject instanceof Calendar)) {
        throw new IllegalArgumentException("Expected java.util.Calendar");
      }
    }
    else if (paramInt == 66)
    {
      if (!(paramObject instanceof String)) {
        throw new IllegalArgumentException("Expected java.lang.String");
      }
    }
    else {
      switch (paramInt & 0xC0)
      {
      default: 
        throw new IllegalArgumentException("Unsupported encoding " + (paramInt & 0xC0));
      case 0: 
        if (!(paramObject instanceof String)) {
          throw new IllegalArgumentException("Expected java.lang.String");
        }
        break;
      case 64: 
        if (!(paramObject instanceof byte[])) {
          throw new IllegalArgumentException("Expected byte[]");
        }
        break;
      case 128: 
        if (!(paramObject instanceof Byte)) {
          throw new IllegalArgumentException("Expected java.lang.Byte");
        }
        break;
      case 192: 
        if (!(paramObject instanceof Long)) {
          throw new IllegalArgumentException("Expected java.lang.Long");
        }
        long l = ((Long)paramObject).longValue();
        if ((l < 0L) || (l > 4294967295L)) {
          throw new IllegalArgumentException("Expected long in range 0 to 2^32-1");
        }
        break;
      }
    }
    b.put(new Integer(paramInt), paramObject);
  }
  
  void a(byte[] paramArrayOfByte)
  {
    try
    {
      if (c == null) {
        c = new Vector();
      }
      c.addElement(paramArrayOfByte);
      return;
    }
    finally {}
  }
  
  public int[] a()
  {
    if (b.size() == 0) {
      return null;
    }
    int[] arrayOfInt = new int[b.size()];
    Enumeration localEnumeration = b.keys();
    int i = 0;
    while (localEnumeration.hasMoreElements())
    {
      arrayOfInt[i] = ((Integer)localEnumeration.nextElement()).intValue();
      i += 1;
    }
    return arrayOfInt;
  }
  
  public int b()
  {
    if (a == Integer.MIN_VALUE) {
      throw new IOException();
    }
    return a;
  }
  
  boolean c()
  {
    return (b.contains(new Integer(72))) || (b.contains(new Integer(73)));
  }
  
  boolean d()
  {
    if (d == null) {}
    while (d.isEmpty()) {
      return false;
    }
    return true;
  }
  
  Enumeration e()
  {
    return d.elements();
  }
  
  boolean f()
  {
    if (c == null) {}
    while (c.isEmpty()) {
      return false;
    }
    return true;
  }
  
  Enumeration g()
  {
    return c.elements();
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */