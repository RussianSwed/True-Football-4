.class public Lorg/shaded/apache/http/impl/auth/DigestSchemeFactory;
.super Ljava/lang/Object;
.source "DigestSchemeFactory.java"

# interfaces
.implements Lorg/shaded/apache/http/auth/AuthSchemeFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/auth/AuthScheme;
    .locals 0

    .line 46
    new-instance p1, Lorg/shaded/apache/http/impl/auth/DigestScheme;

    invoke-direct {p1}, Lorg/shaded/apache/http/impl/auth/DigestScheme;-><init>()V

    return-object p1
.end method
