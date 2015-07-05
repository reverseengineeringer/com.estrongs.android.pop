.class Lcom/estrongs/android/view/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/m;

.field final synthetic b:Lcom/estrongs/android/view/bc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bc;Lcom/estrongs/a/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bd;->b:Lcom/estrongs/android/view/bc;

    iput-object p2, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/bd;->b:Lcom/estrongs/android/view/bc;

    iget-object v0, v0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->V()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bd;->b:Lcom/estrongs/android/view/bc;

    iget-object v0, v0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/aw;

    iget-boolean v0, v0, Lcom/estrongs/android/view/aw;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bd;->b:Lcom/estrongs/android/view/bc;

    iget-object v0, v0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/aw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/view/bd;->b:Lcom/estrongs/android/view/bc;

    iget-object v2, v2, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/aw;

    iget-object v3, p0, Lcom/estrongs/android/view/bd;->b:Lcom/estrongs/android/view/bc;

    iget-object v3, v3, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->X()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/aw;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/bd;->a:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
