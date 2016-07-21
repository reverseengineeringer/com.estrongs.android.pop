.class Lcom/estrongs/android/view/dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/m;

.field final synthetic b:Lcom/estrongs/android/view/dl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dl;Lcom/estrongs/a/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dm;->b:Lcom/estrongs/android/view/dl;

    iput-object p2, p0, Lcom/estrongs/android/view/dm;->a:Lcom/estrongs/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/dm;->b:Lcom/estrongs/android/view/dl;

    iget-object v0, v0, Lcom/estrongs/android/view/dl;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->al()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dm;->b:Lcom/estrongs/android/view/dl;

    iget-object v0, v0, Lcom/estrongs/android/view/dl;->a:Lcom/estrongs/android/view/cr;

    iget-boolean v0, v0, Lcom/estrongs/android/view/cr;->Y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dm;->b:Lcom/estrongs/android/view/dl;

    iget-object v0, v0, Lcom/estrongs/android/view/dl;->a:Lcom/estrongs/android/view/cr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/view/dm;->b:Lcom/estrongs/android/view/dl;

    iget-object v2, v2, Lcom/estrongs/android/view/dl;->a:Lcom/estrongs/android/view/cr;

    iget-object v3, p0, Lcom/estrongs/android/view/dm;->b:Lcom/estrongs/android/view/dl;

    iget-object v3, v3, Lcom/estrongs/android/view/dl;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3}, Lcom/estrongs/android/view/cr;->an()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/cr;->k(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/dm;->a:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/dm;->a:Lcom/estrongs/a/a/m;

    iget-wide v2, v2, Lcom/estrongs/a/a/m;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
