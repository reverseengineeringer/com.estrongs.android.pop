.class Lcom/estrongs/android/ui/dialog/gf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gg;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/gd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gd;Lcom/estrongs/android/ui/dialog/gg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/gf;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x2

    const v4, 0x7f0803e7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gf;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gg;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gf;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/gg;->c()I

    move-result v1

    if-eq v3, v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gf;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/gg;->c()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gf;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/gg;->c()I

    move-result v1

    if-ne v3, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/gd;->a:Lcom/estrongs/android/ui/dialog/gj;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gf;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/gg;->c()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/gj;->a(ILjava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gf;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/gg;->c()I

    move-result v1

    if-ne v5, v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gf;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/gg;->c()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->J(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smb://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gf;->b:Lcom/estrongs/android/ui/dialog/gd;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_1
.end method
