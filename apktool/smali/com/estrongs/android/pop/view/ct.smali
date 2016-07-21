.class Lcom/estrongs/android/pop/view/ct;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/cr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ct;->b:Lcom/estrongs/android/pop/view/cr;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ct;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/ad;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ct;->b:Lcom/estrongs/android/pop/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cr;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/view/cu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/cu;-><init>(Lcom/estrongs/android/pop/view/ct;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
