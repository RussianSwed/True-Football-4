.class Lcom/facebook/ads/internal/view/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AudienceNetworkActivity;

.field final synthetic b:Lcom/facebook/ads/internal/view/i;

.field private c:J


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$1;->b:Lcom/facebook/ads/internal/view/i;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/i$1;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$1;->b:Lcom/facebook/ads/internal/view/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i;->c(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/p;->b()V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fbad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/internal/view/i$1;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/ads/internal/view/i$1;->c:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$1;->b:Lcom/facebook/ads/internal/view/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    const-string v1, "com.facebook.ads.interstitial.clicked"

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i$1;->b:Lcom/facebook/ads/internal/view/i;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/i;->b(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/adapters/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/o;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/facebook/ads/internal/view/i$1;->b:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/a/a;->a()Lcom/facebook/ads/internal/util/b$a;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/i;Lcom/facebook/ads/internal/util/b$a;)Lcom/facebook/ads/internal/util/b$a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i$1;->b:Lcom/facebook/ads/internal/view/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/i;J)J

    invoke-virtual {p1}, Lcom/facebook/ads/internal/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/facebook/ads/internal/view/i;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Error executing action"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$1;->b:Lcom/facebook/ads/internal/view/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i;->c(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/p;->a()V

    return-void
.end method
