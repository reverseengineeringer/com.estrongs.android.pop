.class Lcom/estrongs/android/pop/view/er;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/service/b;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/pop/app/service/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/er;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/er;->a:Lcom/estrongs/android/pop/app/service/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/estrongs/fs/impl/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/er;->a:Lcom/estrongs/android/pop/app/service/b;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/service/b;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/er;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/er;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    const-string v1, "scannedserver://"

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
