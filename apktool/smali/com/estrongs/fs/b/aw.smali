.class Lcom/estrongs/fs/b/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/av;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/av;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/aw;->a:Lcom/estrongs/fs/b/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/aw;->a:Lcom/estrongs/fs/b/av;

    iget-object v0, v0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    invoke-static {v0}, Lcom/estrongs/fs/b/au;->c(Lcom/estrongs/fs/b/au;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a()V

    return-void
.end method
