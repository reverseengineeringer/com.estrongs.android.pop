.class Lcom/estrongs/android/ui/dialog/ht;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ht;->a:[Ljava/lang/String;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ht;->a:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->h(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->b:I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->d(Lcom/estrongs/android/ui/dialog/hn;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/local/q;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hn;->ar()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01b6

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hn;->d(Lcom/estrongs/android/ui/dialog/hn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/q;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v1, Lcom/estrongs/fs/impl/local/q;->c:I

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v1, Lcom/estrongs/fs/impl/local/q;->b:I

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/android/ui/dialog/hn;Lcom/estrongs/fs/impl/local/q;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/hn;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->e(Lcom/estrongs/android/ui/dialog/hn;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->g:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ht;->b:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->g:Ljava/lang/String;

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
