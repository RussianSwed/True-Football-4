.class Lpl/mkrstudio/truefootball3/helpers/MessageHelper$1;
.super Ljava/lang/Object;
.source "MessageHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLastTransfersArticle(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1270
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 1271
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 1272
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1274
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
