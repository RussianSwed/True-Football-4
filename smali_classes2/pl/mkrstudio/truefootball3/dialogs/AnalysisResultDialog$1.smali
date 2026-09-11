.class Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog$1;
.super Ljava/lang/Object;
.source "AnalysisResultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;

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

    .line 89
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lpl/mkrstudio/truefootball3/activities/TacticsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
