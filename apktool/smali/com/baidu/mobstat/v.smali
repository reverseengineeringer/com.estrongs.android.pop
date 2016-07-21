.class public Lcom/baidu/mobstat/v;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/mobstat/v;->a:J

    iput-wide p1, p0, Lcom/baidu/mobstat/v;->a:J

    iput-object p3, p0, Lcom/baidu/mobstat/v;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/v;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mobstat/v;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/v;->c:Ljava/lang/String;

    return-object v0
.end method
