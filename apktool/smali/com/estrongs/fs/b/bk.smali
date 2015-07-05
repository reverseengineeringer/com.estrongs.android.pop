.class Lcom/estrongs/fs/b/bk;
.super Lcom/estrongs/android/ui/dialog/ix;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ba;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/b/ba;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/bk;->a:Lcom/estrongs/fs/b/ba;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ix;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/estrongs/fs/b/bk;->a:Lcom/estrongs/fs/b/ba;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/fs/b/ba;->a(Lcom/estrongs/fs/b/ba;Z)Z

    return-void
.end method
