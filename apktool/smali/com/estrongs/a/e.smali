.class Lcom/estrongs/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/d;

.field final synthetic b:Lcom/estrongs/a/a;

.field final synthetic c:Lcom/estrongs/a/d;


# direct methods
.method constructor <init>(Lcom/estrongs/a/d;Lcom/estrongs/a/a/d;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/e;->c:Lcom/estrongs/a/d;

    iput-object p2, p0, Lcom/estrongs/a/e;->a:Lcom/estrongs/a/a/d;

    iput-object p3, p0, Lcom/estrongs/a/e;->b:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/a/e;->c:Lcom/estrongs/a/d;

    iget-object v0, v0, Lcom/estrongs/a/d;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/a/e;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/a/e;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/h;

    iget-object v0, v0, Lcom/estrongs/a/a/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " exist, how to do?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Overwrite(notApply)"

    new-instance v2, Lcom/estrongs/a/f;

    invoke-direct {v2, p0}, Lcom/estrongs/a/f;-><init>(Lcom/estrongs/a/e;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Skip(apply)"

    new-instance v2, Lcom/estrongs/a/g;

    invoke-direct {v2, p0}, Lcom/estrongs/a/g;-><init>(Lcom/estrongs/a/e;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "EndTask"

    new-instance v2, Lcom/estrongs/a/h;

    invoke-direct {v2, p0}, Lcom/estrongs/a/h;-><init>(Lcom/estrongs/a/e;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/a/e;->a:Lcom/estrongs/a/a/d;

    iget v0, v0, Lcom/estrongs/a/a/d;->h:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/e;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/g;

    iget-object v0, v0, Lcom/estrongs/a/a/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " copy failed, how to do?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Skip"

    new-instance v2, Lcom/estrongs/a/i;

    invoke-direct {v2, p0}, Lcom/estrongs/a/i;-><init>(Lcom/estrongs/a/e;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "End task"

    new-instance v2, Lcom/estrongs/a/j;

    invoke-direct {v2, p0}, Lcom/estrongs/a/j;-><init>(Lcom/estrongs/a/e;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
