.class Lcom/estrongs/android/pop/utils/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/o;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/utils/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bv;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ch;->b:Lcom/estrongs/android/pop/utils/bv;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/utils/ch;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->am()V

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/pop/utils/ch;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/android/pop/utils/ci;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/ci;-><init>(Lcom/estrongs/android/pop/utils/ch;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/util/z;)V

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/estrongs/android/pop/utils/cj;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/utils/cj;-><init>(Lcom/estrongs/android/pop/utils/ch;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
