.class Lcom/estrongs/android/ui/adapter/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/estrongs/android/ui/adapter/bu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/bu;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/bv;->b:Lcom/estrongs/android/ui/adapter/bu;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/bv;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/bv;->b:Lcom/estrongs/android/ui/adapter/bu;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/bu;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/is;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/bv;->b:Lcom/estrongs/android/ui/adapter/bu;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/bu;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/adapter/bw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/bw;-><init>(Lcom/estrongs/android/ui/adapter/bv;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/bv;->b:Lcom/estrongs/android/ui/adapter/bu;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/bu;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/adapter/bx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/bx;-><init>(Lcom/estrongs/android/ui/adapter/bv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
