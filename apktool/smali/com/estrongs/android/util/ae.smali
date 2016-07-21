.class Lcom/estrongs/android/util/ae;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/util/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/aa;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/util/ae;->b:Lcom/estrongs/android/util/aa;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/util/ae;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/util/ae;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v0}, Lcom/estrongs/android/util/aa;->b(Lcom/estrongs/android/util/aa;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/util/ae;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/util/ae;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v0}, Lcom/estrongs/android/util/aa;->b(Lcom/estrongs/android/util/aa;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/ae;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v0}, Lcom/estrongs/android/util/aa;->c(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/ae;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v0}, Lcom/estrongs/android/util/aa;->c(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/af;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/util/ae;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v1}, Lcom/estrongs/android/util/aa;->d(Lcom/estrongs/android/util/aa;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/util/ae;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v2}, Lcom/estrongs/android/util/aa;->e(Lcom/estrongs/android/util/aa;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/util/ae;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v4}, Lcom/estrongs/android/util/aa;->f(Lcom/estrongs/android/util/aa;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/util/af;->downloadProgress(Ljava/lang/Object;JJ)V

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
