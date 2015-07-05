.class public Lcom/estrongs/io/archive/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/io/archive/e;


# instance fields
.field a:Ljava/util/zip/ZipOutputStream;

.field b:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/b/a;->b:Ljava/util/zip/ZipEntry;

    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/b/a;->a:Ljava/util/zip/ZipOutputStream;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/b/a;->a:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0, p2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/b/a;->a:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/b/a;->a:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    return-void
.end method

.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/b/a;->a:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/b/a;->a:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method
