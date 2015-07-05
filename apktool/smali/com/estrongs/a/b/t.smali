.class Lcom/estrongs/a/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/b/s;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;[J)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/a/b/t;->a(Ljava/lang/String;[J)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[J)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
