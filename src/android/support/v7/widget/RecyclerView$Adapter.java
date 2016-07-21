package android.support.v7.widget;

import android.support.v4.os.n;
import android.view.ViewGroup;
import java.util.List;

public abstract class RecyclerView$Adapter<VH extends RecyclerView.ViewHolder>
{
  private boolean mHasStableIds = false;
  private final RecyclerView.AdapterDataObservable mObservable = new RecyclerView.AdapterDataObservable();
  
  public final void bindViewHolder(VH paramVH, int paramInt)
  {
    mPosition = paramInt;
    if (hasStableIds()) {
      mItemId = getItemId(paramInt);
    }
    paramVH.setFlags(1, 519);
    n.a("RV OnBindView");
    onBindViewHolder(paramVH, paramInt, paramVH.getUnmodifiedPayloads());
    paramVH.clearPayload();
    n.a();
  }
  
  public final VH createViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    n.a("RV CreateView");
    paramViewGroup = onCreateViewHolder(paramViewGroup, paramInt);
    mItemViewType = paramInt;
    n.a();
    return paramViewGroup;
  }
  
  public abstract int getItemCount();
  
  public long getItemId(int paramInt)
  {
    return -1L;
  }
  
  public int getItemViewType(int paramInt)
  {
    return 0;
  }
  
  public final boolean hasObservers()
  {
    return mObservable.hasObservers();
  }
  
  public final boolean hasStableIds()
  {
    return mHasStableIds;
  }
  
  public final void notifyDataSetChanged()
  {
    mObservable.notifyChanged();
  }
  
  public final void notifyItemChanged(int paramInt)
  {
    mObservable.notifyItemRangeChanged(paramInt, 1);
  }
  
  public final void notifyItemChanged(int paramInt, Object paramObject)
  {
    mObservable.notifyItemRangeChanged(paramInt, 1, paramObject);
  }
  
  public final void notifyItemInserted(int paramInt)
  {
    mObservable.notifyItemRangeInserted(paramInt, 1);
  }
  
  public final void notifyItemMoved(int paramInt1, int paramInt2)
  {
    mObservable.notifyItemMoved(paramInt1, paramInt2);
  }
  
  public final void notifyItemRangeChanged(int paramInt1, int paramInt2)
  {
    mObservable.notifyItemRangeChanged(paramInt1, paramInt2);
  }
  
  public final void notifyItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
  {
    mObservable.notifyItemRangeChanged(paramInt1, paramInt2, paramObject);
  }
  
  public final void notifyItemRangeInserted(int paramInt1, int paramInt2)
  {
    mObservable.notifyItemRangeInserted(paramInt1, paramInt2);
  }
  
  public final void notifyItemRangeRemoved(int paramInt1, int paramInt2)
  {
    mObservable.notifyItemRangeRemoved(paramInt1, paramInt2);
  }
  
  public final void notifyItemRemoved(int paramInt)
  {
    mObservable.notifyItemRangeRemoved(paramInt, 1);
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView) {}
  
  public abstract void onBindViewHolder(VH paramVH, int paramInt);
  
  public void onBindViewHolder(VH paramVH, int paramInt, List<Object> paramList)
  {
    onBindViewHolder(paramVH, paramInt);
  }
  
  public abstract VH onCreateViewHolder(ViewGroup paramViewGroup, int paramInt);
  
  public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView) {}
  
  public boolean onFailedToRecycleView(VH paramVH)
  {
    return false;
  }
  
  public void onViewAttachedToWindow(VH paramVH) {}
  
  public void onViewDetachedFromWindow(VH paramVH) {}
  
  public void onViewRecycled(VH paramVH) {}
  
  public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver paramAdapterDataObserver)
  {
    mObservable.registerObserver(paramAdapterDataObserver);
  }
  
  public void setHasStableIds(boolean paramBoolean)
  {
    if (hasObservers()) {
      throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    }
    mHasStableIds = paramBoolean;
  }
  
  public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver paramAdapterDataObserver)
  {
    mObservable.unregisterObserver(paramAdapterDataObserver);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.Adapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */