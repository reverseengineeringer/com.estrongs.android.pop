.class Lcom/estrongs/android/pop/app/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/i;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ar;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ar;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->M(Ljava/lang/String;)V

    return-void
.end method
