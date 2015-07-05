.class final Lcom/estrongs/io/archive/aeszip/g;
.super Ljava/io/FilterInputStream;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/util/zip/Checksum;

.field private final c:[B

.field private final d:Ljava/util/zip/Inflater;

.field private final e:[B

.field private final f:Ljava/util/zip/ZipEntry;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/estrongs/io/archive/aeszip/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->b:Ljava/util/zip/Checksum;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->c:[B

    invoke-static {}, Lcom/estrongs/io/archive/aeszip/a;->e()Ljava/util/zip/Inflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->e:[B

    iput-object p2, p0, Lcom/estrongs/io/archive/aeszip/g;->f:Ljava/util/zip/ZipEntry;

    return-void
.end method

.method private a()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/g;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/g;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/estrongs/io/archive/aeszip/g;->skip(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iput-boolean v4, p0, Lcom/estrongs/io/archive/aeszip/g;->g:Z

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    invoke-static {v0}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/util/zip/Inflater;)V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->f:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/g;->b:Ljava/util/zip/Checksum;

    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/io/archive/aeszip/g;->f:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/estrongs/io/archive/aeszip/g;->g:Z

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    invoke-static {v1}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/util/zip/Inflater;)V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    throw v0
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->c:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/estrongs/io/archive/aeszip/g;->read([BII)I

    move-result v0

    if-eqz v0, :cond_0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->c:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/io/archive/aeszip/g;->a()V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    add-int v1, p2, p3

    or-int v2, p2, p3

    or-int/2addr v2, v1

    array-length v3, p1

    sub-int v1, v3, v1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/g;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/g;->e:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/io/archive/aeszip/g;->e:[B

    array-length v4, v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/g;->b:Ljava/util/zip/Checksum;

    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/g;->e:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Ljava/util/zip/Checksum;->update([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_3
    aput-byte v0, p1, p2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/estrongs/io/archive/aeszip/g;->a:Z

    if-nez v0, :cond_5

    if-gez v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    sget-boolean v0, Lcom/estrongs/io/archive/aeszip/g;->a:Z

    if-nez v0, :cond_6

    if-ltz v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    sget-boolean v0, Lcom/estrongs/io/archive/aeszip/g;->a:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark()/reset() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 3

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/g;->e:[B

    array-length v0, v0

    new-array v0, v0, [B

    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/io/InputStream;J[B)J

    move-result-wide v0

    return-wide v0
.end method
