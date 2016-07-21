.class Lcom/dianxinos/lockscreen/ui/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/RealTimeView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/RealTimeView;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/p;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/p;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->k(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/dianxinos/lockscreen/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/p;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->k(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/dianxinos/lockscreen/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/a/c;->a()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/p;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "lstck"

    const-string v2, "rtc"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-void
.end method
