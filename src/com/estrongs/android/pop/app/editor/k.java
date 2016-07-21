package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.m;

class k
  implements DialogInterface.OnClickListener
{
  k(PopNoteEditor paramPopNoteEditor, boolean paramBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    l locall = new l(this);
    locall.setTaskDecisionListener(new m(b));
    locall.execute();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */