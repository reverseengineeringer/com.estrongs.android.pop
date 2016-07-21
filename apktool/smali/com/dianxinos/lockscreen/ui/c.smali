.class Lcom/dianxinos/lockscreen/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/c;->a:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/c;->a:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    sget-object v1, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->CLEAN:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;)V

    return-void
.end method
