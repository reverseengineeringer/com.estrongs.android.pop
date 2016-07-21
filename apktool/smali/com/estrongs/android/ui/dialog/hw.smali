.class Lcom/estrongs/android/ui/dialog/hw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hw;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/fs/impl/local/r;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/m;->h(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/local/r;->b:I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->g(Lcom/estrongs/android/ui/dialog/hq;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/local/r;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08049d

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hq;->g(Lcom/estrongs/android/ui/dialog/hq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/m;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/r;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->c:I

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->b:I

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/fs/impl/local/r;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->h(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->b:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
