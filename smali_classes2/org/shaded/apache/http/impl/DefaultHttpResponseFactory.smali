.class public Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpResponseFactory;


# instance fields
.field protected final reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    sget-object v0, Lorg/shaded/apache/http/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lorg/shaded/apache/http/impl/EnglishReasonPhraseCatalog;

    invoke-direct {p0, v0}, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;-><init>(Lorg/shaded/apache/http/ReasonPhraseCatalog;)V

    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/ReasonPhraseCatalog;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Reason phrase catalog must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected determineLocale(Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/util/Locale;
    .locals 0

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0, p3}, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->determineLocale(Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object p3

    .line 90
    iget-object v0, p0, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    invoke-interface {v0, p2, p3}, Lorg/shaded/apache/http/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Lorg/shaded/apache/http/message/BasicStatusLine;

    invoke-direct {v1, p1, p2, v0}, Lorg/shaded/apache/http/message/BasicStatusLine;-><init>(Lorg/shaded/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 92
    new-instance p1, Lorg/shaded/apache/http/message/BasicHttpResponse;

    iget-object p2, p0, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    invoke-direct {p1, v1, p2, p3}, Lorg/shaded/apache/http/message/BasicHttpResponse;-><init>(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object p1

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP version may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newHttpResponse(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 2

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->determineLocale(Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object p2

    .line 103
    new-instance v0, Lorg/shaded/apache/http/message/BasicHttpResponse;

    iget-object v1, p0, Lorg/shaded/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/shaded/apache/http/ReasonPhraseCatalog;

    invoke-direct {v0, p1, v1, p2}, Lorg/shaded/apache/http/message/BasicHttpResponse;-><init>(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v0

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status line may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
