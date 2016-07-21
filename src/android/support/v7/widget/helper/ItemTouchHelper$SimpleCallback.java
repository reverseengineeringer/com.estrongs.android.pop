package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;

public abstract class ItemTouchHelper$SimpleCallback
  extends ItemTouchHelper.Callback
{
  private int mDefaultDragDirs;
  private int mDefaultSwipeDirs;
  
  public ItemTouchHelper$SimpleCallback(int paramInt1, int paramInt2)
  {
    mDefaultSwipeDirs = paramInt2;
    mDefaultDragDirs = paramInt1;
  }
  
  public int getDragDirs(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder)
  {
    return mDefaultDragDirs;
  }
  
  public int getMovementFlags(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder)
  {
    return makeMovementFlags(getDragDirs(paramRecyclerView, paramViewHolder), getSwipeDirs(paramRecyclerView, paramViewHolder));
  }
  
  public int getSwipeDirs(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder)
  {
    return mDefaultSwipeDirs;
  }
  
  public void setDefaultDragDirs(int paramInt)
  {
    mDefaultDragDirs = paramInt;
  }
  
  public void setDefaultSwipeDirs(int paramInt)
  {
    mDefaultSwipeDirs = paramInt;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.SimpleCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */