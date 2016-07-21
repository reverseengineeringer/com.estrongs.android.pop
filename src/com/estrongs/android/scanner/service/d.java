package com.estrongs.android.scanner.service;

class d
  implements Runnable
{
  d(FileMonitorService paramFileMonitorService, String[] paramArrayOfString) {}
  
  public void run()
  {
    FileMonitorService.a(b).a();
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      FileMonitorService.a(b).a(str);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */