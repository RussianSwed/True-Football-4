.class public Lorg/shaded/apache/http/auth/params/AuthParamBean;
.super Lorg/shaded/apache/http/params/HttpAbstractParamBean;
.source "AuthParamBean.java"


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/shaded/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setCredentialCharset(Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/shaded/apache/http/auth/params/AuthParamBean;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/shaded/apache/http/auth/params/AuthParams;->setCredentialCharset(Lorg/shaded/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method
