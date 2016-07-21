.class Lcom/estrongs/android/scanner/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/estrongs/android/scanner/a/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/a;

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/a;IJJ)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/scanner/j;->a:Lcom/estrongs/android/scanner/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/estrongs/android/scanner/j;->b:I

    iput-wide p3, p0, Lcom/estrongs/android/scanner/j;->c:J

    iput-wide p5, p0, Lcom/estrongs/android/scanner/j;->d:J

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/j;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/scanner/j;->b:I

    return v0
.end method


# virtual methods
.method public a()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/scanner/j;->a:Lcom/estrongs/android/scanner/a;

    invoke-static {v0}, Lcom/estrongs/android/scanner/a;->a(Lcom/estrongs/android/scanner/a;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/scanner/j;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLogPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lastmodified"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/estrongs/android/scanner/j;->c:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lastmodified"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/estrongs/android/scanner/j;->d:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/estrongs/android/scanner/k;

    invoke-direct {v1, p0, v7}, Lcom/estrongs/android/scanner/k;-><init>(Lcom/estrongs/android/scanner/j;Ljava/util/List;)V

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "path"

    aput-object v5, v3, v0

    const/4 v0, 0x1

    const-string v5, "name"

    aput-object v5, v3, v0

    const/4 v0, 0x2

    const-string v5, "groupname"

    aput-object v5, v3, v0

    const/4 v0, 0x3

    const-string v5, "filetype"

    aput-object v5, v3, v0

    const/4 v0, 0x4

    const-string v5, "size"

    aput-object v5, v3, v0

    const/4 v0, 0x5

    const-string v5, "lastmodified"

    aput-object v5, v3, v0

    const-string v5, "lastmodified DESC"

    iget-object v0, p0, Lcom/estrongs/android/scanner/j;->a:Lcom/estrongs/android/scanner/a;

    invoke-static {v0}, Lcom/estrongs/android/scanner/a;->b(Lcom/estrongs/android/scanner/a;)Lcom/estrongs/android/scanner/d/a;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/l;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/estrongs/android/scanner/j;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/j;->a()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
