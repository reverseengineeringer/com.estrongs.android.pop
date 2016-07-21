.class Lcom/estrongs/fs/b/bm;
.super Lcom/estrongs/android/ui/dialog/jh;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/bc;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/b/bc;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/bm;->a:Lcom/estrongs/fs/b/bc;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/jh;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/estrongs/fs/b/bm;->a:Lcom/estrongs/fs/b/bc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/fs/b/bc;->a(Lcom/estrongs/fs/b/bc;Z)Z

    return-void
.end method
