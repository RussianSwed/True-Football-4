.class Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;
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


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

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

    .line 254
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 255
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->changeConfidence(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 259
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object p1

    const/4 v1, -0x5

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->changeConfidence(I)V

    .line 261
    :cond_2
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget v1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->currentQuestion:I

    add-int/2addr v1, v0

    iput v1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->currentQuestion:I

    .line 262
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->showNextQuestion()V

    return-void
.end method
