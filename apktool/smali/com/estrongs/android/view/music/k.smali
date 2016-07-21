.class Lcom/estrongs/android/view/music/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/view/music/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/music/f;II)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/k;->c:Lcom/estrongs/android/view/music/f;

    iput p2, p0, Lcom/estrongs/android/view/music/k;->a:I

    iput p3, p0, Lcom/estrongs/android/view/music/k;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/k;->c:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/view/music/k;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(I)Z

    iget-object v0, p0, Lcom/estrongs/android/view/music/k;->c:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/view/music/k;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/gq;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/k;->c:Lcom/estrongs/android/view/music/f;

    invoke-static {v0}, Lcom/estrongs/android/view/music/f;->c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
