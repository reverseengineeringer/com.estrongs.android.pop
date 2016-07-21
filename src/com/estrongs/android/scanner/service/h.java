package com.estrongs.android.scanner.service;

import com.estrongs.android.scanner.a;
import com.estrongs.android.scanner.al;
import java.util.concurrent.atomic.AtomicBoolean;

class h
  implements al
{
  h(FileScannerService paramFileScannerService) {}
  
  public void a()
  {
    FileMonitorService.a(a);
  }
  
  public void b()
  {
    com.estrongs.android.util.l.e("FileScannerService", "onStoreFinish");
    FileScannerService.a(a).set(true);
    a.a().c();
    com.estrongs.android.scanner.l.a().d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */