package com.c.a;

import java.io.PrintStream;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.Vector;

public abstract class a
{
  private static boolean a = false;
  private static boolean b = false;
  private static boolean c = false;
  private static final String d = a.class.getName();
  private static final Vector e = new Vector();
  private static boolean f = false;
  private static Vector g = new Vector();
  
  static
  {
    e.addElement(d);
  }
  
  private static String a(int paramInt)
  {
    if (paramInt > 9) {
      return String.valueOf(paramInt);
    }
    return "0" + String.valueOf(paramInt);
  }
  
  private static void a(int paramInt, String paramString, Throwable paramThrowable)
  {
    Enumeration localEnumeration = g.elements();
    while (localEnumeration.hasMoreElements()) {
      ((b)localEnumeration.nextElement()).a(paramInt, paramString, paramThrowable);
    }
  }
  
  public static void a(b paramb)
  {
    g.addElement(paramb);
  }
  
  public static void a(String paramString)
  {
    if (a())
    {
      a(paramString, null, null);
      c();
      a(1, paramString, null);
    }
  }
  
  public static void a(String paramString, long paramLong)
  {
    if (a())
    {
      a(paramString, " ", Long.toString(paramLong));
      c();
      a(1, paramString + " " + Long.toString(paramLong), null);
    }
  }
  
  public static void a(String paramString1, String paramString2, long paramLong)
  {
    if (a())
    {
      a(paramString1, " " + paramString2 + " 0x", e.a(paramLong));
      c();
      a(1, paramString1 + " " + paramString2 + " 0x" + e.a(paramLong), null);
    }
  }
  
  private static void a(String paramString1, String paramString2, String paramString3)
  {
    if (!c) {
      return;
    }
    try
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTime(new Date(System.currentTimeMillis()));
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(a(localCalendar.get(11))).append(":");
      localStringBuffer.append(a(localCalendar.get(12))).append(":");
      localStringBuffer.append(a(localCalendar.get(13))).append(".");
      localStringBuffer.append(b(localCalendar.get(14))).append(" ");
      localStringBuffer.append(paramString1);
      if (paramString2 != null) {
        localStringBuffer.append(paramString2);
      }
      if (paramString3 != null) {
        localStringBuffer.append(paramString3);
      }
      System.out.println(localStringBuffer.toString());
      return;
    }
    catch (Throwable paramString1) {}
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    if (a())
    {
      a(paramString, " ", paramThrowable.toString());
      c();
      paramThrowable.printStackTrace();
      a(1, paramString, paramThrowable);
    }
  }
  
  public static void a(String paramString, boolean paramBoolean)
  {
    if (a())
    {
      a(paramString, " ", String.valueOf(paramBoolean));
      c();
      a(1, paramString + " " + paramBoolean, null);
    }
  }
  
  public static void a(String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (int i = 0;; i = paramArrayOfByte.length)
    {
      a(paramString, paramArrayOfByte, 0, i);
      return;
    }
  }
  
  public static void a(String paramString, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    StringBuffer localStringBuffer;
    if (a())
    {
      localStringBuffer = new StringBuffer();
      if (paramArrayOfByte != null) {
        break label68;
      }
      localStringBuffer.append(" null byte[]");
    }
    for (;;)
    {
      a(paramString, localStringBuffer.toString(), null);
      c();
      a(1, paramString + localStringBuffer.toString(), null);
      return;
      label68:
      localStringBuffer.append(" [");
      int i = paramInt1;
      while (i < paramInt1 + paramInt2)
      {
        if (i != paramInt1) {
          localStringBuffer.append(", ");
        }
        localStringBuffer.append(new Byte(paramArrayOfByte[i]).toString());
        i += 1;
      }
      localStringBuffer.append("]");
      if (paramInt2 > 4) {
        localStringBuffer.append(" ").append(paramInt2);
      }
    }
  }
  
  public static boolean a()
  {
    if (!b) {
      b();
    }
    return a;
  }
  
  private static String b(int paramInt)
  {
    if (paramInt > 99) {
      return String.valueOf(paramInt);
    }
    if (paramInt > 9) {
      return "0" + String.valueOf(paramInt);
    }
    return "00" + String.valueOf(paramInt);
  }
  
  /* Error */
  private static void b()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 20	com/c/a/a:b	Z
    //   6: istore_0
    //   7: iload_0
    //   8: ifeq +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: iconst_1
    //   16: putstatic 20	com/c/a/a:b	Z
    //   19: getstatic 18	com/c/a/a:a	Z
    //   22: putstatic 22	com/c/a/a:c	Z
    //   25: new 199	com/c/a/d
    //   28: dup
    //   29: invokespecial 200	com/c/a/d:<init>	()V
    //   32: astore_1
    //   33: aload_1
    //   34: invokestatic 202	com/c/a/a:a	(Lcom/c/a/b;)V
    //   37: aload_1
    //   38: iconst_1
    //   39: invokeinterface 207 2 0
    //   44: ifeq -33 -> 11
    //   47: iconst_1
    //   48: putstatic 18	com/c/a/a:a	Z
    //   51: goto -40 -> 11
    //   54: astore_1
    //   55: goto -44 -> 11
    //   58: astore_1
    //   59: ldc 2
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	2	0	bool	boolean
    //   32	6	1	locald	d
    //   54	1	1	localThrowable	Throwable
    //   58	5	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   25	51	54	java/lang/Throwable
    //   3	7	58	finally
    //   15	25	58	finally
    //   25	51	58	finally
  }
  
  public static void b(String paramString)
  {
    if (a())
    {
      a("error ", paramString, null);
      c();
      a(4, paramString, null);
    }
  }
  
  public static void b(String paramString, long paramLong)
  {
    if (a())
    {
      a(paramString, " 0x", e.a(paramLong));
      c();
      a(1, paramString + " 0x" + e.a(paramLong), null);
    }
  }
  
  public static void b(String paramString, Throwable paramThrowable)
  {
    if (a())
    {
      a("error ", paramString, " " + paramThrowable);
      c();
      paramThrowable.printStackTrace();
      a(4, paramString, paramThrowable);
    }
  }
  
  private static void c()
  {
    if ((!f) && (!c)) {}
  }
}

/* Location:
 * Qualified Name:     com.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */