.class public Lcom/estrongs/android/a/b/c;
.super Lcom/estrongs/android/a/b/a;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/a/b/a;-><init>()V

    iput v0, p0, Lcom/estrongs/android/a/b/c;->b:I

    iput v0, p0, Lcom/estrongs/android/a/b/c;->c:I

    iput-wide v2, p0, Lcom/estrongs/android/a/b/c;->d:J

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/b/c;->a:Ljava/util/Set;

    iput-wide v2, p0, Lcom/estrongs/android/a/b/c;->e:J

    return-void
.end method

.method public constructor <init>(IIJJJLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/estrongs/android/a/b/a;-><init>(J)V

    iput p1, p0, Lcom/estrongs/android/a/b/c;->b:I

    iput p2, p0, Lcom/estrongs/android/a/b/c;->c:I

    iput-wide p5, p0, Lcom/estrongs/android/a/b/c;->d:J

    iput-object p9, p0, Lcom/estrongs/android/a/b/c;->a:Ljava/util/Set;

    iput-wide p7, p0, Lcom/estrongs/android/a/b/c;->e:J

    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/a/b/c;->b:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/a/b/c;->c:I

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/b/c;->d:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/b/c;->e:J

    return-wide v0
.end method

.method public final i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/b/c;->a:Ljava/util/Set;

    return-object v0
.end method
