.class Lcom/estrongs/android/pop/app/compress/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->s(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->q()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->s(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/view/e;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/ah;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/compress/ah;-><init>(Lcom/estrongs/android/pop/app/compress/ag;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/t;)V

    return-void
.end method
