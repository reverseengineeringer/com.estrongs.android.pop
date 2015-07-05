package com.estrongs.fs.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.ArrayList;
import java.util.List;

class n
  implements DialogInterface.OnClickListener
{
  n(m paramm) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    paramDialogInterface.add(a.a);
    localArrayList.add(((com.estrongs.fs.impl.b.c)a.c.b.get(0)).getName());
    AppRunner.b(a.c.a, paramDialogInterface, localArrayList);
    ((FileExplorerActivity)a.c.a).Q().a(a.a, a.b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */