.class public Lcom/duapps/ad/base/c;
.super Ljava/lang/Object;


# instance fields
.field a:[Ljava/lang/String;

.field b:J


# direct methods
.method public constructor <init>([Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duapps/ad/base/c;->a:[Ljava/lang/String;

    iput-wide p2, p0, Lcom/duapps/ad/base/c;->b:J

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/duapps/ad/base/c;->b:J

    return-wide v0
.end method
