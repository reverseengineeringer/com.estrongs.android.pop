.class Lcom/estrongs/android/view/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;

.field final synthetic b:Lcom/estrongs/android/view/cs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cs;Lcom/estrongs/android/view/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ct;->b:Lcom/estrongs/android/view/cs;

    iput-object p2, p0, Lcom/estrongs/android/view/ct;->a:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/ct;->b:Lcom/estrongs/android/view/cs;

    iget-object v0, v0, Lcom/estrongs/android/view/cs;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, p0, Lcom/estrongs/android/view/ct;->a:Lcom/estrongs/android/view/aw;

    iget-object v3, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/view/ct;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method
