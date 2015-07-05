.class public interface abstract Loauth/signpost/OAuthConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getConsumerKey()Ljava/lang/String;
.end method

.method public abstract getConsumerSecret()Ljava/lang/String;
.end method

.method public abstract getRequestParameters()Loauth/signpost/http/HttpParameters;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTokenSecret()Ljava/lang/String;
.end method

.method public abstract setAdditionalParameters(Loauth/signpost/http/HttpParameters;)V
.end method

.method public abstract setMessageSigner(Loauth/signpost/signature/OAuthMessageSigner;)V
.end method

.method public abstract setSendEmptyTokens(Z)V
.end method

.method public abstract setSigningStrategy(Loauth/signpost/signature/SigningStrategy;)V
.end method

.method public abstract setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
.end method

.method public abstract sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;
.end method
