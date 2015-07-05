.class Lcom/estrongs/android/pop/utils/bz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/estrongs/android/util/x",
        "<",
        "Lcom/estrongs/android/view/aw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/by;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/by;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bz;->a:Lcom/estrongs/android/pop/utils/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/aw;)Z
    .locals 1

    instance-of v0, p1, Lcom/estrongs/android/ui/b/u;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/estrongs/android/view/aw;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/utils/bz;->a(Lcom/estrongs/android/view/aw;)Z

    move-result v0

    return v0
.end method
