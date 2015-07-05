.class Lcom/estrongs/android/ui/theme/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/ab;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/estrongs/android/ui/theme/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ai;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/aj;->b:Lcom/estrongs/android/ui/theme/ai;

    iput-object p2, p0, Lcom/estrongs/android/ui/theme/aj;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aj;->b:Lcom/estrongs/android/ui/theme/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ai;->a(Lcom/estrongs/android/ui/theme/ai;Z)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aj;->b:Lcom/estrongs/android/ui/theme/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ai;->b(Lcom/estrongs/android/ui/theme/ai;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aj;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/aj;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
