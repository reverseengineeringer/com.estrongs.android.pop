.class Lcom/estrongs/android/pop/app/jb;
.super Lcom/estrongs/android/ui/e/iw;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/jb;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/e/iw;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/e/iw;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jb;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method
