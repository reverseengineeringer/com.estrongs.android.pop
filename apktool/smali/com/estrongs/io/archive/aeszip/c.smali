.class final Lcom/estrongs/io/archive/aeszip/c;
.super Ljava/util/zip/CheckedInputStream;


# instance fields
.field private final a:Ljava/util/zip/ZipEntry;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;I)V
    .locals 1

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    iput-object p2, p0, Lcom/estrongs/io/archive/aeszip/c;->a:Ljava/util/zip/ZipEntry;

    iput p3, p0, Lcom/estrongs/io/archive/aeszip/c;->b:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/estrongs/io/archive/aeszip/c;->skip(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/CheckedInputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/c;->a:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/c;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/io/archive/aeszip/c;->a:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/lang/String;JJ)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/util/zip/CheckedInputStream;->close()V

    throw v0
.end method

.method public skip(J)J
    .locals 3

    iget v0, p0, Lcom/estrongs/io/archive/aeszip/c;->b:I

    new-array v0, v0, [B

    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/io/InputStream;J[B)J

    move-result-wide v0

    return-wide v0
.end method
