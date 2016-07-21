.class public Lcom/estrongs/android/pop/esclasses/k;
.super Landroid/view/LayoutInflater;


# instance fields
.field private a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/k;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/android/pop/esclasses/k;

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/pop/esclasses/k;

    invoke-direct {v1, v0, p0}, Lcom/estrongs/android/pop/esclasses/k;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/esclasses/k;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/esclasses/k;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/k;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/k;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/d/b;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/estrongs/android/pop/esclasses/l;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/k;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/d/b;

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/esclasses/l;-><init>(Lcom/estrongs/android/pop/app/d/b;)V

    invoke-virtual {v2, p1, v1}, Lcom/estrongs/android/pop/esclasses/l;->a(ILandroid/view/View;)V

    :cond_0
    return-object v1
.end method
