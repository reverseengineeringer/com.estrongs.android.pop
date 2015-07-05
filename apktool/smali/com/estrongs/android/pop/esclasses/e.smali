.class public Lcom/estrongs/android/pop/esclasses/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Lcom/estrongs/android/pop/esclasses/f;

.field private static c:[Lcom/estrongs/android/pop/esclasses/f;

.field private static d:Z

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:[I

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    sput-object v0, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    sput-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/esclasses/e;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/e;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/e;->f:Ljava/util/HashMap;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/estrongs/android/pop/esclasses/e;->g:[I

    const v0, 0x32000

    sput v0, Lcom/estrongs/android/pop/esclasses/e;->h:I

    return-void

    :array_0
    .array-data 4
        0x7f0b0095
        0x7f0b00b3
        0x7f0b00ed
        0x7f0b0158
        0x7f0b015b
        0x7f0b022a
        0x7f0b053c
    .end array-data
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/estrongs/android/pop/esclasses/f;
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v2, Lcom/estrongs/android/pop/esclasses/f;

    invoke-direct {v2}, Lcom/estrongs/android/pop/esclasses/f;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v4}, Lcom/estrongs/android/pop/esclasses/a/v;->a(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-static {v4}, Lcom/estrongs/android/pop/esclasses/a/v;->b(Ljava/lang/String;)I

    move-result v5

    new-array v0, v5, [[Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/pop/esclasses/f;->a:[[Ljava/lang/String;

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v6, v2, Lcom/estrongs/android/pop/esclasses/f;->a:[[Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/estrongs/android/pop/esclasses/a/v;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_8

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    new-array v0, v0, [Lcom/estrongs/android/pop/esclasses/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v4, v1

    :goto_1
    :try_start_2
    array-length v6, v0

    if-ge v4, v6, :cond_4

    aget-object v6, v5, v4

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/estrongs/android/pop/esclasses/f;

    move-result-object v6

    aput-object v6, v0, v4

    aget-object v6, v0, v4

    if-nez v6, :cond_3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    :goto_2
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    if-eqz v2, :cond_7

    move v0, v1

    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_7

    aget-object v1, v2, v0

    if-eqz v1, :cond_2

    aget-object v1, v2, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    aget-object v1, v2, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :try_start_3
    sput-object v0, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    :goto_4
    iget-object v4, v2, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-eqz v4, :cond_5

    iget-object v0, v2, Lcom/estrongs/android/pop/esclasses/f;->a:[[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v0, :cond_6

    :cond_5
    move-object v0, v3

    :goto_5
    return-object v0

    :cond_6
    move-object v0, v2

    goto :goto_5

    :cond_7
    move-object v0, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v0, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :cond_8
    move-object v0, v3

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->B()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-boolean v4, Lcom/estrongs/android/pop/esclasses/e;->d:Z

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cn"

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    return-void

    :cond_1
    const-string v0, "tw"

    goto :goto_0

    :cond_2
    const-string v1, "pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "pt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pt_pt"

    goto :goto_0

    :cond_3
    const-string v0, "pt"

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v4, Lcom/estrongs/android/pop/esclasses/e;->d:Z

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/esclasses/e;->d:Z

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->c()V

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/estrongs/android/pop/esclasses/f;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    sput-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "ug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/estrongs/android/pop/esclasses/e;->g:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/estrongs/android/pop/esclasses/e;->g:[I

    aget v2, v2, v0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x320

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v4, Lcom/estrongs/android/pop/esclasses/e;->e:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v2

    :goto_1
    if-lt v0, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit16 v0, v0, -0x320

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    iget-object v3, v3, Lcom/estrongs/android/pop/esclasses/f;->a:[[Ljava/lang/String;

    aget-object v1, v3, v1

    aget-object v0, v1, v0

    :goto_2
    if-nez v0, :cond_4

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    if-eqz v1, :cond_4

    move v3, v2

    move-object v1, v0

    :goto_3
    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    array-length v0, v0

    if-ge v3, v0, :cond_9

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v0, v0, v3

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v2

    :goto_4
    if-lt v0, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit16 v0, v0, -0x320

    goto :goto_4

    :cond_3
    sget-object v5, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/estrongs/android/pop/esclasses/f;->a:[[Ljava/lang/String;

    aget-object v1, v5, v1

    aget-object v0, v1, v0

    :goto_5
    if-eqz v0, :cond_7

    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    sget-boolean v1, Lcom/estrongs/android/pop/z;->K:Z

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "WLAN"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move-object v0, v1

    :cond_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto :goto_6

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method

.method public static b()Z
    .locals 2

    sget-boolean v0, Lcom/estrongs/android/pop/esclasses/e;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    sput-object v2, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    return-void
.end method

.method public static c(I)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v3, Lcom/estrongs/android/pop/esclasses/e;->e:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->b:Lcom/estrongs/android/pop/esclasses/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v2, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    sget-object v4, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v4, v4, v2

    if-eqz v4, :cond_3

    sget-object v4, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->c:[Lcom/estrongs/android/pop/esclasses/f;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/estrongs/android/pop/esclasses/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(I)[Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->c(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
