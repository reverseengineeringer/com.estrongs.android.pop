.class public Lcom/estrongs/android/ui/c/c/g;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/c/c/g;->a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/g;->a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/k/d;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/g;->a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->a(Lcom/estrongs/android/k/d;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/unlock/g;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/g;->a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    iput-object p1, v0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->a:Lcom/estrongs/android/pop/app/unlock/g;

    return-void
.end method
