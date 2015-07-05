package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSLabel;
import java.io.ByteArrayInputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class c
  extends ByteArrayInputStream
{
  final Map<Integer, String> a = new HashMap();
  
  public c(byte[] paramArrayOfByte, int paramInt)
  {
    this(paramArrayOfByte, 0, paramInt);
  }
  
  public c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    super(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public int a()
  {
    return (read() << 8 | read()) & 0xFFFF;
  }
  
  public byte[] a(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    read(arrayOfByte, 0, paramInt);
    return arrayOfByte;
  }
  
  public int b()
  {
    return a() << 16 | a();
  }
  
  public String b(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    int k = 0;
    if (k < paramInt)
    {
      int m = read();
      int i = m;
      int j = k;
      switch (m >> 4)
      {
      case 8: 
      case 9: 
      case 10: 
      case 11: 
      default: 
        i = (m & 0x3F) << 4 | read() & 0xF;
        j = k + 1;
      }
      for (;;)
      {
        localStringBuilder.append((char)i);
        k = j + 1;
        break;
        i = (m & 0x1F) << 6 | read() & 0x3F;
        j = k + 1;
        continue;
        i = (m & 0xF) << 12 | (read() & 0x3F) << 6 | read() & 0x3F;
        j = k + 1 + 1;
      }
    }
    return localStringBuilder.toString();
  }
  
  public String c()
  {
    HashMap localHashMap = new HashMap();
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j;
    Object localObject1;
    Object localObject2;
    if (i == 0)
    {
      j = read();
      if (j != 0) {}
    }
    else
    {
      localObject1 = localHashMap.keySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Integer)((Iterator)localObject1).next();
        a.put(localObject2, ((StringBuilder)localHashMap.get(localObject2)).toString());
      }
    }
    switch (b.a[DNSLabel.labelForByte(j).ordinal()])
    {
    default: 
    case 1: 
      for (;;)
      {
        break;
        int k = pos;
        localObject1 = b(j) + ".";
        localStringBuilder.append((String)localObject1);
        localObject2 = localHashMap.values().iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((StringBuilder)((Iterator)localObject2).next()).append((String)localObject1);
        }
        localHashMap.put(Integer.valueOf(k - 1), new StringBuilder((String)localObject1));
      }
    case 2: 
      i = DNSLabel.labelValue(j);
      j = read();
      localObject1 = (String)a.get(Integer.valueOf(i << 8 | j));
      if (localObject1 == null) {
        localObject1 = "";
      }
      break;
    }
    for (;;)
    {
      localStringBuilder.append((String)localObject1);
      localObject2 = localHashMap.values().iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((StringBuilder)((Iterator)localObject2).next()).append((String)localObject1);
      }
      i = 1;
      break;
      break;
      return localStringBuilder.toString();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */