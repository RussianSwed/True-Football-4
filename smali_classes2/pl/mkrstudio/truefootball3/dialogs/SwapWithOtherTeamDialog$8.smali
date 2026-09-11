.class Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$8;
.super Ljava/lang/Object;
.source "SwapWithOtherTeamDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->initLeagueSpinner()V
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

    .line 176
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$8;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
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

    .line 178
    check-cast p1, Ljava/lang/String;

    .line 179
    check-cast p2, Ljava/lang/String;

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 182
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
