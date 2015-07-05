.class Lcom/estrongs/android/ui/dialog/ew;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ev;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ew;->a:Lcom/estrongs/android/ui/dialog/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ew;->a:Lcom/estrongs/android/ui/dialog/ev;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ev;->b:Lcom/estrongs/android/ui/dialog/es;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/es;->b(Lcom/estrongs/android/ui/dialog/es;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ew;->a:Lcom/estrongs/android/ui/dialog/ev;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ev;->b:Lcom/estrongs/android/ui/dialog/es;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/es;->b(Lcom/estrongs/android/ui/dialog/es;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0574

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/ew;->a:Lcom/estrongs/android/ui/dialog/ev;

    iget-object v5, v5, Lcom/estrongs/android/ui/dialog/ev;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
