.class Lcom/estrongs/android/ui/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/b/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/l;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/p;->b:Lcom/estrongs/android/ui/b/l;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/p;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/p;->b:Lcom/estrongs/android/ui/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/l;->b(Lcom/estrongs/android/ui/b/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/p;->b:Lcom/estrongs/android/ui/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/l;->b(Lcom/estrongs/android/ui/b/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/p;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/p;->a:Landroid/app/Activity;

    const v2, 0x7f080414

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/p;->b:Lcom/estrongs/android/ui/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/l;->a(Lcom/estrongs/android/ui/b/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/p;->b:Lcom/estrongs/android/ui/b/l;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/b/l;->a(Lcom/estrongs/android/ui/b/l;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/p;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/b/p;->b:Lcom/estrongs/android/ui/b/l;

    invoke-static {v3}, Lcom/estrongs/android/ui/b/l;->b(Lcom/estrongs/android/ui/b/l;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;

    goto :goto_0
.end method
