package com.jcraft.jsch;

class ChannelSftp$RequestQueue$OutOfOrderException
  extends Exception
{
  long offset;
  
  ChannelSftp$RequestQueue$OutOfOrderException(ChannelSftp.RequestQueue paramRequestQueue, long paramLong)
  {
    offset = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSftp.RequestQueue.OutOfOrderException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */