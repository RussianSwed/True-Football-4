.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$11;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penalties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 941
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
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

    .line 943
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 944
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 945
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v2

    mul-int v1, v1, v2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 947
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result p1

    mul-int v0, v0, p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result p2

    mul-int p1, p1, p2

    if-le v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
