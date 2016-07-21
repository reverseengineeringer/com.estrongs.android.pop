.class final Lcom/estrongs/android/pop/utils/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/q;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/u;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/u;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bl;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bl;->b:Lcom/estrongs/android/ui/pcs/u;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bl;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bl;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bl;->b:Lcom/estrongs/android/ui/pcs/u;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bl;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/u;Ljava/util/List;)V

    :cond_0
    return-void
.end method
