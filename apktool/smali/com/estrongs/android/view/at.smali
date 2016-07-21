.class Lcom/estrongs/android/view/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/compress/j;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lcom/estrongs/android/view/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ak;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    iput-object p2, p0, Lcom/estrongs/android/view/at;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/view/at;->b:Ljava/util/List;

    iput-boolean p4, p0, Lcom/estrongs/android/view/at;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/compress/a;Lcom/estrongs/android/pop/app/compress/k;)V
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/view/at;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    iget-boolean v2, p2, Lcom/estrongs/android/pop/app/compress/k;->c:Z

    invoke-static {v1, v2}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Z)Z

    iget-object v1, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    iget v2, p2, Lcom/estrongs/android/pop/app/compress/k;->a:I

    invoke-static {v1, v2}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;I)I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    invoke-static {v2}, Lcom/estrongs/android/view/ak;->k(Lcom/estrongs/android/view/ak;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    iget-object v1, p2, Lcom/estrongs/android/pop/app/compress/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/ak;->c(Lcom/estrongs/android/view/ak;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    iget-object v1, p0, Lcom/estrongs/android/view/at;->b:Ljava/util/List;

    iget-boolean v2, p0, Lcom/estrongs/android/view/at;->c:Z

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Ljava/util/List;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    invoke-static {v2}, Lcom/estrongs/android/view/ak;->k(Lcom/estrongs/android/view/ak;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/view/ak;->c(Lcom/estrongs/android/view/ak;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/at;->d:Lcom/estrongs/android/view/ak;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/at;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/view/ak;->c(Lcom/estrongs/android/view/ak;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
