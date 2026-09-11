.class public Lorg/shaded/apache/http/conn/params/ConnManagerParamBean;
.super Lorg/shaded/apache/http/params/HttpAbstractParamBean;
.source "ConnManagerParamBean.java"


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/shaded/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setConnectionsPerRoute(Lorg/shaded/apache/http/conn/params/ConnPerRouteBean;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/shaded/apache/http/conn/params/ConnManagerParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    const-string v1, "http.conn-manager.max-per-route"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/shaded/apache/http/params/HttpParams;

    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/shaded/apache/http/conn/params/ConnManagerParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    const-string v1, "http.conn-manager.max-total"

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/shaded/apache/http/params/HttpParams;

    return-void
.end method

.method public setTimeout(J)V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/shaded/apache/http/conn/params/ConnManagerParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    const-string v1, "http.conn-manager.timeout"

    invoke-interface {v0, v1, p1, p2}, Lorg/shaded/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/shaded/apache/http/params/HttpParams;

    return-void
.end method
