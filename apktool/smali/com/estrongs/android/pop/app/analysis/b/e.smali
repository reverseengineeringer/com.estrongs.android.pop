.class Lcom/estrongs/android/pop/app/analysis/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/appinfo/r;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/e;->a:Lcom/estrongs/android/pop/app/analysis/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/e;->a:Lcom/estrongs/android/pop/app/analysis/b/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/e;->a:Lcom/estrongs/android/pop/app/analysis/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/e;->a:Lcom/estrongs/android/pop/app/analysis/b/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/f;-><init>(Lcom/estrongs/android/pop/app/analysis/b/e;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/fs/h;)V
    .locals 0

    return-void
.end method
