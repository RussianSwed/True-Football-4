.class Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$13;
.super Ljava/lang/Object;
.source "EditPlayersActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->initCustomPlayersList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lpl/mkrstudio/truefootball3/objects/PlayerStub;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$13;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 352
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    invoke-virtual {p0, p1, p2}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$13;->compare(Lpl/mkrstudio/truefootball3/objects/PlayerStub;Lpl/mkrstudio/truefootball3/objects/PlayerStub;)I

    move-result p1

    return p1
.end method

.method public compare(Lpl/mkrstudio/truefootball3/objects/PlayerStub;Lpl/mkrstudio/truefootball3/objects/PlayerStub;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/enums/Position;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method
