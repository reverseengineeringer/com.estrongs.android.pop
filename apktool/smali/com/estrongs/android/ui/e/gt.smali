.class Lcom/estrongs/android/ui/e/gt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/e/gs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/gs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gt;->b:Lcom/estrongs/android/ui/e/gs;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/gt;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/gt;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->d(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gt;->b:Lcom/estrongs/android/ui/e/gs;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gs;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/gu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/gu;-><init>(Lcom/estrongs/android/ui/e/gt;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/NetFsException;->printStackTrace()V

    goto :goto_0
.end method
