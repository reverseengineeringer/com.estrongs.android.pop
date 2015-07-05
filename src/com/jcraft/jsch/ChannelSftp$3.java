package com.jcraft.jsch;

import java.util.Vector;

class ChannelSftp$3
  implements ChannelSftp.LsEntrySelector
{
  ChannelSftp$3(ChannelSftp paramChannelSftp, Vector paramVector) {}
  
  public int a(ChannelSftp.LsEntry paramLsEntry)
  {
    b.addElement(paramLsEntry);
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSftp.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */