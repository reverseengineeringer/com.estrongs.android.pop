.class Lcom/estrongs/android/appinfo/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/appinfo/q;

.field final synthetic c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/util/List;Lcom/estrongs/android/appinfo/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/d;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iput-object p2, p0, Lcom/estrongs/android/appinfo/d;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/appinfo/d;->b:Lcom/estrongs/android/appinfo/q;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/appinfo/d;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/d;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-virtual {v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/d;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/appinfo/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/android/appinfo/d;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/fs/h;)Lcom/estrongs/android/appinfo/m;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/appinfo/d;->b:Lcom/estrongs/android/appinfo/q;

    invoke-interface {v2, v0}, Lcom/estrongs/android/appinfo/q;->a(Lcom/estrongs/fs/h;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/appinfo/d;->b:Lcom/estrongs/android/appinfo/q;

    invoke-interface {v0}, Lcom/estrongs/android/appinfo/q;->a()V

    return-void
.end method
