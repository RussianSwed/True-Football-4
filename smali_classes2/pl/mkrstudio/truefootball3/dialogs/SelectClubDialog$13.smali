.class Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$13;
.super Ljava/lang/Object;
.source "SelectClubDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->initTeamSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$13;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

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

    .line 301
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 302
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 303
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
