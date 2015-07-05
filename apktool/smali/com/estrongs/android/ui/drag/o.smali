.class Lcom/estrongs/android/ui/drag/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/estrongs/android/ui/drag/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/drag/m;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/o;->b:Lcom/estrongs/android/ui/drag/m;

    iput-object p2, p0, Lcom/estrongs/android/ui/drag/o;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/o;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
