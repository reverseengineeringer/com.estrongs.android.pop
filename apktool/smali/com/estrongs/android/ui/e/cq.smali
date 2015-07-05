.class final Lcom/estrongs/android/ui/e/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/w;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/w;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cq;->a:Lcom/estrongs/fs/b/w;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/cq;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->a:Lcom/estrongs/fs/b/w;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/w;->requestStop()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/ui/e/cr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/cr;-><init>(Lcom/estrongs/android/ui/e/cq;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
