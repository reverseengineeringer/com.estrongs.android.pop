.class Lcom/estrongs/android/pop/view/du;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/view/dt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dt;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/du;->b:Lcom/estrongs/android/pop/view/dt;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/du;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/du;->b:Lcom/estrongs/android/pop/view/dt;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/du;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/du;->b:Lcom/estrongs/android/pop/view/dt;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/du;->b:Lcom/estrongs/android/pop/view/dt;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/du;->b:Lcom/estrongs/android/pop/view/dt;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
