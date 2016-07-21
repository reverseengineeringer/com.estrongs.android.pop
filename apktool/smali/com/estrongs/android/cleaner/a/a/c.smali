.class public Lcom/estrongs/android/cleaner/a/a/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Z

.field public static f:Z

.field private static g:I

.field private static h:Z

.field private static i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v2, Lcom/estrongs/android/cleaner/a/a/c;->a:Z

    sput-boolean v1, Lcom/estrongs/android/cleaner/a/a/c;->b:Z

    const-string v0, "Market"

    sput-object v0, Lcom/estrongs/android/cleaner/a/a/c;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/estrongs/android/cleaner/a/a/c;->d:Ljava/lang/String;

    sput-boolean v1, Lcom/estrongs/android/cleaner/a/a/c;->e:Z

    sput-boolean v2, Lcom/estrongs/android/cleaner/a/a/c;->f:Z

    sput-boolean v1, Lcom/estrongs/android/cleaner/a/a/c;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/cleaner/a/a/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public static a()I
    .locals 4

    sget v0, Lcom/estrongs/android/cleaner/a/a/c;->g:I

    if-eqz v0, :cond_0

    sget v0, Lcom/estrongs/android/cleaner/a/a/c;->g:I

    :goto_0
    return v0

    :cond_0
    const-string v0, "/proc/meminfo"

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MemTotal:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    const-string v0, "\\D+"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    sput v0, Lcom/estrongs/android/cleaner/a/a/c;->g:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget v0, Lcom/estrongs/android/cleaner/a/a/c;->g:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static b()I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 6

    invoke-static {p0}, Lcom/estrongs/android/cleaner/a/a/c;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/cleaner/a/a/c;->a()I

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v0

    int-to-double v0, v1

    div-double v0, v4, v0

    sub-double v0, v2, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/cleaner/a/a/c;->b()I

    move-result v0

    :cond_0
    return v0
.end method
