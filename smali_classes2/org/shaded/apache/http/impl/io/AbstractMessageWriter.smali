.class public abstract Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lorg/shaded/apache/http/io/HttpMessageWriter;


# instance fields
.field protected final lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

.field protected final lineFormatter:Lorg/shaded/apache/http/message/LineFormatter;

.field protected final sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/message/LineFormatter;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 73
    iput-object p1, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    .line 74
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 p3, 0x80

    invoke-direct {p1, p3}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    sget-object p2, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    :goto_0
    iput-object p2, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/shaded/apache/http/message/LineFormatter;

    return-void

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session input buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public write(Lorg/shaded/apache/http/HttpMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->writeHeadLine(Lorg/shaded/apache/http/HttpMessage;)V

    .line 94
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpMessage;->headerIterator()Lorg/shaded/apache/http/HeaderIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/Header;

    .line 96
    iget-object v1, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    iget-object v2, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/shaded/apache/http/message/LineFormatter;

    iget-object v3, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {v2, v3, v0}, Lorg/shaded/apache/http/message/LineFormatter;->formatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/shaded/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/shaded/apache/http/util/CharArrayBuffer;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->clear()V

    .line 100
    iget-object p1, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/shaded/apache/http/io/SessionOutputBuffer;

    iget-object v0, p0, Lorg/shaded/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lorg/shaded/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/shaded/apache/http/util/CharArrayBuffer;)V

    return-void

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP message may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected abstract writeHeadLine(Lorg/shaded/apache/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
