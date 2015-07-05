package com.baidu.kirin.objects;

public class GsmCell
  extends SCell
{
  public int CID;
  public int LAC;
  
  public String toString()
  {
    return cellType + "," + MCCMNC + "," + MCC + "," + MNC + "" + LAC + "," + CID;
  }
}

/* Location:
 * Qualified Name:     com.baidu.kirin.objects.GsmCell
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */