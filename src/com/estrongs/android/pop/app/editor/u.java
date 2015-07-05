package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class u
  implements DialogInterface.OnClickListener
{
  u(PopNoteEditor paramPopNoteEditor) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PopNoteEditor.a(a, true);
    paramDialogInterface.dismiss();
    PopNoteEditor.c(a, PopNoteEditor.x(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */