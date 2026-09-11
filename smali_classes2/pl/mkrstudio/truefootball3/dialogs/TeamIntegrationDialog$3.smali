.class Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$3;
.super Ljava/lang/Object;
.source "TeamIntegrationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

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
            "view"
        }
    .end annotation

    .line 75
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->partyRB:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->dinnerRB:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
