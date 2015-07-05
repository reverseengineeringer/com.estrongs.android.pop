.class Lcom/estrongs/android/pop/app/mg;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/UninstallMonitorActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/UninstallMonitorActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/mg;->b:Lcom/estrongs/android/pop/app/UninstallMonitorActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/mg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/mg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/mg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/mh;

    invoke-direct {v2, p0, v0, v1}, Lcom/estrongs/android/pop/app/mh;-><init>(Lcom/estrongs/android/pop/app/mg;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V

    return-void
.end method
