.class Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;
.super Ljava/lang/Object;
.source "SelectCompetitionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->initCompetitionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

.field final synthetic val$competitionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$competitionCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;->val$competitionCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;->val$competitionCode:Ljava/lang/String;

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->selectedCompetitionCode:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->listener:Lpl/mkrstudio/truefootball3/listeners/ISelectCompetitionDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->selectedCompetitionCode:Ljava/lang/String;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    invoke-interface {p1, v0, v1}, Lpl/mkrstudio/truefootball3/listeners/ISelectCompetitionDialog;->onCompetitionSelected(Ljava/lang/String;Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;)V

    return-void
.end method
