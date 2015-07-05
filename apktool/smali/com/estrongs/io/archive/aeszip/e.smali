.class Lcom/estrongs/io/archive/aeszip/e;
.super Ljava/io/InputStream;


# static fields
.field static final synthetic c:Z


# instance fields
.field private a:J

.field private b:J

.field final synthetic d:Lcom/estrongs/io/archive/aeszip/a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/estrongs/io/archive/aeszip/e;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/estrongs/io/archive/aeszip/a;JJ)V
    .locals 4

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/e;->d:Lcom/estrongs/io/archive/aeszip/a;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    sget-boolean v0, Lcom/estrongs/io/archive/aeszip/e;->c:Z

    if-nez v0, :cond_0

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/estrongs/io/archive/aeszip/e;->c:Z

    if-nez v0, :cond_1

    cmp-long v0, p4, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-wide p4, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    iput-wide p2, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    return-void
.end method

.method public available()I
    .locals 4

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->d:Lcom/estrongs/io/archive/aeszip/a;

    invoke-static {v0}, Lcom/estrongs/io/archive/aeszip/a;->a(Lcom/estrongs/io/archive/aeszip/a;)V

    iget-wide v0, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    iget-boolean v2, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public read()I
    .locals 8

    const-wide/16 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/e;->d:Lcom/estrongs/io/archive/aeszip/a;

    invoke-static {v1}, Lcom/estrongs/io/archive/aeszip/a;->a(Lcom/estrongs/io/archive/aeszip/a;)V

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->d:Lcom/estrongs/io/archive/aeszip/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->d(J)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->d:Lcom/estrongs/io/archive/aeszip/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0}, Lde/a/a/a/a/h;->b()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/e;->d:Lcom/estrongs/io/archive/aeszip/a;

    invoke-static {v1}, Lcom/estrongs/io/archive/aeszip/a;->a(Lcom/estrongs/io/archive/aeszip/a;)V

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    iget-boolean v1, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/e;->e:Z

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    long-to-int p3, v0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->d:Lcom/estrongs/io/archive/aeszip/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->d(J)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/e;->d:Lcom/estrongs/io/archive/aeszip/a;

    iget-object v0, v0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lde/a/a/a/a/h;->a([BII)I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->b:J

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/io/archive/aeszip/e;->a:J

    goto :goto_0
.end method
