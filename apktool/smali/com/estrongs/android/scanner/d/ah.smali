.class public Lcom/estrongs/android/scanner/d/ah;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/scanner/d/ah;


# instance fields
.field private final b:Lcom/estrongs/android/scanner/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/scanner/d/ah;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/d/ah;-><init>()V

    sput-object v0, Lcom/estrongs/android/scanner/d/ah;->a:Lcom/estrongs/android/scanner/d/ah;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/android/scanner/d/a;->a()Lcom/estrongs/android/scanner/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/ah;->b:Lcom/estrongs/android/scanner/d/a;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/d/ah;)Lcom/estrongs/android/scanner/d/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ah;->b:Lcom/estrongs/android/scanner/d/a;

    return-object v0
.end method

.method public static a()Lcom/estrongs/android/scanner/d/ah;
    .locals 1

    sget-object v0, Lcom/estrongs/android/scanner/d/ah;->a:Lcom/estrongs/android/scanner/d/ah;

    return-object v0
.end method


# virtual methods
.method public final a(I[Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-object v1, p2, v5

    if-eqz v1, :cond_0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v1, p2, v6

    if-eqz v1, :cond_1

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "path"

    aput-object v0, v3, v5

    const-string v0, "timestamp"

    aput-object v0, v3, v6

    const-string v5, "timestamp DESC"

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/estrongs/android/scanner/d/aj;

    invoke-direct {v1, p0, v6}, Lcom/estrongs/android/scanner/d/aj;-><init>(Lcom/estrongs/android/scanner/d/ah;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ah;->b:Lcom/estrongs/android/scanner/d/a;

    const-string v2, "latestOpen"

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/l;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/android/scanner/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/scanner/d/ai;

    invoke-direct {v1, p0, p1, v0}, Lcom/estrongs/android/scanner/d/ai;-><init>(Lcom/estrongs/android/scanner/d/ah;Ljava/lang/String;I)V

    invoke-static {}, Lcom/estrongs/android/scanner/d/af;->a()Lcom/estrongs/android/scanner/d/af;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/af;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
