.class public Lorg/shaded/apache/http/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lorg/shaded/apache/http/message/LineFormatter;


# static fields
.field public static final DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lorg/shaded/apache/http/message/BasicLineFormatter;

    invoke-direct {v0}, Lorg/shaded/apache/http/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatHeader(Lorg/shaded/apache/http/Header;Lorg/shaded/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 286
    sget-object p1, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    :cond_0
    const/4 v0, 0x0

    .line 287
    invoke-interface {p1, v0, p0}, Lorg/shaded/apache/http/message/LineFormatter;->formatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatProtocolVersion(Lorg/shaded/apache/http/ProtocolVersion;Lorg/shaded/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 105
    sget-object p1, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0, p0}, Lorg/shaded/apache/http/message/LineFormatter;->appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatRequestLine(Lorg/shaded/apache/http/RequestLine;Lorg/shaded/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 164
    sget-object p1, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    :cond_0
    const/4 v0, 0x0

    .line 165
    invoke-interface {p1, v0, p0}, Lorg/shaded/apache/http/message/LineFormatter;->formatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatStatusLine(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 224
    sget-object p1, Lorg/shaded/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/shaded/apache/http/message/BasicLineFormatter;

    :cond_0
    const/4 v0, 0x0

    .line 225
    invoke-interface {p1, v0, p0}, Lorg/shaded/apache/http/message/LineFormatter;->formatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 1

    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/shaded/apache/http/ProtocolVersion;)I

    move-result v0

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 127
    :goto_0
    invoke-virtual {p2}, Lorg/shaded/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2f

    .line 128
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 129
    invoke-virtual {p2}, Lorg/shaded/apache/http/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 130
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 131
    invoke-virtual {p2}, Lorg/shaded/apache/http/ProtocolVersion;->getMinor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-object p1

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Protocol version may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected doFormatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)V
    .locals 3

    .line 322
    invoke-interface {p2}, Lorg/shaded/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-interface {p2}, Lorg/shaded/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 325
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_0

    .line 327
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 329
    :cond_0
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 331
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, ": "

    .line 332
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 334
    invoke-virtual {p1, p2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected doFormatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)V
    .locals 4

    .line 194
    invoke-interface {p2}, Lorg/shaded/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-interface {p2}, Lorg/shaded/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/shaded/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/shaded/apache/http/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 200
    invoke-virtual {p1, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 202
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 203
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 204
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 206
    invoke-interface {p2}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    return-void
.end method

.method protected doFormatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)V
    .locals 3

    .line 255
    invoke-interface {p2}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/shaded/apache/http/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 257
    invoke-interface {p2}, Lorg/shaded/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 261
    :cond_0
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 263
    invoke-interface {p2}, Lorg/shaded/apache/http/StatusLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/shaded/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/ProtocolVersion;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x20

    .line 264
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    .line 265
    invoke-interface {p2}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(C)V

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p1, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected estimateProtocolVersionLen(Lorg/shaded/apache/http/ProtocolVersion;)I
    .locals 0

    .line 147
    invoke-virtual {p1}, Lorg/shaded/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public formatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 1

    if-eqz p2, :cond_1

    .line 300
    instance-of v0, p2, Lorg/shaded/apache/http/FormattedHeader;

    if-eqz v0, :cond_0

    .line 302
    check-cast p2, Lorg/shaded/apache/http/FormattedHeader;

    invoke-interface {p2}, Lorg/shaded/apache/http/FormattedHeader;->getBuffer()Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object p1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 305
    invoke-virtual {p0, p1, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->doFormatHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/Header;)V

    :goto_0
    return-object p1

    .line 295
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Header may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public formatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 0

    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->doFormatRequestLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/RequestLine;)V

    return-object p1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request line may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public formatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 0

    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 238
    invoke-virtual {p0, p1, p2}, Lorg/shaded/apache/http/message/BasicLineFormatter;->doFormatStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/StatusLine;)V

    return-object p1

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status line may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initBuffer(Lorg/shaded/apache/http/util/CharArrayBuffer;)Lorg/shaded/apache/http/util/CharArrayBuffer;
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    :goto_0
    return-object p1
.end method
