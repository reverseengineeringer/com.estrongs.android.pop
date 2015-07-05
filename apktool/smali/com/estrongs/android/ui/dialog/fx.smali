.class Lcom/estrongs/android/ui/dialog/fx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fx;->a:Lcom/estrongs/android/ui/dialog/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fx;->a:Lcom/estrongs/android/ui/dialog/fw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fw;->b:Lcom/estrongs/android/ui/dialog/fs;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fs;->f(Lcom/estrongs/android/ui/dialog/fs;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fx;->a:Lcom/estrongs/android/ui/dialog/fw;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/fw;->b:Lcom/estrongs/android/ui/dialog/fs;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fs;->f(Lcom/estrongs/android/ui/dialog/fs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
