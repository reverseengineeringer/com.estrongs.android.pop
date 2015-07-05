package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class srvsvc$TimeOfDayInfo
  extends NdrObject
{
  public int day;
  public int elapsedt;
  public int hours;
  public int hunds;
  public int mins;
  public int month;
  public int msecs;
  public int secs;
  public int timezone;
  public int tinterval;
  public int weekday;
  public int year;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    elapsedt = paramNdrBuffer.dec_ndr_long();
    msecs = paramNdrBuffer.dec_ndr_long();
    hours = paramNdrBuffer.dec_ndr_long();
    mins = paramNdrBuffer.dec_ndr_long();
    secs = paramNdrBuffer.dec_ndr_long();
    hunds = paramNdrBuffer.dec_ndr_long();
    timezone = paramNdrBuffer.dec_ndr_long();
    tinterval = paramNdrBuffer.dec_ndr_long();
    day = paramNdrBuffer.dec_ndr_long();
    month = paramNdrBuffer.dec_ndr_long();
    year = paramNdrBuffer.dec_ndr_long();
    weekday = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(elapsedt);
    paramNdrBuffer.enc_ndr_long(msecs);
    paramNdrBuffer.enc_ndr_long(hours);
    paramNdrBuffer.enc_ndr_long(mins);
    paramNdrBuffer.enc_ndr_long(secs);
    paramNdrBuffer.enc_ndr_long(hunds);
    paramNdrBuffer.enc_ndr_long(timezone);
    paramNdrBuffer.enc_ndr_long(tinterval);
    paramNdrBuffer.enc_ndr_long(day);
    paramNdrBuffer.enc_ndr_long(month);
    paramNdrBuffer.enc_ndr_long(year);
    paramNdrBuffer.enc_ndr_long(weekday);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.TimeOfDayInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */