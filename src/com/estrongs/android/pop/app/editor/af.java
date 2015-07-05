package com.estrongs.android.pop.app.editor;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

class af
  implements View.OnClickListener
{
  af(PopNoteEditor paramPopNoteEditor) {}
  
  public void onClick(View paramView)
  {
    if (PopNoteEditor.m(a).getVisibility() == 0)
    {
      PopNoteEditor.n(a);
      return;
    }
    PopNoteEditor.o(a);
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */