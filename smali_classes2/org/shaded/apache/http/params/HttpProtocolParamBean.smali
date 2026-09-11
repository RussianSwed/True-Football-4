.class public Lorg/shaded/apache/http/params/HttpProtocolParamBean;
.super Lorg/shaded/apache/http/params/HttpAbstractParamBean;
.source "HttpProtocolParamBean.java"


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/shaded/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setContentCharset(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/shaded/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpElementCharset(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/shaded/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method

.method public setUseExpectContinue(Z)V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/shaded/apache/http/params/HttpParams;Z)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/shaded/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Lorg/shaded/apache/http/HttpVersion;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/shaded/apache/http/params/HttpProtocolParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/params/HttpProtocolParams;->setVersion(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/ProtocolVersion;)V

    return-void
.end method
