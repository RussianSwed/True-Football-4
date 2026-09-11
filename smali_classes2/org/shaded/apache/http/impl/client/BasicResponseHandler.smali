.class public Lorg/shaded/apache/http/impl/client/BasicResponseHandler;
.super Ljava/lang/Object;
.source "BasicResponseHandler.java"

# interfaces
.implements Lorg/shaded/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/shaded/apache/http/client/ResponseHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/impl/client/BasicResponseHandler;->handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    .line 71
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p1}, Lorg/shaded/apache/http/util/EntityUtils;->toString(Lorg/shaded/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 67
    :cond_1
    new-instance p1, Lorg/shaded/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v0}, Lorg/shaded/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lorg/shaded/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
