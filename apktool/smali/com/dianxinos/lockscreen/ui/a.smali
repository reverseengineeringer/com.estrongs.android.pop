.class Lcom/dianxinos/lockscreen/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/BatteryCardView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/a;->a:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/a;->a:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->a(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/a;->a:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/a;->a:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
