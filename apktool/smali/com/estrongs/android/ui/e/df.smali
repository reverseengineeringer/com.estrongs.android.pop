.class final Lcom/estrongs/android/ui/e/df;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field final synthetic c:Lcom/estrongs/fs/b/w;

.field final synthetic d:Z

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/dialog/ProgressDialog;Lcom/estrongs/fs/b/w;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/df;->b:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/df;->c:Lcom/estrongs/fs/b/w;

    iput-boolean p4, p0, Lcom/estrongs/android/ui/e/df;->d:Z

    iput-boolean p5, p0, Lcom/estrongs/android/ui/e/df;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/df;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/ui/e/dg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/dg;-><init>(Lcom/estrongs/android/ui/e/df;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
