.class Lcom/baidu/mobstat/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Lcom/baidu/mobstat/bh;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bh;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bi;->f:Lcom/baidu/mobstat/bh;

    iput-object p2, p0, Lcom/baidu/mobstat/bi;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/bi;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/bi;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobstat/bi;->d:I

    iput-wide p6, p0, Lcom/baidu/mobstat/bi;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "onEvent before"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/bp;->a()Lcom/baidu/mobstat/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bp;->c()V

    iget-object v1, p0, Lcom/baidu/mobstat/bi;->f:Lcom/baidu/mobstat/bh;

    iget-object v2, p0, Lcom/baidu/mobstat/bi;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/bi;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/bi;->c:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/mobstat/bi;->d:I

    iget-wide v6, p0, Lcom/baidu/mobstat/bi;->e:J

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/mobstat/bh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method
