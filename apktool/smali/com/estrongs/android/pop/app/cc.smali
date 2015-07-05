.class Lcom/estrongs/android/pop/app/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/cg;

.field final synthetic b:Lcom/estrongs/android/pop/app/cb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cb;Lcom/estrongs/android/ui/dialog/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cc;->b:Lcom/estrongs/android/pop/app/cb;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cc;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cc;->b:Lcom/estrongs/android/pop/app/cb;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cc;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cc;->b:Lcom/estrongs/android/pop/app/cb;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cc;->b:Lcom/estrongs/android/pop/app/cb;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
