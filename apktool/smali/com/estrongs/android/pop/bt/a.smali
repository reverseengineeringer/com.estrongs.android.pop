.class public Lcom/estrongs/android/pop/bt/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/UUID;

.field private static final j:[B


# instance fields
.field private b:Lcom/estrongs/bluetooth/parser/a;

.field private c:Lb/b/g;

.field private d:Z

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Z

.field private final h:Ljava/lang/String;

.field private i:Lcom/estrongs/android/pop/bt/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001106-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/a;->a:Ljava/util/UUID;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/estrongs/android/pop/bt/a;->j:[B

    return-void

    :array_0
    .array-data 1
        -0x7t
        -0x14t
        0x7bt
        -0x3ct
        -0x6bt
        0x3ct
        0x11t
        -0x2et
        -0x68t
        0x4et
        0x52t
        0x54t
        0x0t
        -0x24t
        -0x62t
        0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->d:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->g:Z

    new-instance v0, Lcom/estrongs/android/pop/bt/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/bt/b;-><init>(Lcom/estrongs/android/pop/bt/a;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/a;->i:Lcom/estrongs/android/pop/bt/k;

    new-instance v0, Lcom/estrongs/bluetooth/parser/a;

    invoke-direct {v0}, Lcom/estrongs/bluetooth/parser/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/a;->b:Lcom/estrongs/bluetooth/parser/a;

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/a;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/a;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/bt/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/bluetooth/parser/OBEXElement;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v1, :cond_5

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    if-nez v5, :cond_3

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    new-instance v6, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-direct {v6}, Lcom/estrongs/bluetooth/parser/OBEXElement;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    :goto_4
    invoke-virtual {v6, v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(J)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/estrongs/bluetooth/parser/OBEXElement;->b(J)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FILE:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->i:Lcom/estrongs/android/pop/bt/k;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/bt/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/a;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->a([B)Z

    move-result v0

    return v0
.end method

.method private a([B)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    sget-object v2, Lcom/estrongs/android/pop/bt/a;->j:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v2, Lcom/estrongs/android/pop/bt/a;->j:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/estrongs/android/pop/bt/a;->j:[B

    aget-byte v2, v2, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/bt/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->h:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->i:Lcom/estrongs/android/pop/bt/k;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/estrongs/android/pop/bt/a;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/bt/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic d()[B
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/bt/a;->j:[B

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/bluetooth/parser/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->b:Lcom/estrongs/bluetooth/parser/a;

    return-object v0
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/a;->d:Z

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FTP"

    sget-object v2, Lcom/estrongs/android/pop/bt/a;->a:Ljava/util/UUID;

    invoke-static {v0, v2}, Lcom/estrongs/bluetooth/c;->a(Ljava/lang/String;Ljava/util/UUID;)Lb/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/a;->c:Lb/b/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->g:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    move v0, v1

    move v3, v1

    :goto_0
    iget-boolean v2, p0, Lcom/estrongs/android/pop/bt/a;->d:Z

    if-nez v2, :cond_1

    new-instance v4, Lcom/estrongs/android/pop/bt/c;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/pop/bt/c;-><init>(Lcom/estrongs/android/pop/bt/a;Lcom/estrongs/android/pop/bt/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v0, 0x1

    :try_start_2
    const-string v0, "OBEXFtpServer"

    const-string v5, "Accepting OBEX ftp connections"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->c:Lb/b/g;

    invoke-interface {v0, v4}, Lb/b/g;->a(Lb/b/f;)Lb/a/a/a;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lcom/estrongs/android/pop/bt/c;->a(Lb/a/a/a;I)V
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OBEXFtpServer"

    const-string v2, "Unable to create notifier"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/a;->c()V

    const-string v0, "OBEXFtpServer"

    const-string v2, "OBEX Server finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    :goto_1
    return-void

    :catch_2
    move-exception v0

    :try_start_4
    const-string v4, "Stack closed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/estrongs/android/pop/bt/a;->d:Z

    :cond_2
    iget-boolean v4, p0, Lcom/estrongs/android/pop/bt/a;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/a;->c()V

    const-string v0, "OBEXFtpServer"

    const-string v2, "OBEX Server finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :try_start_5
    const-string v4, "OBEXFtpServer"

    const-string v5, "acceptAndOpen "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/a;->c()V

    const-string v2, "OBEXFtpServer"

    const-string v3, "OBEX Server finished!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    return v0
.end method

.method public c()V
    .locals 3

    const-string v0, "xxxxxxxxxx"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->d:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->c:Lb/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->c:Lb/b/g;

    invoke-interface {v0}, Lb/b/g;->e()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX ServerConnection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX Server stop error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
