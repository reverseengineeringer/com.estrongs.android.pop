.class public Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x61e0ccd27570127cL


# instance fields
.field public attribute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private atts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bffVersion:Ljava/lang/String;

.field public deleteAble:Z

.field public host:Ljava/lang/String;

.field public needAuth:Z

.field public path:Ljava/lang/String;

.field public port:I

.field public schema:Ljava/lang/String;

.field public shortcutName:Ljava/lang/String;

.field public targetLocation:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->deleteAble:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->attribute:Ljava/util/Map;

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->bffVersion:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->atts:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->atts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFormatVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->bffVersion:Ljava/lang/String;

    return-object v0
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->atts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
