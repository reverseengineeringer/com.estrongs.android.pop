.class Lcom/estrongs/android/pop/app/compress/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bx;->a:Lcom/estrongs/android/pop/app/compress/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bx;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bs;->e(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/android/view/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->r()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bx;->a:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bs;->e(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/android/view/ak;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/by;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/compress/by;-><init>(Lcom/estrongs/android/pop/app/compress/bx;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/bm;)V

    return-void
.end method
