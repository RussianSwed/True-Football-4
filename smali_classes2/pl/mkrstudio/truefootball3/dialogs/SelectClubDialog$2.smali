.class Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$2;
.super Ljava/lang/Object;
.source "SelectClubDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;)V
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

    .line 106
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentView",
            "selectedItemView",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 108
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->initLeagueSpinner()V

    .line 109
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->initTeamSpinner()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
