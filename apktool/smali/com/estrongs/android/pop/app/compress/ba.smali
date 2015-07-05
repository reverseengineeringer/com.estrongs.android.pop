.class Lcom/estrongs/android/pop/app/compress/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ay;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ba;->a:Lcom/estrongs/android/pop/app/compress/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ba;->a:Lcom/estrongs/android/pop/app/compress/ay;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aw;->e(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/android/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->q()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ba;->a:Lcom/estrongs/android/pop/app/compress/ay;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aw;->e(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/android/view/e;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/bb;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/compress/bb;-><init>(Lcom/estrongs/android/pop/app/compress/ba;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/t;)V

    return-void
.end method
