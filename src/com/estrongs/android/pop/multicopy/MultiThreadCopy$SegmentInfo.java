package com.estrongs.android.pop.multicopy;

import java.io.Serializable;

public class MultiThreadCopy$SegmentInfo
  implements Serializable
{
  private static final long serialVersionUID = -39324719048216288L;
  public long endOffset = -1L;
  public long startOffset = -1L;
  protected long totalWriteLen = 0L;
  
  public MultiThreadCopy$SegmentInfo(long paramLong1, long paramLong2)
  {
    startOffset = paramLong1;
    endOffset = paramLong2;
  }
  
  public boolean isCopyFinished()
  {
    return totalWriteLen >= endOffset - startOffset + 1L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.multicopy.MultiThreadCopy.SegmentInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */