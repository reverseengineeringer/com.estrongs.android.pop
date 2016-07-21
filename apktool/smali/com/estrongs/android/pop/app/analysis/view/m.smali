.class Lcom/estrongs/android/pop/app/analysis/view/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/m;->a:Lcom/estrongs/android/pop/app/analysis/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/m;->a:Lcom/estrongs/android/pop/app/analysis/view/l;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->j(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/m;->a:Lcom/estrongs/android/pop/app/analysis/view/l;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/view/i;->i(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method
