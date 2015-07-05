.class Lcom/estrongs/android/pop/utils/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/o;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/utils/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bn;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/by;->b:Lcom/estrongs/android/pop/utils/bn;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/utils/by;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W()V

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/pop/utils/by;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/android/pop/utils/bz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/bz;-><init>(Lcom/estrongs/android/pop/utils/by;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/util/x;)V

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/estrongs/android/pop/utils/ca;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/utils/ca;-><init>(Lcom/estrongs/android/pop/utils/by;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
