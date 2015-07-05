.class public Lde/a/a/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Lde/a/a/a/a/h;->b()I

    move-result v0

    return v0
.end method

.method public a([BII)I
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public a([B)J
    .locals 10

    const-wide/16 v8, 0x1

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v8

    array-length v2, p1

    int-to-long v2, v2

    sub-long v2, v0, v2

    move-wide v0, v4

    :goto_0
    const-wide/16 v6, 0x3

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    array-length v6, p1

    invoke-virtual {p0, v2, v3, v6}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    move-wide v0, v2

    :cond_2
    sub-long/2addr v2, v8

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public a(JI)[B
    .locals 3

    new-array v0, p3, [B

    iget-object v1, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    return-object v0
.end method

.method public b()I
    .locals 4

    const/4 v3, 0x4

    new-array v0, v3, [B

    iget-object v1, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v0}, Lde/a/a/a/a/f;->a([B)I

    move-result v0

    return v0
.end method

.method public b(J)S
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Lde/a/a/a/a/h;->c()S

    move-result v0

    return v0
.end method

.method public c(J)B
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Lde/a/a/a/a/h;->d()B

    move-result v0

    return v0
.end method

.method public c()S
    .locals 4

    const/4 v3, 0x2

    new-array v0, v3, [B

    iget-object v1, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v0}, Lde/a/a/a/a/f;->b([B)S

    move-result v0

    return v0
.end method

.method public d()B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    iget-object v1, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    aget-byte v0, v0, v2

    return v0
.end method

.method public d(J)V
    .locals 1

    iget-object v0, p0, Lde/a/a/a/a/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
