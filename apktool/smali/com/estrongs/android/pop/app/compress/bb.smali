.class Lcom/estrongs/android/pop/app/compress/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/t;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ba;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Lcom/estrongs/android/pop/app/compress/ba;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/bb;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/e;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->a:Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/android/view/e;->g()V

    new-instance v0, Lcom/estrongs/android/pop/app/compress/aw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ba;->a:Lcom/estrongs/android/pop/app/compress/ay;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aw;->f(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/ba;->a:Lcom/estrongs/android/pop/app/compress/ay;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/aw;->d(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1}, Lcom/estrongs/android/view/e;->r()Lcom/estrongs/io/archive/h;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/aw;-><init>(Lcom/estrongs/android/view/e;Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/h;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ba;->a:Lcom/estrongs/android/pop/app/compress/ay;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aw;->g(Lcom/estrongs/android/pop/app/compress/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/aw;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ba;->a:Lcom/estrongs/android/pop/app/compress/ay;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aw;->b(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/aw;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ba;->a:Lcom/estrongs/android/pop/app/compress/ay;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aw;->c(Lcom/estrongs/android/pop/app/compress/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/aw;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aw;->show()V

    goto :goto_0
.end method
