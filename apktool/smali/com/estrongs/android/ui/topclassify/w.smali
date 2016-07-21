.class public Lcom/estrongs/android/ui/topclassify/w;
.super Lcom/estrongs/android/ui/topclassify/x;


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/topclassify/x;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/w;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/w;->e:Ljava/lang/String;

    const v1, 0x7f020109

    const v2, 0x7f0801bf

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/w;->a(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/w;->f:Ljava/lang/String;

    const v1, 0x7f020103

    const v2, 0x7f0801be

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/w;->a(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/w;->g:Ljava/lang/String;

    const v1, 0x7f020105

    const v2, 0x7f0801b6

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/ui/topclassify/w;->a(Ljava/lang/String;III)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/w;->a:Landroid/content/Context;

    const v1, 0x7f080500

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 1

    const v0, 0x7f0801b8

    return v0
.end method

.method protected g()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/topclassify/x;->g()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0801b9

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/topclassify/w;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/w;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0801ba

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/topclassify/w;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/w;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0801bb

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/topclassify/w;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/w;->o:Ljava/lang/String;

    return-void
.end method
