.class Lcom/estrongs/android/ui/a/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/preference/q;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/estrongs/android/ui/a/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/aa;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ao;->b:Lcom/estrongs/android/ui/a/aa;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/ao;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ao;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ao;->b:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/aa;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
