.class public Lorg/shaded/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965CommentUrlAttributeHandler.java"

# interfaces
.implements Lorg/shaded/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/shaded/apache/http/cookie/Cookie;Lorg/shaded/apache/http/cookie/CookieOrigin;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public parse(Lorg/shaded/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 53
    instance-of v0, p1, Lorg/shaded/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lorg/shaded/apache/http/cookie/SetCookie2;

    .line 55
    invoke-interface {p1, p2}, Lorg/shaded/apache/http/cookie/SetCookie2;->setCommentURL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public validate(Lorg/shaded/apache/http/cookie/Cookie;Lorg/shaded/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    return-void
.end method
