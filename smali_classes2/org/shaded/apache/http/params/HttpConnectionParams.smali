.class public final Lorg/shaded/apache/http/params/HttpConnectionParams;
.super Ljava/lang/Object;
.source "HttpConnectionParams.java"

# interfaces
.implements Lorg/shaded/apache/http/params/CoreConnectionPNames;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionTimeout(Lorg/shaded/apache/http/params/HttpParams;)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "http.connection.timeout"

    .line 171
    invoke-interface {p0, v1, v0}, Lorg/shaded/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLinger(Lorg/shaded/apache/http/params/HttpParams;)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    const-string v1, "http.socket.linger"

    .line 144
    invoke-interface {p0, v1, v0}, Lorg/shaded/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSoTimeout(Lorg/shaded/apache/http/params/HttpParams;)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "http.socket.timeout"

    .line 59
    invoke-interface {p0, v1, v0}, Lorg/shaded/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSocketBufferSize(Lorg/shaded/apache/http/params/HttpParams;)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    const-string v1, "http.socket.buffer-size"

    .line 115
    invoke-interface {p0, v1, v0}, Lorg/shaded/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTcpNoDelay(Lorg/shaded/apache/http/params/HttpParams;)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const-string v1, "http.tcp.nodelay"

    .line 87
    invoke-interface {p0, v1, v0}, Lorg/shaded/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isStaleCheckingEnabled(Lorg/shaded/apache/http/params/HttpParams;)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const-string v1, "http.connection.stalecheck"

    .line 201
    invoke-interface {p0, v1, v0}, Lorg/shaded/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 199
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setConnectionTimeout(Lorg/shaded/apache/http/params/HttpParams;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.connection.timeout"

    .line 186
    invoke-interface {p0, v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/shaded/apache/http/params/HttpParams;

    return-void

    .line 184
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setLinger(Lorg/shaded/apache/http/params/HttpParams;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.socket.linger"

    .line 157
    invoke-interface {p0, v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/shaded/apache/http/params/HttpParams;

    return-void

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setSoTimeout(Lorg/shaded/apache/http/params/HttpParams;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.socket.timeout"

    .line 72
    invoke-interface {p0, v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/shaded/apache/http/params/HttpParams;

    return-void

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setSocketBufferSize(Lorg/shaded/apache/http/params/HttpParams;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.socket.buffer-size"

    .line 130
    invoke-interface {p0, v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/shaded/apache/http/params/HttpParams;

    return-void

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setStaleCheckingEnabled(Lorg/shaded/apache/http/params/HttpParams;Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.connection.stalecheck"

    .line 216
    invoke-interface {p0, v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/shaded/apache/http/params/HttpParams;

    return-void

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setTcpNoDelay(Lorg/shaded/apache/http/params/HttpParams;Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.tcp.nodelay"

    .line 101
    invoke-interface {p0, v0, p1}, Lorg/shaded/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/shaded/apache/http/params/HttpParams;

    return-void

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
