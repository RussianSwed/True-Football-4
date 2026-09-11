.class Lcom/facebook/ads/internal/util/ak$1;
.super Lcom/facebook/ads/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/util/ak;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/util/ak$a;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/g/f;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/facebook/ads/internal/util/ak;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/ak;DDDZLcom/facebook/ads/internal/g/f;Ljava/lang/String;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lcom/facebook/ads/internal/util/ak$1;->g:Lcom/facebook/ads/internal/util/ak;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/facebook/ads/internal/util/ak$1;->a:Lcom/facebook/ads/internal/g/f;

    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/facebook/ads/internal/util/ak$1;->f:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/b/b;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method protected a(ZZLcom/facebook/ads/internal/b/c;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/util/ak$1;->a:Lcom/facebook/ads/internal/g/f;

    iget-object p2, p0, Lcom/facebook/ads/internal/util/ak$1;->f:Ljava/lang/String;

    iget-object p3, p0, Lcom/facebook/ads/internal/util/ak$1;->g:Lcom/facebook/ads/internal/util/ak;

    sget-object v0, Lcom/facebook/ads/internal/util/ak$b;->d:Lcom/facebook/ads/internal/util/ak$b;

    invoke-static {p3, v0}, Lcom/facebook/ads/internal/util/ak;->a(Lcom/facebook/ads/internal/util/ak;Lcom/facebook/ads/internal/util/ak$b;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/ads/internal/g/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
