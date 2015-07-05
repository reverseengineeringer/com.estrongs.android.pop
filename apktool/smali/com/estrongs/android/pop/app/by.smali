.class Lcom/estrongs/android/pop/app/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/FileChooserActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/by;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/by;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/by;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/by;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, -0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/by;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->a(Lcom/estrongs/android/pop/app/FileChooserActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->a:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->a:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto :goto_0
.end method
