.class Lcom/baidu/mobstat/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bu;->a:Lcom/baidu/mobstat/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/bu;->a:Lcom/baidu/mobstat/bt;

    iget-object v0, v0, Lcom/baidu/mobstat/bt;->b:Lcom/baidu/mobstat/bs;

    iget-object v1, p0, Lcom/baidu/mobstat/bu;->a:Lcom/baidu/mobstat/bt;

    iget-object v1, v1, Lcom/baidu/mobstat/bt;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bs;->a(Lcom/baidu/mobstat/bs;Landroid/content/Context;)V

    return-void
.end method
