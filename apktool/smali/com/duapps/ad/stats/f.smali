.class Lcom/duapps/ad/stats/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/f;->a:Lcom/duapps/ad/stats/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    const-string v1, "User Canceled Dialog."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/f;->a:Lcom/duapps/ad/stats/c;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/c;->b()V

    return-void
.end method
