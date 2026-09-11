.class Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$9;
.super Ljava/lang/Object;
.source "SwapWithOtherTeamDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->initTeamSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

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

    .line 220
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 221
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 222
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
