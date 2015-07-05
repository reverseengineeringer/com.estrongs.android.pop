.class public Lcom/estrongs/a/q;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/a/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/a/q;->c:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/a/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/a/q;->b:Ljava/lang/Object;

    return-void
.end method
