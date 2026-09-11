.class Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;
.super Ljava/lang/Object;
.source "InterviewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->showNextQuestion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

.field final synthetic val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$player"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

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
            "arg0"
        }
    .end annotation

    .line 311
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 312
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    if-ne p1, v0, :cond_1

    .line 314
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 316
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->val$player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    const/4 v1, -0x5

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    .line 318
    :cond_2
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget v1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->currentQuestion:I

    add-int/2addr v1, v0

    iput v1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->currentQuestion:I

    .line 319
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->showNextQuestion()V

    return-void
.end method
