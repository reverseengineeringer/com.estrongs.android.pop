package org.apache.commons.net.util;

public final class SubnetUtils$SubnetInfo
{
  private SubnetUtils$SubnetInfo(SubnetUtils paramSubnetUtils) {}
  
  private int address()
  {
    return SubnetUtils.access$2(this$0);
  }
  
  private int broadcast()
  {
    return SubnetUtils.access$3(this$0);
  }
  
  private int high()
  {
    if (this$0.isInclusiveHostCount()) {
      return broadcast();
    }
    if (broadcast() - network() > 1) {
      return broadcast() - 1;
    }
    return 0;
  }
  
  private boolean isInRange(int paramInt)
  {
    paramInt -= low();
    return (paramInt >= 0) && (paramInt <= high() - low());
  }
  
  private int low()
  {
    if (this$0.isInclusiveHostCount()) {
      return network();
    }
    if (broadcast() - network() > 1) {
      return network() + 1;
    }
    return 0;
  }
  
  private int netmask()
  {
    return SubnetUtils.access$0(this$0);
  }
  
  private int network()
  {
    return SubnetUtils.access$1(this$0);
  }
  
  public int asInteger(String paramString)
  {
    return SubnetUtils.access$4(this$0, paramString);
  }
  
  public String getAddress()
  {
    return SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, address()));
  }
  
  public int getAddressCount()
  {
    int j = broadcast();
    int k = network();
    if (this$0.isInclusiveHostCount()) {}
    for (int i = 1;; i = -1)
    {
      j = i + (j - k);
      i = j;
      if (j < 0) {
        i = 0;
      }
      return i;
    }
  }
  
  public String[] getAllAddresses()
  {
    String[] arrayOfString = new String[getAddressCount()];
    int j = low();
    int i = 0;
    for (;;)
    {
      if (j > high()) {
        return arrayOfString;
      }
      arrayOfString[i] = SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, j));
      j += 1;
      i += 1;
    }
  }
  
  public String getBroadcastAddress()
  {
    return SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, broadcast()));
  }
  
  public String getCidrSignature()
  {
    return SubnetUtils.access$7(this$0, SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, address())), SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, netmask())));
  }
  
  public String getHighAddress()
  {
    return SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, high()));
  }
  
  public String getLowAddress()
  {
    return SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, low()));
  }
  
  public String getNetmask()
  {
    return SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, netmask()));
  }
  
  public String getNetworkAddress()
  {
    return SubnetUtils.access$6(this$0, SubnetUtils.access$5(this$0, network()));
  }
  
  public boolean isInRange(String paramString)
  {
    return isInRange(SubnetUtils.access$4(this$0, paramString));
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CIDR Signature:\t[").append(getCidrSignature()).append("]").append(" Netmask: [").append(getNetmask()).append("]\n").append("Network:\t[").append(getNetworkAddress()).append("]\n").append("Broadcast:\t[").append(getBroadcastAddress()).append("]\n").append("First Address:\t[").append(getLowAddress()).append("]\n").append("Last Address:\t[").append(getHighAddress()).append("]\n").append("# Addresses:\t[").append(getAddressCount()).append("]\n");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.util.SubnetUtils.SubnetInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */