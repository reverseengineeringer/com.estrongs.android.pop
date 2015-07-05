package jcifs.smb;

class Trans2QueryFSInformationResponse$SmbInfoAllocation
  implements AllocInfo
{
  long alloc;
  int bytesPerSect;
  long free;
  int sectPerAlloc;
  
  Trans2QueryFSInformationResponse$SmbInfoAllocation(Trans2QueryFSInformationResponse paramTrans2QueryFSInformationResponse) {}
  
  public long getCapacity()
  {
    return alloc * sectPerAlloc * bytesPerSect;
  }
  
  public long getFree()
  {
    return free * sectPerAlloc * bytesPerSect;
  }
  
  public String toString()
  {
    return new String("SmbInfoAllocation[alloc=" + alloc + ",free=" + free + ",sectPerAlloc=" + sectPerAlloc + ",bytesPerSect=" + bytesPerSect + "]");
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2QueryFSInformationResponse.SmbInfoAllocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */