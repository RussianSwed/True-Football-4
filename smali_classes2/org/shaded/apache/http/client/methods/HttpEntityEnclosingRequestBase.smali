.class public abstract Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.super Lorg/shaded/apache/http/client/methods/HttpRequestBase;
.source "HttpEntityEnclosingRequestBase.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lorg/shaded/apache/http/HttpEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/shaded/apache/http/client/methods/HttpRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 69
    invoke-super {p0}, Lorg/shaded/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 71
    iget-object v1, p0, Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/shaded/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    .line 72
    invoke-static {v1}, Lorg/shaded/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/shaded/apache/http/HttpEntity;

    iput-object v1, v0, Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/shaded/apache/http/HttpEntity;

    :cond_0
    return-object v0
.end method

.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    .line 63
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getFirstHeader(Ljava/lang/String;)Lorg/shaded/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-Continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntity()Lorg/shaded/apache/http/HttpEntity;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/shaded/apache/http/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lorg/shaded/apache/http/HttpEntity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/shaded/apache/http/HttpEntity;

    return-void
.end method
