.class public Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final APP_INFO_COLUMN_APPNAME:Ljava/lang/String; = "appname"

.field public static final APP_INFO_COLUMN_INSTALL_TIME:Ljava/lang/String; = "install_time"

.field public static final APP_INFO_COLUMN_PKGNAME:Ljava/lang/String; = "pkgname"

.field public static final APP_INFO_TABLE:Ljava/lang/String; = "app_info_table"

.field private static final DATABASE_NAME:Ljava/lang/String; = "scenery_app_info"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEBUG:Z

.field private static sInstance:Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/utils/LogHelper;->isLogEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "scenery_app_info"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createAppInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table if not exists app_info_table(pkgname TEXT UNIQUE,appname TEXT ,install_time INTEGER, primary key (pkgname))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private deleteAppInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS app_info_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "pkgname"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v0, "appname"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v0, "install_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;

    invoke-direct {v4}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->setPkgName(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->setAppName(Ljava/lang/String;)V

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->setInstallTime(J)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;
    .locals 2

    sget-object v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->sInstance:Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->sInstance:Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    invoke-direct {v0, p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->sInstance:Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->sInstance:Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initDatabase()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    return-void
.end method


# virtual methods
.method getAllAppInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->initDatabase()V

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_info_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->fromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_2
    sget-boolean v2, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method getAppInfo(Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;
    .locals 9

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pkgName is null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v8

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->initDatabase()V

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_info_table"

    const/4 v2, 0x0

    const-string v3, "pkgname=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->fromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_3
    sget-boolean v2, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method insertAppInfo(Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;)V
    .locals 4

    if-nez p1, :cond_0

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null == appInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->initDatabase()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "pkgname"

    invoke-virtual {p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appname"

    invoke-virtual {p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "install_time"

    invoke-virtual {p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->getInstallTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "app_info_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method insertAppInfoList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appInfoList is empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->initDatabase()V

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "pkgname"

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appname"

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "install_time"

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->getInstallTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "app_info_table"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->createAppInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->deleteAppInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->createAppInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method removeAllAppInfo()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->initDatabase()V

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_info_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method removeAppInfo(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pkgName is null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->initDatabase()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "app_info_table"

    const-string v3, "pkgname=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoDB;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
