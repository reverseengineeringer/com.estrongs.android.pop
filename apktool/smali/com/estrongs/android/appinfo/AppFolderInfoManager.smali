.class public Lcom/estrongs/android/appinfo/AppFolderInfoManager;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/appinfo/n;",
            ">;"
        }
    .end annotation
.end field

.field static final m:Ljava/lang/String;

.field static final n:Ljava/lang/String;

.field static final o:Ljava/lang/String;


# instance fields
.field c:Landroid/database/sqlite/SQLiteDatabase;

.field d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/appinfo/m;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/support/v4/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/c",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/estrongs/android/appinfo/m;

.field h:Lcom/estrongs/android/appinfo/m;

.field i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field j:Ljava/util/concurrent/locks/Lock;

.field k:Ljava/util/concurrent/locks/Lock;

.field l:Lcom/estrongs/android/pop/utils/cm;

.field p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/appinfo/o;",
            ">;>;"
        }
    .end annotation
.end field

.field q:I

.field r:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/appinfo/AppFolderInfoManager$LogoDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field s:Landroid/database/sqlite/SQLiteDatabase;

.field t:Ljava/lang/Object;

.field u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-direct {v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;-><init>()V

    sput-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/Android"

    const v3, 0x7f02010c

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/dcim"

    const v3, 0x7f02010f

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/download"

    const v3, 0x7f020110

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/.android_secure"

    const v3, 0x7f02010d

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/Movies"

    const v3, 0x7f020112

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/Pictures"

    const v3, 0x7f020114

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/Video"

    const v3, 0x7f020116

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/Music"

    const v3, 0x7f020113

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/.estrongs"

    const v3, 0x7f020111

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/backups"

    const v3, 0x7f02010e

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/appinfo/n;

    const-string v2, "/Ringtones"

    const v3, 0x7f020115

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/estrongs/android/appinfo/n;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.app_icon_back"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.folder_logo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/folder_app.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->o:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    new-instance v0, Lcom/estrongs/android/appinfo/a;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/appinfo/a;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;I)V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f:Landroid/support/v4/b/c;

    new-instance v0, Lcom/estrongs/android/appinfo/m;

    invoke-direct {v0, v2}, Lcom/estrongs/android/appinfo/m;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->g:Lcom/estrongs/android/appinfo/m;

    new-instance v0, Lcom/estrongs/android/appinfo/m;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/estrongs/android/appinfo/m;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->h:Lcom/estrongs/android/appinfo/m;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/estrongs/android/pop/utils/cm;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/utils/cm;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->l:Lcom/estrongs/android/pop/utils/cm;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->p:Ljava/util/HashMap;

    iput v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->q:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->r:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->v:Z

    iput-object v3, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->t:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->u:Z

    return-void
.end method

.method static synthetic a(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->l(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;I)I
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :goto_0
    return p2

    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "config"

    const-string v3, "key=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result p2

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ver/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    new-array v1, v0, [B

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    new-array v4, v9, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "folder, package_name"

    aput-object v0, v2, v8

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_folder_map"

    const-string v3, "id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    invoke-direct {p0, v0, v5, v8}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_folder_map"

    const-string v2, "id=?"

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v0, v5

    goto :goto_1
.end method

.method private a(IIIZ)V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "folder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "package"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "user_define"

    if-eqz p4, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deep"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folder_package_match_table"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private a(IIZ)V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folder_package_match_table"

    const-string v3, "folder=? and package=? and user_define=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 10

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "folder, package_name"

    aput-object v1, v2, v0

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_folder_map"

    const-string v3, "id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT OR REPLACE INTO app_folder_map (id,folder,package_name,version,select_rate) VALUES(?,?,?,?,?)"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    move-object v0, v8

    move-object v1, v9

    goto :goto_0

    :cond_1
    move-object v0, v8

    move-object v1, v9

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    invoke-direct {p0, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c(Landroid/content/pm/PackageInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Lcom/estrongs/android/appinfo/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/t;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/appinfo/t;)V
    .locals 5

    invoke-interface {p1}, Lcom/estrongs/android/appinfo/t;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/console/service/app_folder?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/appinfo/t;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tmp/folder_app_update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/util/j;->n(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Lcom/estrongs/android/appinfo/t;->c()V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/estrongs/android/util/y;

    invoke-direct {v3, v0}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/appinfo/h;

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/estrongs/android/appinfo/h;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/appinfo/t;)V

    invoke-virtual {v3, v0}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    invoke-virtual {v3}, Lcom/estrongs/android/util/y;->c()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "package_name"

    aput-object v0, v2, v9

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_folder_map_user"

    const-string v3, "folder=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0, p1, v5, v8}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v9

    if-eqz p2, :cond_2

    move-object v0, p2

    :goto_0
    aput-object v0, v1, v8

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT OR REPLACE INTO app_folder_map_user (folder,package_name) VALUES(?,?)"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v8}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const-string v0, "-"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->o(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    :cond_1
    return-void

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    if-eq v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-string v3, "/"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->n(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_3

    invoke-direct {p0, v3, v2, p3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(IIZ)V

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 5

    const/4 v0, 0x1

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v1, v2, p1

    div-int v4, v3, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v1, v0, :cond_2

    if-le v2, p1, :cond_2

    div-int/2addr v2, v1

    if-ge v2, p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-le v1, v0, :cond_3

    if-le v3, p1, :cond_3

    div-int v2, v3, v1

    if-ge v2, p1, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)I
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "config"

    const-string v3, "key=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result p2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return p2

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->o(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_1

    invoke-direct {p0, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->q(Ljava/lang/String;)I

    move-result v0

    :cond_1
    move v1, v2

    move v5, v2

    :goto_0
    if-eq v1, v7, :cond_2

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    const-string v4, "/"

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    move v5, v3

    goto :goto_0

    :cond_2
    move v1, v2

    move v4, v2

    :goto_1
    if-eq v4, v7, :cond_3

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v4, 0x1

    const-string v4, "/"

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_6

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, v6}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->n(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_5

    invoke-direct {p0, v6}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->p(Ljava/lang/String;)I

    move-result v1

    :cond_5
    sub-int v6, v5, v3

    invoke-direct {p0, v1, v0, v6, p3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(IIIZ)V

    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method private b(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/content/pm/PackageInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->n(Ljava/lang/String;)Z

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT OR REPLACE INTO config(key,value) VALUES(?,?)"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;
    .locals 1

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    return-object v0
.end method

.method private d(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_1
    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method private e()I
    .locals 2

    const-string v0, "app_folder_map_version"

    const v1, 0x5f5e100

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/appinfo.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v0, "CREATE TABLE IF NOT EXISTS installed_app_info(package VARCHAR PRIMARY KEY  NOT NULL , app_name VARCHAR NOT NULL)"

    const-string v1, "CREATE TABLE IF NOT EXISTS config(key VARCHAR PRIMARY KEY NOT NULL, value VARCHAR NOT  NULL)"

    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    iput-object v3, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :try_start_4
    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private g()V
    .locals 8

    const/4 v3, 0x1

    const-string v1, "installedSaved"

    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    const/4 v0, 0x0

    :try_start_7
    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Ljava/lang/String;I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result v0

    if-ne v0, v3, :cond_4

    :try_start_8
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_9
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_3
    :goto_2
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_b
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v0, 0x0

    :try_start_c
    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_2

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_4
    :try_start_d
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v0, 0x2000

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const-string v7, "package"

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_name"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "installed_app_info"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_e
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    :try_start_f
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_6
    :goto_4
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    :try_start_13
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_14
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v0, 0x0

    :try_start_15
    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_4

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :catch_4
    move-exception v0

    :try_start_16
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    const/4 v0, 0x0

    :try_start_17
    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_4

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    throw v0

    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    :try_start_18
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_8
    :goto_5
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :catch_5
    move-exception v1

    :try_start_1a
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    const/4 v1, 0x0

    :try_start_1b
    iput-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_5

    :catchall_6
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
.end method

.method private h()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->u:Z

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const-string v2, "app_folder"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/FexApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "logo_repaired"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0xde

    if-lt v2, v3, :cond_1

    const/16 v3, 0xe1

    if-gt v2, v3, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logo_repaired"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->u:Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private i(Ljava/lang/String;)Lcom/estrongs/android/appinfo/n;
    .locals 3

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/appinfo/n;

    iget-boolean v2, v0, Lcom/estrongs/android/appinfo/n;->d:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/estrongs/android/appinfo/n;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, v0, Lcom/estrongs/android/appinfo/n;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final j(Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/appinfo/m;

    return-object v0
.end method

.method private k(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v1, v0, Lcom/estrongs/fs/impl/local/f;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v1, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "forece_thumbnail"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lcom/estrongs/fs/impl/local/f;

    goto :goto_0
.end method

.method private l(Ljava/lang/String;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a()V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v1, p1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lorg/json/simple/JSONArray;

    if-eqz v3, :cond_4

    check-cast v1, Lorg/json/simple/JSONArray;

    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v3, "folder"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v4, "package_name"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v5, "version"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v5

    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    const-string v6, "deleted"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v6

    check-cast v7, Ljava/util/Map;

    const-string v1, "rate"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v7

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-ne v6, v10, :cond_2

    invoke-direct {p0, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(I)V

    :goto_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "value"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "app_folder_map_version"

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "config"

    const-string v6, "key=?"

    invoke-virtual {v4, v5, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    throw v1

    :cond_2
    move-object v1, p0

    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(ILjava/lang/String;Ljava/lang/String;III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v1

    :try_start_7
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v2, 0x0

    :try_start_8
    iput-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_9
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_2
    move-exception v1

    const/4 v2, 0x0

    :try_start_a
    iput-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_2
    move-exception v1

    :try_start_b
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/4 v2, 0x0

    :try_start_c
    iput-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_d
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catchall_4
    move-exception v1

    const/4 v2, 0x0

    :try_start_e
    iput-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_3
    move v1, v8

    :goto_3
    move v2, v1

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private m(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->i(Ljava/lang/String;)Lcom/estrongs/android/appinfo/n;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v9

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v9

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folder_table"

    const-string v3, "folder=? COLLATE NOCASE"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method private o(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v9

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v9

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "package_table"

    const-string v3, "package=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method private p(Ljava/lang/String;)I
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "folder"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folder_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private q(Ljava/lang/String;)I
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "package_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/o;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/appinfo/o;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/io/File;Lcom/estrongs/android/appinfo/o;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/appinfo/o;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/appinfo/o;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j(Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v0, v3, Lcom/estrongs/android/appinfo/m;->b:I

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/estrongs/android/appinfo/m;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v0, v3, Lcom/estrongs/android/appinfo/m;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v3, Lcom/estrongs/android/appinfo/m;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v0, v3, Lcom/estrongs/android/appinfo/m;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/f;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f:Landroid/support/v4/b/c;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget v1, v3, Lcom/estrongs/android/appinfo/m;->b:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_7

    invoke-static {v0}, Lcom/estrongs/android/util/b;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    iget v1, v3, Lcom/estrongs/android/appinfo/m;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget v1, v3, Lcom/estrongs/android/appinfo/m;->b:I

    if-ne v1, v8, :cond_6

    :cond_4
    new-instance v1, Lcom/estrongs/android/appinfo/p;

    invoke-direct {v1, v0}, Lcom/estrongs/android/appinfo/p;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget v0, v3, Lcom/estrongs/android/appinfo/m;->b:I

    if-ne v0, v8, :cond_5

    invoke-static {v1}, Lcom/estrongs/android/util/b;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    move-object v0, v1

    :cond_6
    move-object v2, v0

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->p:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->p:Ljava/util/HashMap;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_a

    if-eqz p3, :cond_9

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_a
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_b

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v6, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->p:Ljava/util/HashMap;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/estrongs/android/appinfo/o;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->l:Lcom/estrongs/android/pop/utils/cm;

    new-instance v5, Lcom/estrongs/android/appinfo/e;

    invoke-direct {v5, p0, v4, v1}, Lcom/estrongs/android/appinfo/e;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Lcom/estrongs/fs/h;Landroid/os/ConditionVariable;)V

    invoke-virtual {v2, v5}, Lcom/estrongs/android/pop/utils/cm;->a(Lcom/estrongs/android/pop/utils/cq;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f:Landroid/support/v4/b/c;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_c
    move-object v1, v2

    goto :goto_2

    :cond_d
    move-object v0, v2

    goto :goto_1
.end method

.method public a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V

    new-instance v0, Lcom/estrongs/android/appinfo/m;

    const/4 v2, 0x2

    invoke-direct {v0, p2, v2}, Lcom/estrongs/android/appinfo/m;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Lcom/estrongs/fs/h;)Lcom/estrongs/android/appinfo/m;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    .locals 15

    const/4 v10, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    if-nez p2, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_0

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    const/4 v9, 0x0

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package_name"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->i(Ljava/lang/String;)Lcom/estrongs/android/appinfo/n;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/estrongs/android/appinfo/m;

    iget v2, v2, Lcom/estrongs/android/appinfo/n;->b:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/appinfo/m;-><init>(II)V

    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-interface/range {p1 .. p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v10, v1

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "app_folder_map_user"

    const-string v4, "folder=? COLLATE NOCASE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_1d

    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v10, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->g:Lcom/estrongs/android/appinfo/m;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-interface/range {p1 .. p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_6
    move-object v9, v1

    goto :goto_1

    :cond_7
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v11, 0x0

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "app_folder_map"

    const-string v4, "folder=? COLLATE NOCASE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "select_rate desc"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_a

    :goto_3
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v4, v2

    move-object v1, v9

    move-object v2, v10

    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    iget-object v3, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v14, v1

    move-object v1, v2

    move-object v2, v14

    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-nez v2, :cond_f

    const/4 v3, 0x0

    :goto_6
    add-int/2addr v3, v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-nez v3, :cond_10

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->g:Lcom/estrongs/android/appinfo/m;

    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-interface/range {p1 .. p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move-object v10, v1

    goto/16 :goto_0

    :cond_9
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_a
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->n(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_d

    const-string v3, "select b.package package_name from (select package package_id from folder_package_match_table where folder=? order by deep asc) a left join package_table b on a.package_id=b.id"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_d

    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_c
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v2, 0x0

    :cond_d
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v9

    move-object v1, v10

    goto :goto_5

    :cond_f
    const/4 v3, 0x1

    goto :goto_6

    :cond_10
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v2, :cond_11

    invoke-virtual {p0, v4, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;

    move-result-object v1

    :cond_11
    if-nez v1, :cond_13

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;

    move-result-object v1

    if-eqz v1, :cond_12

    :cond_13
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v1

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;

    move-result-object v1

    if-eqz v1, :cond_14

    if-nez v3, :cond_1c

    :goto_b
    const/4 v3, 0x3

    iput v3, v1, Lcom/estrongs/android/appinfo/m;->b:I

    move-object v10, v1

    :goto_c
    if-eqz v10, :cond_15

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-interface/range {p1 .. p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_14
    move-object v1, v3

    move-object v3, v1

    goto :goto_a

    :cond_15
    if-eqz v2, :cond_16

    const/4 v1, 0x0

    invoke-interface {v12, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_16
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v10, Lcom/estrongs/android/appinfo/m;

    const/4 v2, 0x4

    invoke-direct {v10, v1, v2}, Lcom/estrongs/android/appinfo/m;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-interface/range {p1 .. p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_18
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v10, Lcom/estrongs/android/appinfo/m;

    const/4 v2, 0x6

    invoke-direct {v10, v1, v2}, Lcom/estrongs/android/appinfo/m;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-interface/range {p1 .. p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->h:Lcom/estrongs/android/appinfo/m;

    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-interface/range {p1 .. p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->h:Lcom/estrongs/android/appinfo/m;

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v11

    goto/16 :goto_9

    :catchall_2
    move-exception v1

    move-object v2, v11

    goto/16 :goto_9

    :catchall_3
    move-exception v1

    move-object v2, v4

    goto/16 :goto_9

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v4, v11

    move-object v2, v10

    move-object v1, v9

    goto/16 :goto_4

    :catch_2
    move-exception v1

    move-object v3, v1

    move-object v4, v2

    move-object v1, v9

    move-object v2, v10

    goto/16 :goto_4

    :catch_3
    move-exception v1

    move-object v3, v1

    move-object v4, v11

    move-object v2, v10

    move-object v1, v9

    goto/16 :goto_4

    :cond_1b
    move-object v10, v3

    goto/16 :goto_c

    :cond_1c
    move-object v1, v3

    goto/16 :goto_b

    :cond_1d
    move-object v11, v2

    goto/16 :goto_2

    :cond_1e
    move-object v2, v9

    move-object v1, v10

    goto/16 :goto_5
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->h()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->o:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b()V

    sget-object v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;ZLcom/estrongs/android/appinfo/u;)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/appinfo/i;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/appinfo/i;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/u;Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/appinfo/i;->start()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/appinfo/u;)V
    .locals 4

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->g()V

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aG()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v0

    if-eq v1, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a()V

    :cond_3
    new-instance v0, Lcom/estrongs/android/appinfo/g;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/appinfo/g;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Lcom/estrongs/android/appinfo/u;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/t;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "package_name"

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_folder_map_user"

    const-string v3, "folder=? COLLATE NOCASE"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-void

    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v9

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_folder_map"

    const-string v3, "folder=? COLLATE NOCASE"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_4
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_5
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v9

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v9, v8

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v9

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :cond_6
    move-object v8, v0

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aE()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_7

    :goto_2
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/fs/m;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j(Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;

    move-result-object v3

    if-nez v3, :cond_3

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_0

    new-instance v0, Lcom/estrongs/android/appinfo/k;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/appinfo/k;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/util/List;Lcom/estrongs/android/appinfo/q;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public a(Ljava/util/List;Lcom/estrongs/android/appinfo/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/appinfo/q;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/estrongs/android/appinfo/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/appinfo/d;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/util/List;Lcom/estrongs/android/appinfo/q;)V

    invoke-virtual {v0}, Lcom/estrongs/android/appinfo/d;->start()V

    goto :goto_0
.end method

.method public a([Ljava/io/File;Lcom/estrongs/android/appinfo/q;)V
    .locals 7

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v5

    invoke-direct {v5, v4}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j(Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;

    move-result-object v4

    if-nez v4, :cond_2

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_4
    new-instance v4, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v4, v3}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/util/List;Lcom/estrongs/android/appinfo/q;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/estrongs/fs/h;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aE()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j(Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/estrongs/android/appinfo/m;->b:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v1, v1, Lcom/estrongs/android/appinfo/m;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/estrongs/fs/h;)Lcom/estrongs/android/appinfo/r;
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select package_name,select_rate from app_folder_map where select_rate > 0 and folder=? COLLATE NOCASE order by select_rate desc"

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/estrongs/android/appinfo/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/appinfo/r;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v4, v1, Lcom/estrongs/android/appinfo/r;->a:Ljava/lang/String;

    iput v5, v1, Lcom/estrongs/android/appinfo/r;->b:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method protected b()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "folder_app.zip"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->n(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const-string v2, "select b.package package_name from (select package package_id from folder_package_match_table where folder=? order by deep asc) a left join package_table b on a.package_id=b.id"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-void

    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_3
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a()V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a()V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a()V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Lcom/estrongs/fs/h;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->i(Ljava/lang/String;)Lcom/estrongs/android/appinfo/n;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, v0, Lcom/estrongs/android/appinfo/n;->c:Z

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Z)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, v6, v3, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageManager;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, v6, v3, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/pm/PackageManager;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/am;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v2, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    new-instance v2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    invoke-direct {v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;-><init>()V

    iput-object v9, v2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    iput-boolean v7, v2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->b:Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    new-instance v0, Lcom/estrongs/android/appinfo/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/appinfo/l;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    iget-object v1, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v4

    :goto_6
    if-nez v1, :cond_b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    new-instance v0, Lcom/estrongs/android/appinfo/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/appinfo/b;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v2, v3

    goto/16 :goto_0

    :cond_e
    move v1, v5

    goto :goto_6

    :cond_f
    move-object v0, v2

    goto :goto_4
.end method

.method f(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "folder"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_folder_map_user"

    const-string v3, "package_name=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object v10

    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v9

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_folder_map"

    const-string v3, "package_name=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_2
    :goto_4
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_5
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v9

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v9, v8

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v9

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :cond_7
    move-object v8, v0

    goto :goto_3
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/appinfo/c;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/appinfo/c;-><init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/appinfo/c;->start()V

    return-void
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->t:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "app_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->s:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "installed_app_info"

    const-string v3, "package=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    :cond_2
    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    :goto_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_4

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v0, v8

    goto :goto_1

    :cond_5
    move-object v0, v8

    goto :goto_1
.end method
