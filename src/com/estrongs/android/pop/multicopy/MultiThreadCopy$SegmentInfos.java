package com.estrongs.android.pop.multicopy;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class MultiThreadCopy$SegmentInfos
  implements Serializable
{
  private static final long serialVersionUID = -2368632690687703114L;
  public int bufferSize;
  public String destPath;
  public List<MultiThreadCopy.SegmentInfo> segs = new ArrayList();
  private long srcLastModified;
  public long srcLength;
  public String srcPath;
  
  public MultiThreadCopy$SegmentInfos(String paramString1, long paramLong1, String paramString2, long paramLong2, int paramInt)
  {
    srcPath = paramString1;
    srcLastModified = paramLong1;
    destPath = paramString2;
    srcLength = paramLong2;
    bufferSize = paramInt;
  }
  
  public List<MultiThreadCopy.SegmentInfo> getUnfinshedSegs()
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < segs.size())
    {
      if (!((MultiThreadCopy.SegmentInfo)segs.get(i)).isCopyFinished()) {
        localArrayList.add(segs.get(i));
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public boolean isChanged()
  {
    return true;
  }
  
  public boolean isCopyFinished()
  {
    int i = 0;
    while (i < segs.size())
    {
      if (!((MultiThreadCopy.SegmentInfo)segs.get(i)).isCopyFinished()) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.multicopy.MultiThreadCopy.SegmentInfos
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */