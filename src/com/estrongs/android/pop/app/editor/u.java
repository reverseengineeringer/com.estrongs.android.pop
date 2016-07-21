package com.estrongs.android.pop.app.editor;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

class u
  implements View.OnClickListener
{
  u(PopNoteEditor paramPopNoteEditor) {}
  
  public void onClick(View paramView)
  {
    if (PopNoteEditor.j(a).getVisibility() == 0)
    {
      PopNoteEditor.k(a);
      return;
    }
    PopNoteEditor.l(a);
    a.d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */