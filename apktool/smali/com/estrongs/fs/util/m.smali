.class public Lcom/estrongs/fs/util/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:C

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/estrongs/fs/util/m;->a:C

    new-instance v0, Ljava/io/StringWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/util/m;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4

    invoke-static {p0, p1}, Lcom/estrongs/fs/util/m;->b(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;Ljava/io/Writer;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Lcom/estrongs/fs/util/m;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static b(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6

    const/16 v0, 0x1000

    new-array v2, v0, [C

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-wide v0
.end method
