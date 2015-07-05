.class Lcom/estrongs/android/ui/a/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/estrongs/android/ui/a/bi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bi;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bj;->b:Lcom/estrongs/android/ui/a/bi;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/bj;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bj;->b:Lcom/estrongs/android/ui/a/bi;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ij;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/bj;->b:Lcom/estrongs/android/ui/a/bi;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/a/bk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/bk;-><init>(Lcom/estrongs/android/ui/a/bj;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bj;->b:Lcom/estrongs/android/ui/a/bi;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->e(Lcom/estrongs/android/ui/a/aa;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/a/bl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/bl;-><init>(Lcom/estrongs/android/ui/a/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
