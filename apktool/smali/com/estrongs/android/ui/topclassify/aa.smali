.class public Lcom/estrongs/android/ui/topclassify/aa;
.super Lcom/estrongs/fs/x;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/c/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/app/c/j;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/aa;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/topclassify/aa;->a:Lcom/estrongs/android/pop/app/c/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/pop/app/c/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/aa;->a:Lcom/estrongs/android/pop/app/c/j;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/aa;->a:Lcom/estrongs/android/pop/app/c/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/aa;->a:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/estrongs/fs/x;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
