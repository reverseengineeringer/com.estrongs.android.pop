package com.dropbox.client2;

public final class ProgressListener$Adjusted
  extends ProgressListener
{
  private final long adjustedTotal;
  private final long bytesOffset;
  private final ProgressListener relay;
  
  public ProgressListener$Adjusted(ProgressListener paramProgressListener, long paramLong1, long paramLong2)
  {
    relay = paramProgressListener;
    bytesOffset = paramLong1;
    adjustedTotal = paramLong2;
  }
  
  public void onProgress(long paramLong1, long paramLong2)
  {
    relay.onProgress(bytesOffset + paramLong1, adjustedTotal);
  }
  
  public long progressInterval()
  {
    return relay.progressInterval();
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.ProgressListener.Adjusted
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */