.class Lcom/estrongs/android/pop/view/eu;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:Z

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/eu;->a:Z

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/eu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/eu;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/eu;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/eu;->a:Z

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/eu;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/estrongs/android/pop/view/ew;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/view/ew;-><init>(Lcom/estrongs/android/pop/view/eu;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ew;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v3

    if-ne v0, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/ca;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/aw;->b(Z)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->I:Lcom/estrongs/android/view/ca;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/ca;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/aw;->i(Z)V

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)Z

    invoke-static {}, Lcom/estrongs/android/pop/a;->b()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->c()V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/a/b;->c()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/eu;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/estrongs/android/view/aw;->ae()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/c/b/t;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/c/b/t;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/estrongs/android/ui/c/b/t;->a(Ljava/util/ArrayList;)V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/estrongs/android/util/bd;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/local/a;->a()V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/navigation/n;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/navigation/n;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    invoke-static {}, Lcom/estrongs/android/util/am;->e()V

    invoke-static {}, Lcom/estrongs/android/util/am;->h()V

    :goto_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/ev;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ev;-><init>(Lcom/estrongs/android/pop/view/eu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    :try_start_1
    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/eu;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/estrongs/android/util/am;->e()V

    invoke-static {}, Lcom/estrongs/android/util/am;->h()V

    goto :goto_3

    :cond_4
    :try_start_3
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/a;->b()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->c()V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/a/b;->c()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/estrongs/android/pop/app/b/a;->d:Z

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/eu;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/view/aw;->ae()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->O()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/notification/i;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/notification/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/notification/i;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/c/b/t;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/c/b/t;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/estrongs/android/ui/c/b/t;->b(Ljava/util/ArrayList;)V

    :cond_7
    invoke-static {}, Lcom/estrongs/android/util/bd;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/ad;->T(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/util/am;->e()V

    invoke-static {}, Lcom/estrongs/android/util/am;->h()V

    throw v0

    :cond_8
    :try_start_4
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/navigation/n;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method
