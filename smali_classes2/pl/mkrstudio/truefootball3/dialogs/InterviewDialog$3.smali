.class Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$3;
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

    .line 128
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->dismiss()V

    :cond_0
    return-void
.end method
