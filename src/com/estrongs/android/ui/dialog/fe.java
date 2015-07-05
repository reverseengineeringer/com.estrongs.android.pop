package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.a;
import com.estrongs.android.ui.e.ie;
import com.estrongs.android.ui.view.ag;
import java.io.File;

class fe
  implements DialogInterface.OnClickListener
{
  fe(fc paramfc) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject1 = (EditText)fc.a(a).findViewById(2131361807);
    Object localObject2 = (EditText)fc.a(a).findViewById(2131361809);
    localObject1 = ((EditText)localObject1).getText().toString();
    localObject2 = ((EditText)localObject2).getText().toString();
    if ((localObject1 == null) || (((String)localObject1).equals(""))) {
      ag.a(fc.b(a), 2131428239, 0);
    }
    File localFile;
    label260:
    do
    {
      do
      {
        return;
        if ((localObject2 == null) || (((String)localObject2).equals("")))
        {
          ag.a(fc.b(a), 2131428440, 0);
          return;
        }
        if (!ie.a((String)localObject2))
        {
          ag.a(fc.b(a), fc.b(a).getString(2131427875), 1);
          return;
        }
        if (!fc.c(a)) {
          break label371;
        }
        localFile = new File(a.k, fc.d(a));
        if (!localFile.exists()) {
          break label260;
        }
        localObject2 = new File(a.k, (String)localObject2);
        if (!((File)localObject2).exists()) {
          break;
        }
      } while (!((File)localObject2).getAbsolutePath().equals(localFile.getAbsolutePath()));
      ag.a(fc.b(a), fc.b(a).getString(2131427766), 1);
      return;
      fc.a(fc.b(a), localFile, (File)localObject2, (String)localObject1);
      paramDialogInterface.dismiss();
      return;
      localFile = new File(a.l, fc.d(a));
      if (!localFile.exists()) {
        break label391;
      }
      localObject2 = new File(a.l, (String)localObject2);
      if (!((File)localObject2).exists()) {
        break;
      }
    } while (!((File)localObject2).getAbsolutePath().equals(localFile.getAbsolutePath()));
    ag.a(fc.b(a), fc.b(a).getString(2131427766), 1);
    return;
    fc.a(fc.b(a), localFile, (File)localObject2, (String)localObject1);
    paramDialogInterface.dismiss();
    return;
    label371:
    fc.a(fc.b(a), (String)localObject1, fc.c(a), (String)localObject2);
    label391:
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */