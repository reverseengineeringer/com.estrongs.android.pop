.class Lcom/estrongs/android/pop/view/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/j;->a:Lcom/estrongs/android/pop/view/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/k;-><init>(Lcom/estrongs/android/pop/view/j;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/v;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
