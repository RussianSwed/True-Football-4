.class Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$3;
.super Ljava/lang/Object;
.source "FriendliesFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initFriendlyOffers(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

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

    .line 117
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 118
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 119
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    :goto_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    if-ne p2, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    return v1
.end method
