.class public Lcom/estrongs/fs/util/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field final synthetic e:Lcom/estrongs/fs/util/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/util/b;-><init>(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/util/b;->e:Lcom/estrongs/fs/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/fs/util/b;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/fs/util/b;->b:Z

    iput-object p4, p0, Lcom/estrongs/fs/util/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/fs/util/b;->d:Ljava/lang/String;

    return-void
.end method
