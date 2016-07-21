.class Lcom/estrongs/android/pop/app/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, -0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cm;->c:Lcom/estrongs/android/pop/app/cl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cl;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cm;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/FileContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cm;->c:Lcom/estrongs/android/pop/app/cl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cl;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cm;->c:Lcom/estrongs/android/pop/app/cl;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cl;->c:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cm;->c:Lcom/estrongs/android/pop/app/cl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cl;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cm;->c:Lcom/estrongs/android/pop/app/cl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cl;->c:Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/cm;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cm;->c:Lcom/estrongs/android/pop/app/cl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cl;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cm;->c:Lcom/estrongs/android/pop/app/cl;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cl;->c:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/pop/app/cm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cm;->c:Lcom/estrongs/android/pop/app/cl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cl;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto :goto_0
.end method
