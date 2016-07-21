.class Lcom/estrongs/android/pop/app/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tplink-file-save"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ci;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const v3, 0x7f08026c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const v3, 0x7f0802f4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ci;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const v2, 0x7f080229

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/pop/app/cg;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/cg;-><init>(Lcom/estrongs/android/pop/app/cf;Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const v2, 0x7f080225

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cf;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method
