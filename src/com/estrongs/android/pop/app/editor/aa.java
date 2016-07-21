package com.estrongs.android.pop.app.editor;

import android.widget.SeekBar;
import com.estrongs.android.util.l;

class aa
  extends Thread
{
  public boolean a = false;
  private Object c = new Object();
  
  public aa(PopNoteEditor paramPopNoteEditor) {}
  
  public void a()
  {
    a = true;
    synchronized (c)
    {
      c.notify();
      return;
    }
  }
  
  public void b()
  {
    a = false;
  }
  
  public void run()
  {
    for (;;)
    {
      if (!PopNoteEditor.F(b))
      {
        if ((PopNoteEditor.G(b)) || (PopNoteEditor.H(b))) {}
        int i;
        synchronized (c)
        {
          try
          {
            c.wait(100L);
            if (!a) {
              break label111;
            }
            i = PopNoteEditor.I(b);
            a = false;
            if (i < 0) {
              l.e(PopNoteEditor.e(), "ProgressThread invalid progress");
            }
          }
          catch (InterruptedException localInterruptedException1)
          {
            for (;;)
            {
              localInterruptedException1.printStackTrace();
            }
          }
        }
        PopNoteEditor.n(b).setProgress(i);
        continue;
        try
        {
          label111:
          synchronized (c)
          {
            c.wait();
          }
        }
        catch (InterruptedException localInterruptedException2)
        {
          for (;;)
          {
            localInterruptedException2.printStackTrace();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */