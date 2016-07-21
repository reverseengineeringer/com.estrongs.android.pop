.class Lcom/estrongs/android/pop/app/analysis/viewholders/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/p;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/p;->a:Lcom/estrongs/android/b/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a/a;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/p;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/viewholders/p;->a:Lcom/estrongs/android/b/a/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/b/a/a/a;->f()Lcom/estrongs/fs/h;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/viewholders/p;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/p;->a:Lcom/estrongs/android/b/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/p;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/viewholders/p;->a:Lcom/estrongs/android/b/a/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/b/a/a/a;->g()Lcom/estrongs/fs/h;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/q;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/p;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/viewholders/p;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method
