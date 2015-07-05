package com.baidu.kirin.objects;

public class CdmaCell
  extends SCell
{
  public int networkId;
  public int stationId;
  public int systemId;
  
  public String toString()
  {
    return cellType + "," + MCCMNC + "," + MCC + "," + MNC + "" + stationId + "," + networkId + "," + systemId;
  }
}

/* Location:
 * Qualified Name:     com.baidu.kirin.objects.CdmaCell
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */