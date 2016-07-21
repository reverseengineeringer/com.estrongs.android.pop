.class public abstract Lcom/estrongs/android/ui/c/c/a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/c/c/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/a;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/c/a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)V
.end method
