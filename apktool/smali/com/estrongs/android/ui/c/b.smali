.class Lcom/estrongs/android/ui/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/bb;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/ui/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/ui/c/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/b;->l()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->b(Lcom/estrongs/android/ui/c/a;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/c/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/c;-><init>(Lcom/estrongs/android/ui/c/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
