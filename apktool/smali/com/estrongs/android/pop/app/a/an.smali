.class public Lcom/estrongs/android/pop/app/a/an;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/estrongs/android/pop/app/a/an;


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/a/an;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/a/an;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/a/an;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/a/an;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/app/a/an;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/app/a/an;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/app/a/an;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "playlists.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/app/a/an;->f()V

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/ad;->f(Z)V

    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const-string v2, "playlists.db"

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/FexApplication;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const-string v2, "playlists.db"

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/FexApplication;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    iput-object v1, v0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    sput-object v1, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    :cond_1
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/app/a/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "playlists.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const-string v1, "playlists.db"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/pop/app/a/an;->b:Lcom/estrongs/android/pop/app/a/an;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,title TEXT,album TEXT,artist TEXT,duration INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/an;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
