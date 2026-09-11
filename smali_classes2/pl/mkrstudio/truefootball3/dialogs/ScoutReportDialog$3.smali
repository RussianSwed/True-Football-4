.class Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;
.super Ljava/lang/Object;
.source "ScoutReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;

.field final synthetic val$cost:F

.field final synthetic val$scouts:Ljava/util/List;

.field final synthetic val$time:I

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/UserData;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$scouts",
            "val$time",
            "val$ud",
            "val$cost"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$scouts:Ljava/util/List;

    iput p3, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$time:I

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput p5, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$cost:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 111
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$scouts:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->scoutSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Scout;

    .line 113
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getPotential()I

    move-result v2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getExperience()B

    move-result v3

    invoke-virtual {p1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Scout;->calculateRecommendationLevel(II)B

    move-result v2

    iget v3, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$time:I

    int-to-byte v3, v3

    invoke-direct {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;BB)V

    .line 114
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentReports()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->val$cost:F

    neg-float v2, v2

    float-to-long v2, v2

    const-string v4, "scouting"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 116
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->dismiss()V

    return-void
.end method
