.class Lcom/estrongs/android/appinfo/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/c;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iput-object p2, p0, Lcom/estrongs/android/appinfo/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/appinfo/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/appinfo/c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/estrongs/android/appinfo/c;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v1, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->t:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/estrongs/android/appinfo/c;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v3, v3, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/appinfo/c;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-static {v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/appinfo/c;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v3, v3, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_2

    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/appinfo/c;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v3, v3, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "INSERT OR REPLACE INTO installed_app_info(package,app_name) VALUES(?,?)"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/appinfo/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/appinfo/c;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
