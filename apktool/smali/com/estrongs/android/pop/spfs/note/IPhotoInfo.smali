.class public interface abstract Lcom/estrongs/android/pop/spfs/note/IPhotoInfo;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract addNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)Lcom/gmail/yuyang226/flickr/a/a;
.end method

.method public abstract addPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;
.end method

.method public abstract deleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract editComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract editNote(Ljava/lang/String;Ljava/lang/String;Lcom/gmail/yuyang226/flickr/a/a;)V
.end method

.method public abstract getAlbums(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllAlbums(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBuddyIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a/a/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhotoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
.end method

.method public abstract removePhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
.end method

.method public abstract setTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
