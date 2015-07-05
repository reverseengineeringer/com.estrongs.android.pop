.class Lcom/estrongs/android/ui/dialog/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/r;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/r;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/r;->a:Lcom/estrongs/android/ui/dialog/o;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/c;->c()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "pname"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
