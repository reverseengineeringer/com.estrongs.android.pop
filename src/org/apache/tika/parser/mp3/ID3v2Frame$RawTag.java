package org.apache.tika.parser.mp3;

public class ID3v2Frame$RawTag
{
  protected byte[] data;
  protected int flag;
  private int headerSize;
  protected String name;
  
  private ID3v2Frame$RawTag(int paramInt1, int paramInt2, int paramInt3, int paramInt4, byte[] paramArrayOfByte, int paramInt5)
  {
    headerSize = (paramInt1 + paramInt2 + paramInt4);
    name = ID3v2Frame.getString(paramArrayOfByte, paramInt5, paramInt1);
    int i;
    if (paramInt2 == 3)
    {
      i = ID3v2Frame.getInt3(paramArrayOfByte, paramInt5 + paramInt1);
      if (paramInt4 > 0) {
        if (paramInt4 != 1) {
          break label123;
        }
      }
    }
    label123:
    for (flag = paramArrayOfByte[(paramInt5 + paramInt1 + paramInt2)];; flag = ID3v2Frame.getInt2(paramArrayOfByte, paramInt5 + paramInt1 + paramInt2))
    {
      paramInt1 = paramInt5 + paramInt1 + paramInt2 + paramInt4;
      paramInt2 = Math.min(i * paramInt3, paramArrayOfByte.length - paramInt1);
      data = new byte[paramInt2];
      System.arraycopy(paramArrayOfByte, paramInt1, data, 0, paramInt2);
      return;
      i = ID3v2Frame.getInt(paramArrayOfByte, paramInt5 + paramInt1);
      break;
    }
  }
  
  protected int getSize()
  {
    return headerSize + data.length;
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.ID3v2Frame.RawTag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */