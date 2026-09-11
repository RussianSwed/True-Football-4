.class Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;
.super Ljava/lang/Object;
.source "InterviewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->showGreeting()V
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

    .line 77
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 80
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->showNextQuestion()V

    .line 82
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Journalist;->improveRelations()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 84
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Journalist;->worsenRelations()V

    .line 85
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->dismiss()V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 87
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->journalist:Lpl/mkrstudio/truefootball3/objects/Journalist;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Journalist;->setRelationsWithUser(I)V

    .line 88
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
