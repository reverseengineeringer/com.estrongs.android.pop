.class Lcom/estrongs/android/pop/utils/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/estrongs/android/util/z",
        "<",
        "Lcom/estrongs/android/view/cr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/ch;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ci;->a:Lcom/estrongs/android/pop/utils/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/cr;)Z
    .locals 1

    instance-of v0, p1, Lcom/estrongs/android/ui/b/u;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/estrongs/android/view/cr;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/utils/ci;->a(Lcom/estrongs/android/view/cr;)Z

    move-result v0

    return v0
.end method
