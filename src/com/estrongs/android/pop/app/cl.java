package com.estrongs.android.pop.app;

import android.content.Intent;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;

class cl
  implements Runnable
{
  cl(FileChooserActivity paramFileChooserActivity, String paramString, h paramh, Intent paramIntent) {}
  
  public void run()
  {
    String str = com.estrongs.android.pop.a.f;
    Object localObject = new File(str);
    if (!((File)localObject).exists()) {
      ((File)localObject).mkdirs();
    }
    localObject = new r(d.a(d), d.a(d).j(a), new f(new File(str)));
    ((com.estrongs.a.a)localObject).execute(false);
    str = str + "/" + b.getName();
    d.runOnUiThread(new cm(this, (com.estrongs.a.a)localObject, str));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */