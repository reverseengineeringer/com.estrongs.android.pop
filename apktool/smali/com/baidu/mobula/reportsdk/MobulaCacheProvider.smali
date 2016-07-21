.class public final Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final AUTHORITY_SUFFIX:Ljava/lang/String; = ".duscene.MobulaCacheProvider"

.field private static AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final RECORD:I = 0x4

.field private static RECORD_AUTHORITY_URI:Landroid/net/Uri; = null

.field private static final RECORD_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/record"

.field private static final REPORT_DB_LOCK:Ljava/lang/Object;

.field private static final SCHEME:Ljava/lang/String; = "content://"

.field private static final UNKOWN_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/unkown"

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSrecordDbHelper:Lcom/baidu/mobula/reportsdk/MobulaDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->REPORT_DB_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "MobulaReport"

    iput-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static buildUriMatcher(Ljava/lang/String;)Landroid/content/UriMatcher;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "record"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->RECORD_AUTHORITY_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v1, "record"

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private chechUriMatchCode(Landroid/net/Uri;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0
.end method

.method public static getUriByType(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    sget-object v1, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->AUTHORITY_URI:Landroid/net/Uri;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".duscene.MobulaCacheProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->AUTHORITY_URI:Landroid/net/Uri;

    :cond_0
    sget-object v1, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->RECORD_AUTHORITY_URI:Landroid/net/Uri;

    if-nez v1, :cond_1

    sget-object v1, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "record"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->RECORD_AUTHORITY_URI:Landroid/net/Uri;

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->RECORD_AUTHORITY_URI:Landroid/net/Uri;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".duscene.MobulaCacheProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->buildUriMatcher(Ljava/lang/String;)Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method private matchDBLock(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->REPORT_DB_LOCK:Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private matchDataBase(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->mSrecordDbHelper:Lcom/baidu/mobula/reportsdk/MobulaDbHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobula/reportsdk/MobulaDbHelper;

    invoke-direct {v0, p1}, Lcom/baidu/mobula/reportsdk/MobulaDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->mSrecordDbHelper:Lcom/baidu/mobula/reportsdk/MobulaDbHelper;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->mSrecordDbHelper:Lcom/baidu/mobula/reportsdk/MobulaDbHelper;

    invoke-virtual {v0}, Lcom/baidu/mobula/reportsdk/MobulaDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "duscene_mobula.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->mSrecordDbHelper:Lcom/baidu/mobula/reportsdk/MobulaDbHelper;

    invoke-virtual {v0}, Lcom/baidu/mobula/reportsdk/MobulaDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private matchTableName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "srecord"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    iget-object v1, p0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "del selcetion  = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , selectionArgs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/baidu/mobula/reportsdk/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->chechUriMatchCode(Landroid/net/Uri;)I

    move-result v1

    const/4 v0, -0x1

    if-lez v1, :cond_0

    const/4 v2, 0x7

    if-le v1, v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchDBLock(I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchDataBase(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchTableName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "vnd.android.cursor.dir/unkown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/record"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->chechUriMatchCode(Landroid/net/Uri;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchDBLock(I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchDataBase(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchTableName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->chechUriMatchCode(Landroid/net/Uri;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchDBLock(I)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchDataBase(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchTableName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->chechUriMatchCode(Landroid/net/Uri;)I

    move-result v1

    const/4 v0, -0x1

    if-lez v1, :cond_0

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchDBLock(I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchDataBase(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/baidu/mobula/reportsdk/MobulaCacheProvider;->matchTableName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
