.class Lpl/mkrstudio/truefootball3/activities/NewGameActivity$15;
.super Ljava/lang/Object;
.source "NewGameActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initTeamSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$15;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 491
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 492
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 493
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
