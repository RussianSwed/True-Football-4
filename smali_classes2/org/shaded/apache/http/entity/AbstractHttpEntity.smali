.class public abstract Lorg/shaded/apache/http/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpEntity;


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lorg/shaded/apache/http/Header;

.field protected contentType:Lorg/shaded/apache/http/Header;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "streaming entity does not implement consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/shaded/apache/http/Header;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/shaded/apache/http/Header;

    return-object v0
.end method

.method public getContentType()Lorg/shaded/apache/http/Header;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/shaded/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->chunked:Z

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 154
    new-instance v0, Lorg/shaded/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lorg/shaded/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Lorg/shaded/apache/http/Header;)V

    return-void
.end method

.method public setContentEncoding(Lorg/shaded/apache/http/Header;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/shaded/apache/http/Header;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 125
    new-instance v0, Lorg/shaded/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lorg/shaded/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->setContentType(Lorg/shaded/apache/http/Header;)V

    return-void
.end method

.method public setContentType(Lorg/shaded/apache/http/Header;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/shaded/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/shaded/apache/http/Header;

    return-void
.end method
