.class Lcom/estrongs/android/pop/app/analysis/viewholders/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/z;->a:Lcom/estrongs/android/b/a/a/b;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a/b;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/z;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/y;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/viewholders/z;->a:Lcom/estrongs/android/b/a/a/b;

    invoke-virtual {v1}, Lcom/estrongs/android/b/a/a/b;->f()Lcom/estrongs/fs/h;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/viewholders/z;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/y;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/viewholders/y;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/y;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/z;->a:Lcom/estrongs/android/b/a/a/b;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a/b;->g()Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/z;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/y;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/viewholders/z;->a:Lcom/estrongs/android/b/a/a/b;

    invoke-virtual {v1}, Lcom/estrongs/android/b/a/a/b;->g()Lcom/estrongs/fs/h;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/aa;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/z;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/viewholders/z;->b:Lcom/estrongs/android/pop/app/analysis/viewholders/y;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/viewholders/y;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/y;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method
