.class Lcom/estrongs/android/ui/e/kn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/preference/q;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/km;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/km;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/kn;->a:Lcom/estrongs/android/ui/e/km;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "toolbar_setting_show_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kn;->a:Lcom/estrongs/android/ui/e/km;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/km;->i()V

    :cond_0
    return-void
.end method
