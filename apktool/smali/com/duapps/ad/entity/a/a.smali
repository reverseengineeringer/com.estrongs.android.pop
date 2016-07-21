.class public abstract Lcom/duapps/ad/entity/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile b:Z

.field public volatile c:Z

.field public d:J

.field public volatile e:Z

.field protected f:Landroid/content/Context;

.field protected g:I

.field protected h:Lcom/duapps/ad/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/duapps/ad/entity/a/a;->d:J

    iput-object p1, p0, Lcom/duapps/ad/entity/a/a;->f:Landroid/content/Context;

    iput p2, p0, Lcom/duapps/ad/entity/a/a;->g:I

    invoke-static {p2}, Lcom/duapps/ad/base/ap;->a(I)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public a(Lcom/duapps/ad/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/entity/a/a;->h:Lcom/duapps/ad/d;

    return-void
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
