.class public Lcom/estrongs/android/a/b/o;
.super Lcom/estrongs/android/a/b/k;


# instance fields
.field private a:J

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/p/a;

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/o;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/p/a;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/a/b/o;->b:I

    return-void
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/a/b/o;->a:J

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/a/b/o;->c:I

    return-void
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/b/o;->a:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/a/b/o;->b:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/a/b/o;->c:I

    return v0
.end method
