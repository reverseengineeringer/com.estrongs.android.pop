.class Lcom/estrongs/android/pop/app/compress/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/m;->a:Lcom/estrongs/android/pop/app/compress/l;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/m;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/m;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
