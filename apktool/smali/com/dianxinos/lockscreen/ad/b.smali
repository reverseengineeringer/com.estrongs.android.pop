.class Lcom/dianxinos/lockscreen/ad/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ad/b;->a:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/b;->a:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;)V

    return-void
.end method
