.class Lcom/estrongs/android/pop/app/compress/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/be;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/be;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bb;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
