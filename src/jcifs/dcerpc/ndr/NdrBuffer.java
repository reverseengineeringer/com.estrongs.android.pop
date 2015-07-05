package jcifs.dcerpc.ndr;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import jcifs.util.Encdec;

public class NdrBuffer
{
  public byte[] buf;
  public NdrBuffer deferred;
  public int index;
  public int length;
  int referent;
  HashMap referents;
  public int start;
  
  public NdrBuffer(byte[] paramArrayOfByte, int paramInt)
  {
    buf = paramArrayOfByte;
    index = paramInt;
    start = paramInt;
    length = 0;
    deferred = this;
  }
  
  private int getDceReferent(Object paramObject)
  {
    if (referents == null)
    {
      referents = new HashMap();
      referent = 1;
    }
    NdrBuffer.Entry localEntry2 = (NdrBuffer.Entry)referents.get(paramObject);
    NdrBuffer.Entry localEntry1 = localEntry2;
    if (localEntry2 == null)
    {
      localEntry1 = new NdrBuffer.Entry();
      int i = referent;
      referent = (i + 1);
      referent = i;
      obj = paramObject;
      referents.put(paramObject, localEntry1);
    }
    return referent;
  }
  
  public void advance(int paramInt)
  {
    index += paramInt;
    if (index - start > deferred.length) {
      deferred.length = (index - start);
    }
  }
  
  public int align(int paramInt)
  {
    paramInt -= 1;
    int i = index - start;
    paramInt = ((paramInt ^ 0xFFFFFFFF) & i + paramInt) - i;
    advance(paramInt);
    return paramInt;
  }
  
  public int align(int paramInt, byte paramByte)
  {
    int i = align(paramInt);
    paramInt = i;
    while (paramInt > 0)
    {
      buf[(index - paramInt)] = paramByte;
      paramInt -= 1;
    }
    return i;
  }
  
  public long dec_ndr_hyper()
  {
    align(8);
    long l = Encdec.dec_uint64le(buf, index);
    advance(8);
    return l;
  }
  
  public int dec_ndr_long()
  {
    align(4);
    int i = Encdec.dec_uint32le(buf, index);
    advance(4);
    return i;
  }
  
  public int dec_ndr_short()
  {
    align(2);
    int i = Encdec.dec_uint16le(buf, index);
    advance(2);
    return i;
  }
  
  public int dec_ndr_small()
  {
    int i = buf[index];
    advance(1);
    return i & 0xFF;
  }
  
  public String dec_ndr_string()
  {
    align(4);
    int i = index;
    int j = Encdec.dec_uint32le(buf, i);
    i += 12;
    String str;
    if (j != 0)
    {
      j = (j - 1) * 2;
      if ((j < 0) || (j > 65535)) {
        try
        {
          throw new NdrException("invalid array conformance");
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          str = null;
        }
      }
    }
    for (;;)
    {
      advance(i - index);
      return str;
      str = new String(buf, i, j, "UTF-16LE");
      i = j + 2 + i;
      continue;
      str = null;
    }
  }
  
  public NdrBuffer derive(int paramInt)
  {
    NdrBuffer localNdrBuffer = new NdrBuffer(buf, start);
    index = paramInt;
    deferred = deferred;
    return localNdrBuffer;
  }
  
  public void enc_ndr_hyper(long paramLong)
  {
    align(8);
    Encdec.enc_uint64le(paramLong, buf, index);
    advance(8);
  }
  
  public void enc_ndr_long(int paramInt)
  {
    align(4);
    Encdec.enc_uint32le(paramInt, buf, index);
    advance(4);
  }
  
  public void enc_ndr_referent(Object paramObject, int paramInt)
  {
    if (paramObject == null)
    {
      enc_ndr_long(0);
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
    case 3: 
      enc_ndr_long(System.identityHashCode(paramObject));
      return;
    }
    enc_ndr_long(getDceReferent(paramObject));
  }
  
  public void enc_ndr_short(int paramInt)
  {
    align(2);
    Encdec.enc_uint16le((short)paramInt, buf, index);
    advance(2);
  }
  
  public void enc_ndr_small(int paramInt)
  {
    buf[index] = ((byte)(paramInt & 0xFF));
    advance(1);
  }
  
  public void enc_ndr_string(String paramString)
  {
    align(4);
    int j = index;
    int i = paramString.length();
    Encdec.enc_uint32le(i + 1, buf, j);
    j += 4;
    Encdec.enc_uint32le(0, buf, j);
    j += 4;
    Encdec.enc_uint32le(i + 1, buf, j);
    j += 4;
    try
    {
      System.arraycopy(paramString.getBytes("UTF-16LE"), 0, buf, j, i * 2);
      i = j + i * 2;
      paramString = buf;
      j = i + 1;
      paramString[i] = 0;
      buf[j] = 0;
      advance(j + 1 - index);
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;) {}
    }
  }
  
  public byte[] getBuffer()
  {
    return buf;
  }
  
  public int getCapacity()
  {
    return buf.length - start;
  }
  
  public int getIndex()
  {
    return index;
  }
  
  public int getLength()
  {
    return deferred.length;
  }
  
  public int getTailSpace()
  {
    return buf.length - index;
  }
  
  public void readOctetArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    System.arraycopy(buf, index, paramArrayOfByte, paramInt1, paramInt2);
    advance(paramInt2);
  }
  
  public void reset()
  {
    index = start;
    length = 0;
    deferred = this;
  }
  
  public void setIndex(int paramInt)
  {
    index = paramInt;
  }
  
  public void setLength(int paramInt)
  {
    deferred.length = paramInt;
  }
  
  public String toString()
  {
    return "start=" + start + ",index=" + index + ",length=" + getLength();
  }
  
  public void writeOctetArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    System.arraycopy(paramArrayOfByte, paramInt1, buf, index, paramInt2);
    advance(paramInt2);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.ndr.NdrBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */