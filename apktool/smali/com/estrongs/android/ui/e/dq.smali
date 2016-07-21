.class Lcom/estrongs/android/ui/e/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/dp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/dr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/dr;-><init>(Lcom/estrongs/android/ui/e/dq;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
