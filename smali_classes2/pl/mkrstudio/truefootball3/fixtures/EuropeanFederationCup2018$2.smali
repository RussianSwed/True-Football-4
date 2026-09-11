.class Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2018$2;
.super Ljava/lang/Object;
.source "EuropeanFederationCup2018.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2018;->update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Finances;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2018;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2018;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2018$2;->this$0:Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2018;

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

    .line 105
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 106
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 107
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 109
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
