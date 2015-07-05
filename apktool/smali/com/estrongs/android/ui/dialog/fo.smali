.class Lcom/estrongs/android/ui/dialog/fo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fo;->a:Lcom/estrongs/android/ui/dialog/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fo;->a:Lcom/estrongs/android/ui/dialog/fn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fh;->d(Lcom/estrongs/android/ui/dialog/fh;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fo;->a:Lcom/estrongs/android/ui/dialog/fn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fh;->d(Lcom/estrongs/android/ui/dialog/fh;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lcom/estrongs/android/a/u;->a()V

    return-void
.end method
