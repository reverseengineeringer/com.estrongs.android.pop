package com.estrongs.android.scanner.service;

import com.estrongs.android.scanner.a;
import com.estrongs.android.scanner.af;
import com.estrongs.android.scanner.x;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

class i
  implements Runnable
{
  i(FileScannerService paramFileScannerService) {}
  
  public void run()
  {
    com.estrongs.android.util.l.e("FileScannerService", "scanner service starting");
    Object localObject = x.a();
    String[] arrayOfString = new String[((List)localObject).size()];
    localObject = ((List)localObject).iterator();
    int i = 0;
    while (((Iterator)localObject).hasNext())
    {
      arrayOfString[i] = ((String)((Iterator)localObject).next());
      i += 1;
    }
    com.estrongs.android.scanner.l.a().b();
    a.a().b();
    com.estrongs.android.scanner.l.a().c();
    FileScannerService.a(a).set(false);
    new af(FileScannerService.b(a)).a(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */