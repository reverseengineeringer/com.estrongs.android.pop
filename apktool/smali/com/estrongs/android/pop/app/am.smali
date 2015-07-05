.class Lcom/estrongs/android/pop/app/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/DocumentExtModifyList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DocumentExtModifyList;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/DocumentExtModifyList;->a(Landroid/content/Context;)V

    return-void
.end method
