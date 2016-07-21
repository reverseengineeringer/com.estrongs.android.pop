.class Lcom/estrongs/android/ui/e/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bt;->a:Lcom/estrongs/android/ui/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/f/a;->a()Lcom/estrongs/android/pop/app/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/f/a;->f()Z

    const/4 v0, 0x1

    return v0
.end method
