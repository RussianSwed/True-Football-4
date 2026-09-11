.class public Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;
.super Ljava/lang/Object;
.source "NetscapeDraftHeaderParser.java"


# static fields
.field public static final DEFAULT:Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;

.field private static final DELIMITERS:[C


# instance fields
.field private final nvpParser:Lorg/shaded/apache/http/message/BasicHeaderValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    invoke-direct {v0}, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;-><init>()V

    sput-object v0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    .line 52
    sput-object v0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lorg/shaded/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    iput-object v0, p0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    return-void
.end method


# virtual methods
.method public parseHeader(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/HeaderElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 70
    iget-object v0, p0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    sget-object v1, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    invoke-virtual {v0, p1, p2, v1}, Lorg/shaded/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;[C)Lorg/shaded/apache/http/NameValuePair;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :goto_0
    invoke-virtual {p2}, Lorg/shaded/apache/http/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/shaded/apache/http/message/BasicHeaderValueParser;

    sget-object v3, Lorg/shaded/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    invoke-virtual {v2, p1, p2, v3}, Lorg/shaded/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;[C)Lorg/shaded/apache/http/NameValuePair;

    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Lorg/shaded/apache/http/message/BasicHeaderElement;

    invoke-interface {v0}, Lorg/shaded/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lorg/shaded/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/shaded/apache/http/NameValuePair;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/shaded/apache/http/NameValuePair;

    invoke-direct {p1, p2, v0, v1}, Lorg/shaded/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/shaded/apache/http/NameValuePair;)V

    return-object p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parser cursor may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Char array buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
