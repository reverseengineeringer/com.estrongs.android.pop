.class Lcom/dianxinos/lockscreen/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/BatteryCardView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/b;->a:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/b;->a:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->c(Lcom/dianxinos/lockscreen/ui/BatteryCardView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lstck"

    const-string v2, "bcc"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method
