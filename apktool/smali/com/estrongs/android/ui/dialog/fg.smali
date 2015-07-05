.class Lcom/estrongs/android/ui/dialog/fg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/guesture/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ff;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ff;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fg;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/gesture/Gesture;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/ui/guesture/b;->a(Landroid/gesture/Gesture;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fg;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->a(Lcom/estrongs/android/ui/dialog/ff;)Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fg;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b03fb

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fg;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->c(Lcom/estrongs/android/ui/dialog/ff;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/guesture/b;->a(Ljava/lang/String;Landroid/gesture/Gesture;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fg;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fg;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0422

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fg;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ff;->b()V

    goto :goto_0
.end method
