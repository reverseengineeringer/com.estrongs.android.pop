.class Lcom/estrongs/fs/b/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/fs/b/bo;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/bo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/br;->b:Lcom/estrongs/fs/b/bo;

    iput-object p2, p0, Lcom/estrongs/fs/b/br;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/b/br;->b:Lcom/estrongs/fs/b/bo;

    iget-object v0, v0, Lcom/estrongs/fs/b/bo;->a:Lcom/estrongs/fs/b/bm;

    iget-object v0, v0, Lcom/estrongs/fs/b/bm;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/fs/b/br;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
