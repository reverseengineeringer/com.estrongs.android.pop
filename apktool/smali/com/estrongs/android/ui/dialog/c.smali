.class Lcom/estrongs/android/ui/dialog/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/c;->a:Lcom/estrongs/android/ui/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/c;->a:Lcom/estrongs/android/ui/dialog/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/c;->a:Lcom/estrongs/android/ui/dialog/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/a;->a(Lcom/estrongs/android/ui/dialog/a;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/c;->a:Lcom/estrongs/android/ui/dialog/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/adb/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pname"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/c;->a:Lcom/estrongs/android/ui/dialog/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/a;->a(Lcom/estrongs/android/ui/dialog/a;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01b6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
