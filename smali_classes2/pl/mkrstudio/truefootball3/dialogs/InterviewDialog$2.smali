.class Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;
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

.field final synthetic val$k:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iput p2, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->val$k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 99
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget v0, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->val$k:I

    int-to-byte v0, v0

    iput v0, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->selectedAnswer:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 101
    iget v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->val$k:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v0

    invoke-static {p1, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    goto :goto_1

    .line 102
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->answerTVs:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object v1, v1, v0

    const/16 v2, 0xff

    const/16 v3, 0x7f

    invoke-static {v2, v3, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->continueButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
