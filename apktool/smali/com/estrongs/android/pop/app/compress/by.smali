.class Lcom/estrongs/android/pop/app/compress/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/bm;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bx;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/by;->b:Lcom/estrongs/android/pop/app/compress/bx;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/by;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/ak;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/by;->a:Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/by;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/ak;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/android/view/ak;->g()V

    new-instance v0, Lcom/estrongs/android/pop/app/compress/bs;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/by;->b:Lcom/estrongs/android/pop/app/compress/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bx;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bs;->f(Lcom/estrongs/android/pop/app/compress/bs;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/by;->b:Lcom/estrongs/android/pop/app/compress/bx;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/bx;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/bs;->d(Lcom/estrongs/android/pop/app/compress/bs;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1}, Lcom/estrongs/android/view/ak;->s()Lcom/estrongs/io/archive/i;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/bs;-><init>(Lcom/estrongs/android/view/ak;Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/i;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/by;->b:Lcom/estrongs/android/pop/app/compress/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bx;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bs;->g(Lcom/estrongs/android/pop/app/compress/bs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/by;->b:Lcom/estrongs/android/pop/app/compress/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bx;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bs;->b(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/by;->b:Lcom/estrongs/android/pop/app/compress/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bx;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bs;->c(Lcom/estrongs/android/pop/app/compress/bs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bs;->show()V

    goto :goto_0
.end method
