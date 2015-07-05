package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.g;
import java.io.File;

class cb
  implements DialogInterface.OnClickListener
{
  cb(FileChooserActivity paramFileChooserActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = a.a.d();
    paramDialogInterface = a.getIntent().getStringExtra("tplink-file-save");
    if ((paramDialogInterface != null) && (new File((String)localObject + "/" + paramDialogInterface).exists()))
    {
      localObject = new cg(a);
      ((cg)localObject).setTitle(a.getString(2131427810));
      ((cg)localObject).setMessage(String.format(a.getString(2131428092), new Object[] { paramDialogInterface }));
      ((cg)localObject).setConfirmButton(a.getString(2131427341), new cc(this, (cg)localObject));
      ((cg)localObject).setCancelButton(a.getString(2131427342), null);
      ((cg)localObject).show();
      return;
    }
    if (am.ba((String)localObject)) {}
    for (paramDialogInterface = new Intent(null, Uri.fromFile(new File((String)localObject)));; paramDialogInterface = new Intent(null, Uri.parse((String)localObject)))
    {
      a.setResult(-1, paramDialogInterface);
      a.finish();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */