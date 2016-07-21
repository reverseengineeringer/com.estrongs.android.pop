.class Lcom/estrongs/android/pop/app/analysis/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/f;->a:Lcom/estrongs/android/pop/app/analysis/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/f;->a:Lcom/estrongs/android/pop/app/analysis/b/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/e;->a:Lcom/estrongs/android/pop/app/analysis/b/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
