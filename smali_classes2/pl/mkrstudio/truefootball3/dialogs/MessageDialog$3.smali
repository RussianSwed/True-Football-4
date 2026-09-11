.class Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$3;
.super Ljava/lang/Object;
.source "MessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->showMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

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
            "v"
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->mainActivity:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->m:Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getButtonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->goToFragment(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/MessageDialog;->dismiss()V

    return-void
.end method
