package org.apache.tika.parser.mp3;

import java.util.Iterator;

public class ID3v2Frame$RawTagIterator
  implements Iterator<ID3v2Frame.RawTag>
{
  private int flagLength;
  private int nameLength;
  private int offset = 0;
  private int sizeLength;
  private int sizeMultiplier;
  
  protected ID3v2Frame$RawTagIterator(ID3v2Frame paramID3v2Frame, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    nameLength = paramInt1;
    sizeLength = paramInt2;
    sizeMultiplier = paramInt3;
    flagLength = paramInt4;
  }
  
  public boolean hasNext()
  {
    return (offset < ID3v2Frame.access$100(this$0).length) && (ID3v2Frame.access$100(this$0)[offset] != 0);
  }
  
  public ID3v2Frame.RawTag next()
  {
    ID3v2Frame.RawTag localRawTag = new ID3v2Frame.RawTag(nameLength, sizeLength, sizeMultiplier, flagLength, ID3v2Frame.access$100(this$0), offset, null);
    offset += localRawTag.getSize();
    return localRawTag;
  }
  
  public void remove() {}
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.ID3v2Frame.RawTagIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */